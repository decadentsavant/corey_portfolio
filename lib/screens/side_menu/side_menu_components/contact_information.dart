import 'package:corey_portfolio/global_layout/ui_constants.dart';
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
            text: 'Dallas - Fort Worth & New York City',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: defaultPadding / 2),
          child: ContactCard(
            title: 'phone',
            text: '214-699-9714',
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
