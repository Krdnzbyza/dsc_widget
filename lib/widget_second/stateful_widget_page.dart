import 'package:dsc_widget/constants/color_contants.dart';
import 'package:dsc_widget/constants/text_contants.dart';
import 'package:dsc_widget/widget_second/stateless_widget_page.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class FirstStatefulpage extends StatefulWidget {
  const FirstStatefulpage({Key? key}) : super(key: key);

  @override
  _FirstStatefulpageState createState() => _FirstStatefulpageState();
}

class _FirstStatefulpageState extends State<FirstStatefulpage> {
  bool _buttonSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppTextConstants.appBarTittle),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: context.dynamicHeight(0.4),
              width: context.dynamicWidth(0.6),
              child: FadeInImage.assetNetwork(
                  fadeOutCurve: Curves.bounceIn,
                  fadeInDuration: const Duration(seconds: 4),
                  placeholder: 'assets/images/teddy.jpeg',
                  image: 'https://picsum.photos/250?image=9'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.star,
                  size: 100,
                  color: _buttonSelected ? AppColor.starPurpleColor : AppColor.starColorGreen,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _buttonSelected = !_buttonSelected;
                    });
                  },
                  child: Container(
                    width: context.dynamicWidth(0.4),
                    decoration: BoxDecoration(color: AppColor.blackButonTheme, borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      _buttonSelected ? AppTextConstants.purpleText : AppTextConstants.greenText,
                      style: context.textTheme.headline5?.copyWith(color: context.colorScheme.onPrimary),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPAgeStateles()),
                  );
                },
                child: const Text(AppTextConstants.nextPage))
          ],
        ),
      ),
    );
  }
}
