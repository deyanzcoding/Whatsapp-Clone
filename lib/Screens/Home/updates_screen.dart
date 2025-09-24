import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Updates',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white54,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Open camera for status')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Edit status')),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          // Status header
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Text(
              'Status',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // Status boxes
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 8),
                child: Container(
                  height: 160,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(
                      width: 1.5,
                      color: Colors.grey.shade400,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/deyan.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Text(
                            'Add\nstatus',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 8),
                child: Container(
                  height: 160,
                  width: 90,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/deyan_hassnain.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            foregroundImage: AssetImage('assets/images/hassnain_uni_f.jpeg'),
                            backgroundColor: Color(0xff30D237FF),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70, right: 17),
                          child: Text(
                            'Hassnain',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 8),
                child: Container(
                  height: 160,
                  width: 90,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/deyan_shogaib.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: CircleAvatar(
                            radius: 20,
                            foregroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Text(
                            'Shogaib',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  'Channels',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: 4,
            itemBuilder: (context, index) {
              final channels = [
                {
                  'avatar': 'assets/images/bbc.png',
                  'title': 'BBC News Urdu',
                  'subtitle': 'محسن نقوی کا یہ بیان ایک ایسے وقت',
                  'date': 'Yesterday',
                },
                {
                  'avatar': 'assets/images/whatsapp.png',
                  'title': 'Whatsapp',
                  'subtitle': 'Appstrology: Virgo (23 August-22...',
                  'date': 'Yesterday',
                },
                {
                  'avatar': 'assets/images/flutter_craft.png',
                  'title': 'Flutter Craft',
                  'subtitle': 'Hey everyone, I\'m Asad Khan, manag...',
                  'date': '12/8/2025',
                },
                {
                  'avatar': 'assets/images/feelingsad.png',
                  'title': 'Feeling Sad',
                  'subtitle': 'ہمیشہ دیر کر دیتا ہوں میں',
                  'date': '12/8/2025',
                },
              ];

              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(channels[index]['avatar']!),
                    ),
                    title: Text(channels[index]['title']!),
                    subtitle: Text(channels[index]['subtitle']!),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        channels[index]['date']!,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Opened ${channels[index]['title']} channel')),
                      );
                    },
                  ),
                  if (index < 3) Divider(height: 1, thickness: 0.5, color: Colors.grey.shade300),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}