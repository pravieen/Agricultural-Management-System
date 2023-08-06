import 'package:flutter/material.dart';

class CropHealthAssessmentPage extends StatefulWidget {
  @override
  _CropHealthAssessmentPageState createState() =>
      _CropHealthAssessmentPageState();
}

class _CropHealthAssessmentPageState extends State<CropHealthAssessmentPage> {
  final TextEditingController _cropTypeController = TextEditingController();
  final TextEditingController _plantHeightController = TextEditingController();
  final TextEditingController _leafSizeController = TextEditingController();
  final TextEditingController _leafColorController = TextEditingController();
  final TextEditingController _pestTypeController = TextEditingController();
  final TextEditingController _diseaseTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Health Assessment'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Crop Parameters:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _cropTypeController,
              decoration: InputDecoration(
                labelText: 'Crop Type',
                hintText: 'Enter the type of crop',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _plantHeightController,
              decoration: InputDecoration(
                labelText: 'Plant Height',
                hintText: 'Enter the height of the plant (in cm)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _leafSizeController,
              decoration: InputDecoration(
                labelText: 'Leaf Size',
                hintText: 'Enter the size of the leaves (in cm)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _leafColorController,
              decoration: InputDecoration(
                labelText: 'Leaf Color',
                hintText: 'Enter the color of the leaves',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Enter symptoms Parameters (if applicable):',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            SizedBox(height: 16.0),
            TextField(
              controller: _diseaseTypeController,
              decoration: InputDecoration(
                labelText: 'Disease Type',
                hintText: 'Enter the symptoms of the plant',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Perform crop health assessment logic
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text('Assess Crop Disease and Precautions'),
            ),
          ],
        ),
      ),
    );
  }
}
