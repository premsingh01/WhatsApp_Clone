import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';

import '../info.dart';


class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info[0]['name'].toString(),),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),

          TextField(
            decoration: InputDecoration(
              fillColor: mobileChatBoxColor,
              filled: true,

              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.emoji_emotions_outlined),
                ),
              ),

              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt,),),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.attach_file),),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.money),),
                  ],
                ),
              ),
              hintText: 'Type a message',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  style: BorderStyle.none,
                  width: 0,
                )
              ),
              
              contentPadding: const EdgeInsets.all(10),
              
          ),
          ),
        ],
      ),
    );
  }
}
