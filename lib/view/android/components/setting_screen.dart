import 'package:flutter/material.dart';
import 'package:plarfrom_converter_app/view/android/components/text_fild_box.dart';
import 'package:provider/provider.dart';

import '../../../provider/list_provider.dart';
import '../../../provider/photo_provider.dart';
import '../../../provider/profile_provider.dart';
import '../../../provider/theme_provider.dart';

class SettingScreen extends StatelessWidget {
   SettingScreen({super.key});

  @override

  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddlistProvider>(context, listen: true);
    final providerfalse = Provider.of<AddlistProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              children: [
                Icon(Icons.person,size: 30,),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profile",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                    Text("Update Profile Date",style: TextStyle(

                    ),),
                  ],
                ),
                Spacer(),
                Switch(value: Provider.of<ProfileProvider>(context).show, onChanged: (value) {
                  Provider.of<ProfileProvider>(context,listen: false).showprofile(value);
                },)
              ],
            ),
          ),
          (Provider.of<ProfileProvider>(context).show)?Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: providertrue.image != null ? FileImage(providertrue.image!) : null,

                ),
                SizedBox(height: 10,),
                Container(
                  height: 55,
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextField(
                    controller: providertrue.txtname,
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
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextField(
                    controller: providertrue.txtmsg,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Message",
                        hintText: "Hello",
                        icon: Icon(
                          Icons.message,
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {

                    }, child: Text("Save")),
                    ElevatedButton(onPressed: () {

                    }, child: Text("Clear")),
                  ],
                ),
              ],
            ),

          ):Container(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              children: [
                Icon(Icons.light_mode,size: 30,),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Theme",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                    Text("Change Theme",style: TextStyle(

                    ),),
                  ],
                ),
                Spacer(),
                Switch(value: Provider.of<Themeprovider>(context,listen: true).dark, onChanged: (value) {
                  Provider.of<Themeprovider>(context,listen: false).theme(value);
                },)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
