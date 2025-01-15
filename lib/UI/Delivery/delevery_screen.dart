import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/UI/Delivery/delevery_screen_provider.dart';
import 'package:provider/provider.dart';

class DeleveryScreen extends StatefulWidget {
  const DeleveryScreen({super.key});

  @override
  State<DeleveryScreen> createState() => _DeleveryScreenState();
}

class _DeleveryScreenState extends State<DeleveryScreen> {
  String dropdownvalue = 'Peshawar';

  // List of items in our dropdown menu
  var items = ['Peshawar', 'Naguman', 'Charsadda', 'Mardan'];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DeleveryScreenProvider(),
      child: Consumer<DeleveryScreenProvider>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'DELEVERY TO',
                  style: TextStyle(color: Color(0xFFEF9920)),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton(
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                  Text(
                    'Filter',
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  ),
                ],
              ),
             ListView.builder(itemBuilder: (context ,index){
              return Container(
                
              );

             }),
            ],
          ),
        ),
      ),
    );
  }
}
