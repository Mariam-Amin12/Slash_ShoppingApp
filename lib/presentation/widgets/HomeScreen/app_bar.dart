import 'package:flutter/material.dart';
import 'package:shopping/data/constants/icons/icons.dart';
import 'package:shopping/data/constants/sizes/size.dart';
import 'package:shopping/data/constants/styles/style.dart';

class TAppBar extends StatefulWidget implements PreferredSizeWidget {
  const TAppBar({super.key});

  @override
  State<TAppBar> createState() => _TAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(40);
}

class _TAppBarState extends State<TAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Sizes().getCurrentWidth(context)*1/3,
              child: Text(
                "Slash.",
                style: Style().titleLarge,
              ),
            ),
          ],
        ),
        title: Container(
          // width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: Container()),
              IconButton(
                  onPressed: () {
                    //TODO
                  },
                  icon: ConstIcons().pin),
              Column(
                children: [
                  Text(
                    "Nasr City",
                    style: Style().bodySmall,
                  ),
                  Text(
                    "Cairo",
                    style: Style().titleSmall,
                  ),
                ],
              ),
               IconButton(onPressed: () {}, icon:  ConstIcons().down),
                Expanded(child: Container()),

            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            //TODO
          }, icon:  ConstIcons().notification),

        ],
      ),
    );
  }
}
