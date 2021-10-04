'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "42203238b04bef1559106a665824491c",
"/": "42203238b04bef1559106a665824491c",
"assets/NOTICES": "5e53a21fef4879a39be584b8bbae0090",
"assets/assets/animations/say_hi.png": "7e40b4c9042869b26f27d039da4d10a2",
"assets/assets/animations/wing_app.gif": "ed2a143714fc3463f5e4a4f41a429224",
"assets/assets/animations/wing_app_neon.gif": "03b04d20afdbd4d9858bc491c503a18b",
"assets/assets/animations/old_school.png": "f79bdac8bfa43864564a5ab0285682d7",
"assets/assets/animations/be_there.gif": "c705504b720e027d2c1c524d2e030006",
"assets/assets/animations/wing_app_neon2.gif": "e7ae7d437aeabdb3151f84959c64ca28",
"assets/assets/de_privacy_policy.pdf": "6099914fe6407f636ac736b87d0d5a00",
"assets/assets/android_badge.png": "63a6e0f7e4a06d2a42e71ca53c7face7",
"assets/assets/en_terms_and_conditions.pdf": "0af192214c7944a992ffa1b294694856",
"assets/assets/de_terms_and_conditions.pdf": "6099914fe6407f636ac736b87d0d5a00",
"assets/assets/mock-up.png": "38a5cf39ff7681274dee2fbe4a106353",
"assets/assets/en_privacy_policy.pdf": "b3c1c2618a621f5a9af2627263dbac17",
"assets/assets/logo.png": "01466cff23ef103223d3f685cb0589d0",
"assets/assets/logo_white.png": "509a35818126bd9117f286f954e4d519",
"assets/assets/apple_logo.png": "78c75de42a072f371edb994b16d3f043",
"assets/assets/home_screen_mockup.png": "4b0d124d3225f3ac0f7c5ce7efe40f7d",
"assets/assets/ios_badge.png": "82a91c88f2a1cb671dbe3ef7ead33bbe",
"assets/assets/app_icon.png": "dff946d46d871fe023e5c31da82eaa64",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "4b6a9b7c20913279a3ad3dd9c96e155b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dffd9504fcb1894620fa41c700172994",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00bb2b684be61e89d1bc7d75dee30b58",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/AssetManifest.json": "e71e8ec0e6c3298aef0c64ddbc224455",
"version.json": "6ed7c39591e7a3806321f1d15d3baaa2",
"manifest.json": "169e287e0e55ea9d9fe47021caebf844",
"favicon.ico": "55c1dc64e0960f0b91967cfe29de2e98",
"icons/favicon-16x16.png": "7cc5c69d7d28f20aee7e3cdc6fe0d3ad",
"icons/apple-touch-icon.png": "ddd4bbe7cd2aad95d243b1b66a31b0d1",
"icons/android-chrome-512x512.png": "092d1e1ec7f36fbc3a5976965506565f",
"icons/favicon-32x32.png": "53f75364836374cf522bebcc4932ad5f",
"icons/android-chrome-192x192.png": "a7b5782066f07dcb9eff795d705647f0",
"main.dart.js": "8e86eaf0264057c1ea1d1f58f861e17f"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
