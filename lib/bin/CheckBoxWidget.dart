import 'package:flutter/material.dart';
import 'package:sad_driver/generated/l10n.dart';
import 'package:sad_driver/src/models/OptionSelected.dart';

import '../../../../JelpApp/sad-driver-flutter/lib/src/elements/BlockButtonWidget.dart';

class CheckBoxWidget extends StatefulWidget {
  final dynamic iconImage;
  List<OptionSelected> valueOptions;

  CheckBoxWidget({this.valueOptions, this.iconImage});

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  void initState() {
    super.initState();
  }

  getCheckboxItems() {
    widget.valueOptions.forEach((e) {
      print('${e.title} ${e.isSelected}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: widget.valueOptions.map((e) {
              return new CheckboxListTile(
                title: new Text(e.title),
                value: e.isSelected,
                activeColor: Colors.pink,
                checkColor: Colors.white,
                onChanged: (bool value) {
                  setState(() {
                    e.isSelected = value;
                  });
                },
              );
            }).toList(),
          ),
        ),
        Center(
          child: BlockButtonWidget(
            text: Text(
              S.of(context).confirm,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            color: Color(0xFF5864FF),
            onPressed: () {
              getCheckboxItems();
              //Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }
}
