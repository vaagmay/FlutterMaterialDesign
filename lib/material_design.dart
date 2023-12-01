import 'package:flutter/material.dart';

class MaterialDesign extends StatefulWidget {
  const MaterialDesign({super.key});

  @override
  State<MaterialDesign> createState() => _MaterialDesignState();
}

class _MaterialDesignState extends State<MaterialDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Material Design",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: Colors.brown.shade700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[100],
      ),
      body: displayComponent(imagePath: "", text: ""),
    );
  }

  Widget displayComponent({required String imagePath, required String text}) {
    return Container(
      height: 300,
      width: 390,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          Container(
            height: 200,
            width: 280,
            decoration: BoxDecoration(
              color: Colors.orange[50],
              border: Border.all(color: Colors.brown),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Action Widgets",
            style: TextStyle(
              color: Colors.brown,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
