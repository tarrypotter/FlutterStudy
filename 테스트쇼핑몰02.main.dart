
import 'package:flutter/material.dart';
import 'product_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(
        primaryColor: Colors.white, // 기본 테마 색상 설정
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('쇼핑몰 앱'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: ProductListPage().products.length,
        itemBuilder: (context, index) {
          final product = ProductListPage().products[index];
          return Card(
            elevation: 4,
            child: ListTile(
              title: Text(product['name']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('가격: ${product['price']}'),
                  Text('설명: ${product['description']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
