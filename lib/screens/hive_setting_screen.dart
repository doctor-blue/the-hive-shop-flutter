import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';
import 'package:flutter_app/components/styles/styles.dart';
import 'package:flutter_app/components/widgets/setting_item.dart';

class HiveSetting extends StatefulWidget {
  @override
  _HiveSetting createState() => _HiveSetting();
}

class _HiveSetting extends State<HiveSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: textColorPrimary,
          ),
          onPressed: () {
            _backStack(context);
          },
        ),
        title: Text(
          'Settings',
          style: AppBarTextStyle,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 32),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(
                  'assets/images/the_hive_shop.png',
                  width: 128,
                  height: 128,
                ),
              ),
              SizedBox(height: 24),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Expanded(
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                child: SingleChildScrollView(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SettingItem(
                            'Email',
                            itemValue: 'abcd@gmail.com',
                          ),
                          SettingItem(
                            'Date Of Birth',
                            itemValue: '27-12-1990',
                          ),
                          SettingItem(
                            'Gender',
                            itemValue: 'Male',
                          ),
                          SettingItem(
                            'Address',
                            itemValue: 'Hanoi',
                          ),
                          SettingItem(
                            'Change Password',
                            itemValue: '',
                          ),
                          SettingItem(
                            'Logout',
                            itemValue: '',
                          ),
                        ],
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

  _backStack(BuildContext context) {
    Navigator.pop(context);
  }
}
