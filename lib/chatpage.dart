import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final name;
  final profileImageUrl;
  final lastSeen;
  const ChatPage(
      {super.key,
      required this.name,
      required this.profileImageUrl,
      required this.lastSeen});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> _messages = [];

  TextEditingController textEditingController = TextEditingController();

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(message);
      });
      textEditingController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 25,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.profileImageUrl),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Last seen: ${widget.lastSeen}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                  color: Colors.blue, AssetImage('assets/images/call.png'))),
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                  color: Colors.blue, AssetImage('assets/images/video-camera.png'))),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
  title: Container(
    
    padding: EdgeInsets.all(8.0), // Adjust padding as needed
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue,
    ),
    child: Text(
      _messages[index],
      style: TextStyle(color: Colors.white), // Adjust text color as needed
    ),
  ),
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
                    controller: textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(textEditingController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/*
class Market{
  String name;
  String image;
  int price;

  Market({required this.name,required this.image, required this.price});
}
List<Market>marketitems=[
Market(
  name:"sumsang s23 ultra",
  image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDIgORMTv7symfOLNF9ZdckHnAPz_foPXzXA&usqp=CAU',
  price:125000,
),
Market(
  name:"sumsang s23 ultra",
  image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDIgORMTv7symfOLNF9ZdckHnAPz_foPXzXA&usqp=CAU',
  price:125000,
),
];
*/