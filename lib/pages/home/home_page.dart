import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/pages/account/account.dart';
import 'package:my_app/pages/chat_page/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  	final List <Widget> _body = [
		const ChatPage(),
		Center(child: const Icon(Icons.contact_emergency)),
		const Account(),
	];
	
  @override
  Widget build(BuildContext context) {
    return Scaffold(
		body: _body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
		selectedItemColor: Colors.blue,
		onTap: (int newIndex){
			setState(() {
			  _currentIndex = newIndex;
			});
		},
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: 'Trò chuyện',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: 'Bạn bè',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: 'Cá nhân',
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}
