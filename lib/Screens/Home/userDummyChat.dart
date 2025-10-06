import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserDummyChat extends StatefulWidget {
  const UserDummyChat({super.key});

  @override
  State<UserDummyChat> createState() => _UserDummyChatState();
}

class _UserDummyChatState extends State<UserDummyChat> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [
    {'text': 'Alka hbaar ho na yaeae kna', 'time': '8:20 PM', 'isSent': false},
    {'text': 'Bilal bag aghasta da 🎒', 'time': '8:21 PM', 'isSent': false},
    {'text': 'Sam sha gani yadom di warta', 'time': '8:45 PM', 'isSent': true},
    {'text': 'Reshya waima @Hasnain Uni F @Shogaib Uni F', 'time': '8:47 PM', 'isSent': false},
    {'text': 'Bilal lala\nSam sha kane aghi ta di yadom\nGena da kee alke', 'time': '8:47 PM', 'isSent': true},
    {'text': 'Shoiba alak bandi party done kaee, zvii ee shwa', 'time': '8:48 PM', 'isSent': false},
    {'text': 'Shoiba alak bandi party done kaee\nZvii ee shwa', 'time': '8:49 PM', 'isSent': true},
    {'text': 'Aoo kana', 'time': '8:49 PM', 'isSent': true},
    {'text': 'Sbla platter friendz(PF) party 🎉', 'time': '8:49 PM', 'isSent': false},
  ];
  File? pickedimage;

  void _sendMessage() {
    if (_messageController.text.trim().isNotEmpty) {
      setState(() {
        _messages.add({
          'text': _messageController.text,
          'time': TimeOfDay.now().format(context),
          'isSent': true,
        });
        _messageController.clear();
      });
    }
  }

  void _startVoiceRecording() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Recording started...')),
    );
  }

  void _stopVoiceRecording() {
    setState(() {
      _messages.add({
        'text': 'Voice message',
        'time': TimeOfDay.now().format(context),
        'isSent': true,
      });
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Recording stopped')),
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
        if (pickedimage != null) {
          _messages.add({
            'image': pickedimage,
            'time': TimeOfDay.now().format(context),
            'isSent': true,
          });
        }
      });
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(ex.toString()), backgroundColor: Color(0xff25d377)),
      );
    }
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xff075e54),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 0),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/uni_friendz.jpg'),
              radius: 18,
            ),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                'Uni frnds 💕😍',
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.videocam, color: Colors.white), onPressed: () {}),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (value) {
              // Add your onSelected logic here if needed
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'option1', child: Text('Option 1')),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/user_chat_screen_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  if (message.containsKey('image') && message['image'] != null) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                        child: Image.file(
                          message['image'],
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }
                  return _buildMessage(
                    text: message['text'],
                    time: message['time'],
                    isSent: message['isSent'],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: 'Message',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      ),
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera_alt, color: Colors.green),
                    onPressed: () => _pickImage(ImageSource.camera),
                  ),
                  IconButton(
                    icon: const Icon(Icons.image, color: Colors.green),
                    onPressed: () => _pickImage(ImageSource.gallery),
                  ),
                  GestureDetector(
                    onLongPress: _startVoiceRecording,
                    onLongPressUp: () => _stopVoiceRecording(),
                    child: Icon(
                      Icons.mic,
                      color: Colors.green,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessage({
    required String text,
    required String time,
    required bool isSent,
  }) {
    return Align(
      alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isSent ? const Color(0xff25d366) : Colors.green[100],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isSent ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              time,
              style: TextStyle(
                fontSize: 12.0,
                color: isSent ? Colors.white70 : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}