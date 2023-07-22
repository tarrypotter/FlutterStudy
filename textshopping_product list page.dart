//상품목록페이지
import 'package:flutter/material.dart';
import 'product_detail_page.dart';

class ProductListPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'id': 1,
      'name': '상품1',
      'price': 10000,
      'description': '이 상품은 아주 좋은 상품입니다.',
    },
    // 다른 상품들도 추가
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상품 목록'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product['name']),
            subtitle: Text('${product['price']}원'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
