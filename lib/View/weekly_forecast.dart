import 'package:flutter/material.dart';

class WeeklyForecast extends StatefulWidget {
  final Map<String, dynamic> currentValue;
  final String city;
  
  final List<dynamic> pastWeek;
  final List<dynamic> next7days;
  WeeklyForecast({super.key , required this.city, required this.currentValue, required this.pastWeek, required this.next7days});

  @override
  State<WeeklyForecast> createState() => _WeeklyForecastState();
}

class _WeeklyForecastState extends State<WeeklyForecast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
             crossAxisAlignment : CrossAxisAlignment.start,
          children: [
         Center(
          child: 
          Column(
            children: [
                Text(
                     widget.city,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '${widget.currentValue['temp_c']}°C',
                      style: TextStyle(
                        fontSize: 50,
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${widget.currentValue['condition']['text']}',
                      style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Image.network('https:${widget.currentValue['condition']?['icon'] ?? ''}', width: 150, height: 150, fit: BoxFit.fill,)
            ],
          ),
         ),
         // Next 7 days forecast
         
          ],
        ),
      )),
    );
  }
}
