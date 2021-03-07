import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';

class SettingItem extends StatelessWidget {
  final itemName;
  final itemValue;

  SettingItem(this.itemName, {this.itemValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: [
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                itemName,
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    itemValue,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: textColorPrimary,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Container(
            width: double.infinity,
            height: 3,
            decoration: BoxDecoration(
              color: accentColor,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
