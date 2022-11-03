import 'package:corey_portfolio/constants/constants.dart';
import 'package:flutter/material.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: defaultPadding / 2),
          child: ContactCard(
            title: 'Locations',
          // ignore: lines_longer_than_80_chars
            text: 'Currently have residences in both Dallas & New York City. Open to relocation.',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: defaultPadding / 2),
          child: ContactCard(
            title: 'phone',
            text: '+1 214-699-9714',
          ),
        ),
        ContactCard(
          title: 'email',
          text: 'corey.stewart@mostlearned.com',
        ),
      ],
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    this.title,
    this.text,
  });

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 4,
        ),
        Text(
          text!,
          style: const TextStyle(
            letterSpacing: -.1,
          ),
        ),
      ],
    );
  }
}
