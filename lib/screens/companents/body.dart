import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "We Date Together",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInYearsHourAndMinute(),
        ],
      ),
    );
  }
}

class TimeInYearsHourAndMinute extends StatefulWidget {
  const TimeInYearsHourAndMinute({Key key}) : super(key: key);

  @override
  State<TimeInYearsHourAndMinute> createState() =>
      _TimeInYearsHourAndMinuteState();
}

class _TimeInYearsHourAndMinuteState extends State<TimeInYearsHourAndMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    String _reriod = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("${_timeOfDay.hour}", style: Theme.of(context).textTheme.headline1,)],
    );
  }
}
