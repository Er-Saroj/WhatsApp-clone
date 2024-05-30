import 'package:flutter/material.dart';

class Leading_text extends StatelessWidget {
  const Leading_text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1712174766230-cb7304feaafe?q=80&w=1928&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              ),
              radius: 21,
            ),
          ),
        ],
      ),
    );
  }
}
