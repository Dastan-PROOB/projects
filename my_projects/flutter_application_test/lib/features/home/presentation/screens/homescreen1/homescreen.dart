import 'package:flutter/material.dart';
import 'package:flutter_application_test/features/home/presentation/screens/homescreen1/widgets/avatar_balance_widget.dart';
import 'package:flutter_application_test/features/home/presentation/screens/homescreen1/widgets/cashback_item.dart';
import 'package:flutter_application_test/features/home/presentation/screens/homescreen1/widgets/cashback_widget.dart';
import 'package:flutter_application_test/features/home/presentation/screens/homescreen1/widgets/categories.dart';
import 'package:flutter_application_test/features/home/presentation/screens/homescreen1/widgets/category_item.dart';
import 'package:flutter_application_test/features/home/presentation/screens/homescreen1/widgets/menuwidget.dart';
import 'package:flutter_application_test/features/home/presentation/screens/homescreen1/widgets/slider_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 33, bottom: 10, left: 11, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MenuWidget(),
            AvatarBalanceWidget(),
            SizedBox(height: 15),
            SliderWidget(),
            CategoriesWidget(),
            CategoryItemWidget(),
            CashbackWidget(),
            CashbackItemWidget(),
          ],
        ),
      ),
    );
  }
}

