import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 40.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Banking Information',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'PIN',
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Card Name',
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'CVV',
                     suffixIcon: Icon(
                      Icons.info,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Personal Information',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                        ),
                       ),
                      TextButton(
                        onPressed: () {
                        print('Edit Button');
                        },
                      child: Text('Edit'),
                      ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Omar Mohammed Tawfik\n\nomartawfik333@gmail.com\n\nElshikh Zayed\n\n01143545477',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Method',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        ),
                       ),
                      TextButton(
                        onPressed: () {
                        print('Edit Button');
                        },
                      child: Text('Edit'),
                      ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Quick Shipping 15 L.E\n\nExpected Shipping Date: May 5th',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment Method',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        ),
                       ),
                      TextButton(
                        onPressed: () {
                        print('Edit Button');
                        },
                      child: Text('Edit'),
                      ),
                  ],
                ),
                Text(
                  'Visa Master Card',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),

                

                Text(
                      'Items Selected',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        ),
                       ),

                SizedBox(
                  height: 25.0,
                ),

                Row(
                  children: [
                    Image.network(
                      'https://i.pinimg.com/originals/8c/fc/08/8cfc086e5c81b7a9a5bdc153c5b745f2.png',
                      width: 150,  // Set the desired width
                      height: 150, // Set the desired height
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Spider Plant |',
                            ),
                            Text(
                              'Ua Bong',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '250.000 l.e',
                        ),
                        Text(
                          '2 Items',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}