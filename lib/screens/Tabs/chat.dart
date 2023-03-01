import 'package:flutter/material.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Chat',
              style: TextStyle(
                  color: Colors.orange,
                  fontFamily: "OpenSans-medium",
                  fontSize: 26),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.orange,
                size: 30,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu, color: Colors.orange, size: 30)),
            SizedBox(
              width: 10,
            )
          ],
          bottom: TabBar(tabs: [
            Tab(
              text: 'Chat',
            ),
            Tab(
              text: 'Calls',
            ),
          ]),
        ),
        body: TabBarView(children: [chatSection(), callSection()]),
      ),
    );
  }

  Widget chatSection() {
    return Container(
      height: 120,
      child: ListView(
        children: [
          chat(
              'https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Chenail',
              '😂😂😂',
              '1:50 PM'),
          chat(
              'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Rayford',
              'I am on the way',
              '12:50 AM'),
          chat(
              'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Josef',
              'THANK YOU! 😊',
              'yesterday'),
          chat(
              'https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Mili',
              'ok',
              '02/03/2023'),
        ],
      ),
    );
  }

  Widget callSection() {
    return Container(
      height: 120,
      child: ListView(
        children: [
          call(
              'https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Mili',
              received(),
              '12:30 pm'),
          call(
              'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Rayford',
              received(),
              '10:32 am'),
          call(
              'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Josef',
              missed(),
              '6:50 am'),
          call(
              'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Rayford',
              received(),
              'yesterday'),
          call(
              'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Rayford',
              received(),
              '08/02/2023'),
          call(
              'https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=1600',
              'Chenail',
              missed(),
              '11/01/2023'),
        ],
      ),
    );
  }

  Widget chat(profile, name, msg, time) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1,
                      color: Colors.orange.shade100.withOpacity(0.7)))),
          child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(profile)),
            title: Text(name),
            subtitle: Text(msg),
            trailing: Text(time),
          )),
    );
  }

  Widget call(profile, name, status, time) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1,
                      color: Colors.orange.shade100.withOpacity(0.7)))),
          child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(profile)),
            title: Text(name),
            subtitle: Row(children: [
              status,
              SizedBox(
                width: 5,
              ),
              Text(time)
            ]),
            trailing: IconButton(
              icon: Icon(
                Icons.phone,
                color: Colors.orange,
              ),
              onPressed: () {},
            ),
          )),
    );
  }

  Widget missed() {
    return Icon(
      Icons.call_missed,
      color: Colors.red,
      size: 16,
    );
  }

  Widget received() {
    return Icon(
      Icons.call_received,
      color: Colors.green,
      size: 16,
    );
  }
}
