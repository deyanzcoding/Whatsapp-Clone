import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Text(
            'Chats',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/hassnain_uni_f.jpeg'),
          ),
          title: Text('Hassnain Uni F'),
          subtitle: Text('You reacted ❤️ to "🎙️ 0:36"'),
          trailing: Text('10:12 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
          ),
          title: Text('Shogaib Uni F'),
          subtitle: Text('Shogaib reacted 😂 to "Sta pa sh..."'),
          trailing: Text('07:53 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/deyan.jpg'),
          ),
          title: Text(
            '(You)',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text('Explain container widg...'),
          trailing: Text('07:49 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/abdullah_uni_f.jpg'),
          ),
          title: Text('Abdullah Uni F'),
          subtitle: Row(
            children: [
              Icon(Icons.call_missed_outgoing, size: 16, color: Colors.red),
              SizedBox(width: 4),
              Text('Voice call'),
            ],
          ),
          trailing: Text('07:49 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/bilal_uni_f.jpg'),
          ),
          title: Text('Bilal Uni F'),
          subtitle: Text('Da ho Hassnain de sam 😂'),
          trailing: Text('07:22 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/hassnain_uni_f.jpeg'),
          ),
          title: Text('Hassnain Uni F'),
          subtitle: Text('You reacted ❤️ to "🎙️ 0:36"'),
          trailing: Text('10:12 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
          ),
          title: Text('Shogaib Uni F'),
          subtitle: Text('Shogaib reacted 😂 to "Sta pa sh..."'),
          trailing: Text('07:53 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/bilal_uni_f.jpg'),
          ),
          title: Text('Bilal Uni F'),
          subtitle: Text('Da ho Hassnain de sam 😂'),
          trailing: Text('07:22 AM'),
        ),
      ],
    );
  }
}