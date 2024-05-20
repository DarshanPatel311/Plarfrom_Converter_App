import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/Date_Provider.dart';

class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  size: 40,
                ),
              ),
            ),
            Container(
              height: 55,
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Name",
                    icon: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Container(
              height: 55,
              margin: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Number",
                    hintText: "7145859564",
                    icon: Icon(
                      Icons.call,
                      size: 30,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Container(
              height: 55,
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Message",
                    hintText: "Your Message",
                    icon: Icon(
                      Icons.message,
                      size: 30,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025)).then((value) =>   Provider.of<DateProvider>(context, listen: false).DatePicker(value));
                      },
                      icon: Icon(
                        Icons.date_range,
                        size: 30,
                      )),
                  Text(
                    "Select your Date",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "${Provider.of<DateProvider>(context).time}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showTimePicker(
                            context: context, initialTime: TimeOfDay.now()).then((value) =>Provider.of<TimeProvider>(context, listen: false).TimePicker(value) );
                      },
                      icon: Icon(
                        Icons.access_time_sharp,
                        size: 30,
                      )),
                  Text(
                    "Select your Time",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "${Provider.of<TimeProvider>(context,listen: true).Time}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
