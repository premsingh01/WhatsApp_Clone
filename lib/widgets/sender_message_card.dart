import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const SenderMessageCard({Key? key, required this.message, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width-45,
          ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15,
          ),

          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 5,
                    right: 30,
                    bottom: 20,
                  ),

                child: Text(message,
                style: const TextStyle(
                  fontSize: 16,
                ),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 2,
                  child: Row(
                    children: [
                      Text(
                        date,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white60,
                        ),
                      ),
                      const SizedBox(width: 5,),

                     const Icon(
                        Icons.done_all,
                        color: Colors.white60,
                        size: 20,
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
