import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
         appBar: AppBar(
           title: const Text(
               'Whatsapp',
             style: TextStyle(
               fontSize: 20,
               color: Colors.grey,
               fontWeight: FontWeight.bold,
             ),
           ),

           actions: [
             IconButton(onPressed: () {}, icon: Icon(Icons.search, color:Colors.grey),),
             IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color:Colors.grey),),
           ],

           bottom: const TabBar(
             indicatorColor: tabColor,
               indicatorWeight: 4,
               labelColor: tabColor,
               unselectedLabelColor: Colors.grey,
               labelStyle: TextStyle(
               fontWeight: FontWeight.bold,
               ),
               tabs:  [
                 Tab(text: 'Chats',),
                 Tab(text: 'Status',),
                 Tab(text: 'Calls' ,),
               ],
           ),

    ),

          body:  const ContactList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: tabColor,
            child: const Icon(
              Icons.comment,
              color: Colors.white,
            ),

          ),
    ),
    );


  }
}
