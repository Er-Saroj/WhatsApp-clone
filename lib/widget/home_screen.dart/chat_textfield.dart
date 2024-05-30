// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChatTextField extends StatefulWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final void Function(String message) onSendMessage;
  final void Function(String text) onChanged;

  const ChatTextField({
    Key? key,
    required this.focusNode,
    required this.controller,
    required this.onSendMessage,
    required this.onChanged,
  }) : super(key: key);

  @override
  _ChatTextFieldState createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      height: 55,
      width: 294,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: widget.controller,
              focusNode: widget.focusNode,
              keyboardType: TextInputType.multiline,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                hintText: 'Message',
                hintStyle: TextStyle(fontSize: 20, color: Colors.black54),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.tag_faces_outlined,
                  size: 30,
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.attach_file_rounded,
                  size: 27,
                ),
              ),
              SizedBox(width: 9),
              if (widget.controller.text.isEmpty)
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.black54,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.currency_rupee,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              SizedBox(width: 9),
              if (widget.controller.text.isEmpty)
                IconButton(
                  onPressed: () async {
                    final ImagePicker _picker = ImagePicker();
                    final XFile? image =
                        await _picker.pickImage(source: ImageSource.camera);
                    if (image != null) {
                      widget.onSendMessage(''); // Send an empty message
                      widget.onSendMessage(image.path); // Send the image path
                    }
                  },
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.black54,
                    size: 27,
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
