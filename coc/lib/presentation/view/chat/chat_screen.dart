import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends GetView<ChatController> {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 28.0,
            color: primary,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Chat",
          style: appStyle,
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: controller.firestore
                    .collection("chatroom")
                    .doc(controller.chatRoomId)
                    .collection("chats")
                    .orderBy("time", descending: false)
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.data != null) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            color: (snapshot.data!.docs[index]["sendBy"] == controller.id1) ? gradient2 : Color(0xFFFFB9DB),
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data!.docs[index]["message"],
                                  style: text3,
                                ),
                                Text("${(snapshot.data!.docs[index]["time"] as Timestamp).toDate().hour} : ${(snapshot.data!.docs[index]["time"] as Timestamp).toDate().minute}"  ,
                                  style: text4,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              width: getWidth(context),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Theme(
                        data: ThemeData().copyWith(
                          inputDecorationTheme: const InputDecorationTheme(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                        ),
                        child: TextField(
                          controller: controller.messageC,
                          decoration: const InputDecoration(
                            hintText: "Enter Message",
                            border: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          minLines: 1,
                          maxLines: 10,
                        ),
                      ),
                    ),
                  ),
                  horizontalSpacing(5.0),
                  Container(
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          controller.addMessage();
                        },
                        icon: Icon(
                          Icons.send,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpacing(10.0),
          ],
        ),
      ),
    );
  }
}
