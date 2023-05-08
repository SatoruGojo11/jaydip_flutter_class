import 'package:flutter/material.dart';

class Datetime extends StatefulWidget {
  const Datetime({Key? key}) : super(key: key);

  @override
  State<Datetime> createState() => _DatetimeState();
}

class _DatetimeState extends State<Datetime> {
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Date & Time Picker',
          style: TextStyle(
            fontSize: 30,
            color: Colors.yellowAccent,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text('Time :- ${time.hourOfPeriod} : ${time.minute}'),
              onTap: openTimePicker,
            ),
            ListTile(
              title: Text('Date :- ${date.day} / ${date.month} / ${date.year}'),
              onTap: openDatePicker,
            ),
          ],
        ),
      ),
    );
  }

  openTimePicker() async {
    TimeOfDay? t = await showTimePicker(
        context: context,
        initialTime: time,
    );
    if (t != null) {
      setState(() {
        time = t;
      });
    }
  }

  openDatePicker() async {
    DateTime? d = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );

    if (d != null) {
      setState(() {
        date = d;
      });
    }
  }
}
