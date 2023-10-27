import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Personal Information',
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  'Share Mobile Number',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Text(
                  'Share Email Id',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: Text(
                  'Share Address',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              PopupMenuItem(
                value: 4,
                child: Text(
                  'Share All',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
            onSelected: (value){
              if(value==1){
                shareMobileNumber();
              }
              if(value==2){
                shareEmailid();
              }
              if(value==3){
                shareAddress();
              }
              if(value==4){
                shareAll();
              }

            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sheik Riyas',
                style: TextStyle(
                    color: Colors.teal,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    title: Text(
                      '+91 9360606179',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'sheikriyas92@gmail.com',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.location_city_sharp,
                      color: Colors.blue,
                    ),
                    title: Text(
                      '3/119,Mettu Street,\nRailady,Ammapet,\nThanjavur District - 614402',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  shareMobileNumber() {
    Share.share('+91 9360606179');
    print('+91 9360606179');
  }
  shareEmailid() {
    Share.share('sheikriyas92@gmail.com');
    print('sheikriyas92@gmail.com');
  }

  shareAddress() {
    Share.share('3/119,Mettu Street,Railady,Ammapet,Thanjavur District - 614402');
    print('3/119,Mettu Street,Railady,Ammapet,Thanjavur District - 614402');
  }

  shareAll() {

    Share.share('+91 9360606179 \n sheikriyas92@gmail.com \n 3/119,Mettu Street,Railady,Ammapet,Thanjavur District - 614402');
    print('+91 9360606179 \n sheikriyas92@gmail.com \n 3/119,Mettu Street,Railady,Ammapet,Thanjavur District - 614402');
  }
}


