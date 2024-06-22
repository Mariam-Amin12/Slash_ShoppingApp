import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/data/constants/colors/home_colors.dart';
import 'package:shopping/presentation/business_logic/cubit/nav_bar_cubit.dart';
import 'package:shopping/presentation/view_models/app_view_model.dart';

class NavBar extends StatefulWidget {
  final AppViewModel viewModel;

  const NavBar(this.viewModel);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabIndexCubit, int>(
      builder: (context, selectedIndex) {
        return TabBar(
          onTap: (index) {
            context.read<TabIndexCubit>().setTabIndex(index);
            widget.viewModel.getNavItems(index, context);
            widget.viewModel.selectedIndex = index;
          },
          tabs: widget.viewModel.bottomNavBarItem!,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: HomeColors().darkGray,
              width: 6,
            ),
            insets: EdgeInsets.only(bottom: 70),
          ),
          labelColor: Colors.black, // Set highlight color for selected item
          unselectedLabelColor: Colors.grey,
          // currentIndex: selectedIndex,
        );
      },
    );
  }
}
