import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/mobile_chat_screen.dart';


class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
              itemCount: info.length,
              shrinkWrap: true,
              //physics:  NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MobileChatScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ListTile(
                          title: Text(info[index]['name'].toString(),style: const TextStyle(fontSize: 15.0,),),

                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                             child: Text(
                               info[index]['message'].toString(),
                               style: const TextStyle(
                                 fontSize: 15.0,
                               ),
                             ),
                          ),

                          leading: ClipOval(child: Image.network(
                              info[index]['profilePic'].toString(),
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                            errorBuilder: (context, Object, StackTrace) => const Icon(Icons.account_circle),
                          )),

                          trailing: Text(info[index]['time'].toString(),
                            style: const TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey,
                            ),

                          ),


                        ),
                      ),
                    ),

                    const Divider(color: dividerColor,),
                  ],
                );

              },

          ),



    );
  }
}
