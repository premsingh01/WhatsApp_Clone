import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      width: MediaQuery.of(context).size.width*0.25,
      padding: EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          )
        ),
        color: appBarColor,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/whatsappImage.jpg'),
            radius: 40.0,
          ),

          Row(
            children: [
              IconButton(
                onPressed: () {} ,
                icon: const Icon(
                    Icons.comment,
                    color: Colors.grey,
                ),
              ),

              IconButton(
                onPressed: () {} ,
                icon: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                ),
              ),
            ],
          ),


        ],
      ),
      );

  }
}
