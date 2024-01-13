import "package:flutter/material.dart";
import "package:weatherapp/export.dart";

class WeatherSingleTile extends StatelessWidget {
  SingleDayData singleDayData;

  WeatherSingleTile({super.key, required this.singleDayData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            getFormatDate(date: singleDayData.dt.toString()),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          Icon(
            Icons.cloud,
            size: 80.0,
            color: Colors.cyan.withOpacity(0.6),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Temperature: ${singleDayData.main?.temp?.toString()} °C',
            style: const TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Condition: ',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '${singleDayData.weather?[0].description?.toString()}',
                style:
                    const TextStyle(fontSize: 16.0, color: Colors.blueAccent),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String getFormatDate({String date = ''}) {
    // Convert the string to an integer
    int randomNumber = int.parse(date);

    // Create a DateTime object from the timestamp
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(randomNumber * 1000);

    return "Date: ${dateTime.day}-${dateTime.month}-${dateTime.year} Time: ${dateTime.hour}:${dateTime.minute} ${dateTime.timeZoneName}";
  }
}
