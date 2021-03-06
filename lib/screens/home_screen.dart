import 'package:analog_clock/screens/companents/body.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/Settings.svg',
          color: Theme.of(context).iconTheme.color,
        ),
        // icon: Image.asset('assets/icons/setting.png'),
        onPressed: () {},
      ),
      actions: [buildAppButton(context)],
    );
  }

  Padding buildAppButton(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10.0)),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: getProportionateScreenWidth(32.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
