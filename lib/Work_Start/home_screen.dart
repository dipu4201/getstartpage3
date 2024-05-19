import 'package:flutter/material.dart';
import '../model/Product.dart';

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
          const SizedBox(height: 20),
          Expanded(
            child: _buildAllProduct(),
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

  Widget _buildAllProduct() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100 / 140),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: ProductList.length,
      itemBuilder: (context, index) {
        final product = ProductList[index];
        return _buildProductItem(product);
      },
    );
  }

  Widget _buildProductItem(Product product) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.network(product.image, fit: BoxFit.cover),
          ),
          const SizedBox(height: 8),
          Text(product.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text('\$${product.price}', style: const TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),
    );
  }
}
class Product {
  final String name;
  final String image;
  final double price;

  Product({required this.name, required this.image, required this.price});
}

// Example product list
List<Product> ProductList = [
  Product(name: 'Jacket', image: 'https://fabrilife.com/products/61d950d3516af-square.jpg?v=20', price: 99.99),
  Product(name: 'Sneakers', image: 'https://www.merkis.com.bd/wp-content/uploads/2023/04/1390-03.jpg', price: 79.99),
  Product(name: 'T Shirt', image: 'https://shop.adarbepari.com/wp-content/uploads/2021/04/bangladesh-flag-cotton-tshirt.jpg', price: 59.70),
  Product(name: 'Pant', image: 'https://masculine.com.bd/cdn/shop/files/TwileCargo-2.1.jpg?v=1708236657', price: 79.2),
  Product(name: 'Sunglass', image: 'https://sunglassmasterbd.com/wp-content/uploads/2023/08/b02092063b95692a583ac7d5972d5502-vvbb.jpg', price: 39.4),
  Product(name: 'Hip Hop Cap', image: 'https://m.media-amazon.com/images/I/71lHVFYEjhL._SX679_.jpg', price: 6.03),
  Product(name: 'Watch', image: 'https://www.realmenrealstyle.com/wp-content/uploads/2023/08/Watch-Details.jpg', price: 8.0),
  Product(name: 'Shirt', image: 'https://assets.ajio.com/medias/sys_master/root/20230724/5Tw3/64be5297eebac147fc83eda5/-473Wx593H-466379680-grey-MODEL.jpg', price: 5.99),
  // Add more products as needed
];
