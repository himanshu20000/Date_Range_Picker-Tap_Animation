import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateRange extends StatefulWidget {
  const DateRange({super.key});

  @override
  State<DateRange> createState() => _DateRangeState();
}

class _DateRangeState extends State<DateRange> {
  DateTimeRange dateRange =
      DateTimeRange(start: DateTime(2023, 2, 5), end: DateTime(2023, 2, 24));
  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Date Range Picker",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Start Date',
                  style: TextStyle(fontSize: 28),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'End Date',
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: ElevatedButton(
                  child: Text(DateFormat('yyyy/MM/dd').format(start)),
                  onPressed: () {
                    pickDateRange();
                  },
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: ElevatedButton(
                  child: Text(DateFormat('yyyy/MM/dd').format(end)),
                  onPressed: () {
                    pickDateRange();
                  },
                )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        initialDateRange: dateRange,
        firstDate: DateTime(1900),
        lastDate: DateTime(2200));
    if (newDateRange == null) return;
    setState(() => dateRange = newDateRange);
  }
}
