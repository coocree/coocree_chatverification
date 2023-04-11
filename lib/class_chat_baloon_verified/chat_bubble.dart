import './verified.dart';
import './triangle.dart';
import 'package:flutter/material.dart';

class ChatBubbleWithTriangle extends StatelessWidget {
  final String message;
  final bool isMe;

  const ChatBubbleWithTriangle({Key? key, required this.message, this.isMe = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment:
          isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left:30, right: 30),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  color: isMe ? Color(0xFFF9E4CB) : Color(0xFFF9E4CB),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: isMe ? Radius.circular(12) : Radius.circular(0),
                    bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),
                  ),
                ),
                child: Text(
                  message,
                  style: TextStyle(
                    color: isMe ? Colors.black : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        //Icone Verificado
        isMe ?
        Positioned(
          right: 2,
          bottom: 0,
          child: SizedBox(
            width: 20,
            height: 15,
            child: verified(),
          ),
        ) :
        Positioned(
          left: 2,
          bottom: 0,
          child: SizedBox(
            width: 20,
            height: 15,
            child: verified(),
          ),
        ),
        //Calda do Balão
        isMe ?
        Positioned(
          right: 10,
          bottom: 0,
          child: SizedBox(
            width: 20,
            height: 15,
            child: CustomPaint(
              painter: TrianglePainterRight(Color(0xFFF9E4CB)),
            ),
          ),
        ) :
        Positioned(
          left: 10,
          bottom: 0,
          child: SizedBox(
            width: 20,
            height: 15,
            child: CustomPaint(
              painter: TrianglePainterLeft(Color(0xFFF9E4CB)),
            ),
          ),
        ),
      ],
    );
  }
}




