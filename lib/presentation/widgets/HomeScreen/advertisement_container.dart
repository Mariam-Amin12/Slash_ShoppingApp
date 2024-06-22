
import 'package:flutter/material.dart';
import 'package:shopping/data/constants/colors/home_colors.dart';
import 'package:shopping/presentation/view_models/home_view_model.dart';
import 'package:shopping/presentation/widgets/HomeScreen/advertisement_item.dart';

import '../../../data/constants/sizes/size.dart';

class AdvertisementContainer extends StatefulWidget {
  const AdvertisementContainer({super.key,required this.homeViewModel});
  final HomeViewModel homeViewModel;

  @override
  State<AdvertisementContainer> createState() => _AdvertisementContainerState();
}

class _AdvertisementContainerState extends State<AdvertisementContainer> {
  var _controller = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 16,left:16 ),
        child: Column(
          children: [
             SizedBox(
            height: Sizes().getCurrentHeight(context)*.25,
            width: Sizes().getCurrentWidth(context),
            child: PageView.builder(
              itemCount: widget.homeViewModel.advertisements.length,
              onPageChanged: (index) {
                setState(() {
                  _controller = index;
                });
              },


              itemBuilder: (context, index) {
                final image = widget.homeViewModel.advertisements[index];
                return Advertisement(image: image);
              },
            ),
          ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i =widget.homeViewModel.advertisements.length - 1;
                    i >= 0;
                    i--)
                  Container(
                    margin: const EdgeInsets.only(left: 3),
                    width: _controller == i ? 7 : 14,
                    height: 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: HomeColors().darkGray),
                    child: null,
                  ),
              ],
            )
          ],
        ));
  }
}
