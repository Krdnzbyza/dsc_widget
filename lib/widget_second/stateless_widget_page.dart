import 'package:dsc_widget/constants/color_contants.dart';
import 'package:dsc_widget/constants/text_contants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SecondPAgeStateles extends StatelessWidget {
  const SecondPAgeStateles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.notification_add)],
        ),
        body: Padding(
          padding: context.paddingMedium,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: context.dynamicHeight(0.1),
                child: Placeholder(),
              ),
              const Divider(
                color: AppColor.dividerTheme,
                thickness: 12.0,
              ),
              SizedBox(
                height: context.dynamicHeight(0.2),
                child: const FlutterLogo(
                  duration: Duration(seconds: 5),
                  curve: Curves.bounceIn,
                ),
              ),
              TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Padding(
                        padding: context.paddingMedium,
                        child: Column(
                          children: [
                            const Text(AppTextConstants.programmingLanguage1),
                            const Divider(),
                            const Text(AppTextConstants.programmingLanguage2)
                          ],
                        ),
                      ),
                    );
                  },
                  child: const Text(AppTextConstants.listShowModal))
            ],
          ),
        ),
      ),
    );
  }
}
