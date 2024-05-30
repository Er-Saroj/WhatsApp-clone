// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:first_app/widget/home_screen.dart/Popup_menu.dart';
import 'package:first_app/widget/home_screen.dart/chat_textfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeChatBox extends StatefulWidget {
  final dynamic chat;

  const HomeChatBox({Key? key, required this.chat}) : super(key: key);

  @override
  _HomeChatBoxState createState() => _HomeChatBoxState();
}

class _HomeChatBoxState extends State<HomeChatBox> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> messages = [];
  final FocusNode _focusNode = FocusNode();
  bool _isSending = false;

  void _toggleSendButton(bool isFocused, String text) {
    setState(() {
      _isSending = isFocused && text.isNotEmpty;
    });
  }

  void _addMessage(String message, [String? imagePath]) {
    setState(() {
      messages.add({'text': message, 'imagePath': imagePath});
      _controller.clear(); // Clear the text field after sending message
    });
  }

  Future<void> _pickImage() async {
    final imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      _addMessage('', image.path);
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.green[900],
        title: Row(
          children: [
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1712174766230-cb7304feaafe?q=80&w=1928&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
                radius: 21,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "${widget.chat.firstName} ${widget.chat.lastName}",
                // widget.chat."${contact.firstName} ${contact.lastName}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.video_call_sharp,
              color: Colors.white,
            ),
            onPressed: () async {
              // Handle video call
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.call,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle voice call
            },
          ),
          popup_menu(),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.pink,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (message['text'] != null)
                              Text(
                                message['text'],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            if (message['imagePath'] != null)
                              Image.file(
                                File(message['imagePath']),
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 330,
                  height: 63,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChatTextField(
                      focusNode: _focusNode,
                      controller: _controller,
                      onChanged: (text) {
                        _toggleSendButton(_focusNode.hasFocus, text);
                      },
                      onSendMessage: (String message) {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, right: 8),
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(child: child, scale: animation);
                    },
                    child: _isSending
                        ? CircleAvatar(
                            key: ValueKey('send_button'),
                            backgroundColor: Colors.green[800],
                            radius: 25,
                            child: IconButton(
                              onPressed: () {
                                _addMessage(_controller.text);
                              },
                              icon: Icon(
                                Icons.send,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          )
                        : CircleAvatar(
                            key: ValueKey('camera_button'),
                            backgroundColor: Colors.green[800],
                            radius: 25,
                            child: IconButton(
                              onPressed: _pickImage,
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
