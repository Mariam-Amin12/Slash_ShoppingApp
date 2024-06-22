import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/presentation/business_logic/cubit/nav_bar_cubit.dart';

import 'package:shopping/presentation/view_models/app_view_model.dart';
import 'package:shopping/presentation/views/favorite_page.dart';
import 'package:shopping/presentation/views/home_Page.dart';
import 'package:shopping/presentation/views/mycart_page.dart';
import 'package:shopping/presentation/views/profile_page.dart';
import 'package:shopping/presentation/widgets/HomeScreen/nav_bar.dart';
import 'presentation/widgets/HomeScreen/app_bar.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _HomeState();
}

class _HomeState extends State<App> {
  final AppViewModel appViewModel = AppViewModel();

  @override
  void initState() {
    super.initState();
    appViewModel.getNavItems(0, context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabIndexCubit(),
      child: DefaultTabController(
        length: appViewModel.bottomNavBarItem!.length,
        child: Scaffold(
          bottomNavigationBar: NavBar(appViewModel),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    child: Column(
                      children: [
                        const TAppBar(),
                        const SizedBox(
                          height: 16,
                        ),
                        BlocBuilder<TabIndexCubit, int>(
                          builder: (context, selectedIndex) {
                            return IndexedStack(
                              index: selectedIndex,
                              children:const [
                                 HomePage(),
                                 FavoritePage(),
                                 MyCartPage(),
                                ProfilePage(),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
