import 'package:flutter/material.dart';
import 'package:my_app/models/Chat.dart';
import 'package:my_app/pages/home/components/search_bar.dart';
import 'package:my_app/widgets/ConversationList.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
	List<ChatUsers> chatUsers = [
		ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png", time: "31 Mar"),
		ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png", time: "Yesterday"),
		ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png", time: "28 Mar"),
		ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png", time: "Now"),
		ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png", time: "23 Mar"),
		ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png", time: "17 Mar"),
		ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png", time: "24 Feb"),
		ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
		children: <Widget>[
			const SearchBar() ,
			Expanded(child: ListView.builder(
				itemCount: chatUsers.length,
				shrinkWrap: true,
				padding: const EdgeInsets.only(top: 16),
				// physics: const NeverScrollableScrollPhysics(),
				itemBuilder: (context, index){
					return ConversationList(
					name: chatUsers[index].name,
					messageText: chatUsers[index].messageText,
					imageUrl: chatUsers[index].imageURL,
					time: chatUsers[index].time,
					isMessageRead: (index == 0 || index == 3)?true:false,
					);
				},
		))
			,]
	);
  }
}