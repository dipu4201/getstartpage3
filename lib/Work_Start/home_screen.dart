import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            'Our Products',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildProductCategory(index: 0, name: 'All Products'),
              _buildProductCategory(index: 1, name: 'Jacket'),
              _buildProductCategory(index: 2, name: 'Sneakers'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductCategory({required int index, required String name}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = index;
        });
      },
      child: Container(
        width: 100,
        height: 40,
        margin: const EdgeInsets.only(top: 10, right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected == index ? Colors.red.shade400 : Colors.blueGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
