import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
            // First status box (Add status)
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
            // Second status box (Hassnain)
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
            // Third status box (Shogaib)
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
        SizedBox(height: 10),
        // Channels header
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
        // Channels list
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/bbc.png'),
          ),
          title: Text('BBC News Urdu'),
          subtitle: Text('محسن نقوی کا یہ بیان ایک ایسے وقت'),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text('Yesterday'),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/whatsapp.png'),
          ),
          title: Text('Whatsapp'),
          subtitle: Text('Appstrology: Virgo (23 August-22...'),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text('Yesterday'),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/flutter_craft.png'),
          ),
          title: Text('Flutter Craft'),
          subtitle: Text('Hey everyone, I\'m Asad Khan, manag...'),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text('12/8/2025'),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/feelingsad.png'),
          ),
          title: Text('Feeling Sad'),
          subtitle: Text('ہمیشہ دیر کر دیتا ہوں میں'),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text('12/8/2025'),
          ),
        ),
      ],
    );
  }
}