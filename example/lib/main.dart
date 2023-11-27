import 'package:custom_calendar_viewer/custom_calendar_viewer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calendar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String local = 'en';
  List<Date> dates = [
    Date(
      date: DateTime(2023, 11, 8),
      color: Colors.red,
    ),
    Date(
      date: DateTime(2023, 11, 10),
      color: Colors.amber,
    ),
    Date(
      date: DateTime(2023, 11, 7),
      color: Colors.amber,
    ),
    Date(
      date: DateTime(2023, 11, 1),
      color: Colors.red,
    ),
    Date(
      date: DateTime(2023, 11, 4),
      color: Colors.white,
      textColor: Colors.red,
    ),
    Date(
      date: DateTime(2023, 11, 5),
      color: Colors.white,
      textColor: Colors.red,
      icon: const Icon(
        Icons.add,
        size: 15,
      ),
    ),
    Date(
      date: DateTime(2023, 11, 18),
      color: Colors.blue,
      textColor: Colors.amber,
      icon: const Icon(
        Icons.add,
        size: 15,
        color: Colors.red,
      ),
    ),
    Date(
      date: DateTime(2023, 11, 22),
      icon: const Icon(
        Icons.add,
        size: 15,
      ),
    ),
  ];
  List<RangeDate> ranges = [
    RangeDate(
      start: DateTime(2023, 11, 12),
      end: DateTime(2023, 11, 15),
      color: Colors.red,
      icon: const Icon(
        Icons.add,
        size: 15,
      ),
    ),
    RangeDate(
      start: DateTime(2023, 11, 24),
      end: DateTime(2023, 11, 27),
      color: Colors.amber,
      icon: const Icon(
        Icons.add,
        size: 15,
        color: Colors.red,
      ),
    ),
    RangeDate(
      start: DateTime(2023, 11, 30),
      end: DateTime(2023, 11, 29),
    ),
  ];
  List<String> toolTipMsg = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: local == 'en' ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: CustomCalendarViewer(
            local: local,
            dates: dates,
            ranges: ranges,
            toolTipMessage: toolTipMsg,
            showTooltip: true,
            calendarType: CustomCalendarType.multiDatesAndRanges,
            calendarStyle: CustomCalendarStyle.normal,
            //closeDateBefore: DateTime.now(),
            //closedDatesColor: Colors.grey.withOpacity(0.7),
            //showHeader: false,
            showBorderAfterDayHeader: true,
            //headerAlignment: MainAxisAlignment.center,
            onCalendarUpdate: (date) {
              // Handel your code here.
              print('onCalendarUpdate');
              print(date);
            },
            onDayTapped: (date) {
              // Handel your code here.
              print('onDayTapped');
              print(date);
            },
            onDatesUpdated: (newDates) {
              print('onDatesUpdated');
              print(newDates.length);
            },
            onRangesUpdated: (newRanges) {
              print('onRangesUpdated');
              print(newRanges.length);
            },
            showCurrentDayBorder: false,
          ),
        ),
      ),
    );
  }
}
