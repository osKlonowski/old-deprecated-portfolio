import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';

const Map<String, String> faqQuestionsStock = <String, String>{
  'Why Necter?':
      'Have you ever thought to yourself, damm I should have just gone over and said \“hi\”. Well... we know we have all been there. Necter makes that as easy as possible. We combine the advantages of online dating with the good old \"getting to know each other in real life\".\nAnd just between us, isn\'t it a thousand times more romantic when you get to know your partner in real life?',
  'How does Necter work?':
      'No more algorithms, no more endless swiping, no more objectification - just the people around you and an easy way to connect and say hi. Necter is designed to be as non-invasive as possible. We see it more as a tool rather than a service. We help you break the ice and make meeting people in real life as seamless as possible. When someone pops up in your radius (adjustable from 50-1000m), you have 20 minutes to send a message.',
  'When can I download Necter?':
      'Necter launches on the IOS and Android in June 2021. However, early sign ups begin on May 10th. As a special treat, early sign ups will receive 3 months of free Necter GO, unlocking the Necter’s full potential.',
  'What is an "Early Sign Up"? ':
      'Early sign ups are kind of like a waiting list. This way you will get notified when the app launches and as a special thank you for joining early, we give you 3 months of your premium subscription for free.',
  'What are the advantages of Necter?':
      'With necter you regain control of your life. No annoying algorithms, no personalized advertising or stereotypes that you have to comply with. Necter is freedom. Freedom to do what you feel like doing.\nAre you looking for your soul mate? Are you new in town and looking for people who are completely on your wavelength?\nYou are bored? Find new walking buddies and stud partners. (Attention: Keep the minimum distance and the applicable rules. We want to get the virus under control as quickly as possible so that we no longer live like pensioners and can finally go to the bars and clubs of our beautiful port city again)\nActually, you want to get to know someone, but never dare to walk over? With necter you can see who is open to spontaneous conversations in your environment. So just check out necter, see who is there and go over.',
};

List<Widget> generateItems() {
  return List<Widget>.generate(faqQuestionsStock.length, (int index) {
    return FAQQuestionViewBox(
      question: faqQuestionsStock.keys.elementAt(index),
      answer: faqQuestionsStock.values.elementAt(index),
    );
  });
}

class FAQPageDesktop extends StatefulWidget {
  @override
  _FAQPageDesktopState createState() => _FAQPageDesktopState();
}

class _FAQPageDesktopState extends State<FAQPageDesktop> {
  final List<Widget> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: <Widget>[
          NavigationBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ..._data,
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FAQQuestionViewBox extends StatelessWidget {
  const FAQQuestionViewBox({this.question, this.answer});

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16),
        child: RichText(
          text: TextSpan(
            text: '$question\n',
            style: GoogleFonts.poppins(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: answer,
                style: GoogleFonts.poppins(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
