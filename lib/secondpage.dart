import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back), // Arrow to the left
                SizedBox(width: 400), // Space between the arrow and the image
                Image.network(
            
                  'https://static.athome.com/images/w_800,h_800,c_pad,f_auto,fl_lossy,q_auto/v1629485957/p/124125925/natural-grass-bundle-with-silver-planter-46.jpg',
                  width: 300,  // Set the desired width
                  height: 200, // Set the desired height
                ),              
                SizedBox(width: 400), // Space between the image and the arrow
                Icon(Icons.arrow_forward), // Arrow to the right
              ],
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                    print('Add Button');
                    },
                    child: Text('Add'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Change the text color
                      backgroundColor: Colors.green, // Change the button background color (optional)
                    ),
                  ),
                  
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                    print('Remove Button');
                    },
                    child: Text('Remove'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Change the text color
                      backgroundColor: Colors.green, // Change the button background color (optional)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Basic Knowledge',
                  style: TextStyle(
                    fontSize: 20.0,  // Set font size to 20
                    fontWeight: FontWeight.bold,  // Make the font bold
                  ),
                ),
                SizedBox(width: 800),
                Icon(Icons.menu),            
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Basic Knowledge',
                  style: TextStyle(
                    fontSize: 20.0,  // Set font size to 20
                    fontWeight: FontWeight.w600,  // Make the font bold
                  ),
                ),
                SizedBox(width: 800),
                Icon(Icons.arrow_downward),            
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Basic Knowledge',
                  style: TextStyle(
                    fontSize: 20.0,  // Set font size to 20
                    fontWeight: FontWeight.w600,  // Make the font bold
                  ),
                ),
                SizedBox(width: 800),
                Icon(Icons.arrow_downward),            
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Basic Knowledge',
                  style: TextStyle(
                    fontSize: 20.0,  // Set font size to 20
                    fontWeight: FontWeight.w600,  // Make the font bold
                  ),
                ),
                SizedBox(width: 800),
                Icon(Icons.arrow_upward),            
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Light: Orchid grass belongs to the group of plants that prefer bright or partially shaded light. Natural light can be used, but the plant wil burn if directly planted under sunlight.'
            ),
          ),
        ],
      ),
    );
  }
}