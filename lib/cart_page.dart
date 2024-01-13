import 'package:flutter/material.dart';
import 'package:shopping_app/global_variable.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override //check
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cart",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {
              final cartItem = cart[index];

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(cartItem['imageUrl'] as String),
                  //foregroundImage: AssetImage(cartItem['imageUrl'] as String),
                  radius: 35,
                ),
                title: Text(
                  '${cartItem['company']} shoes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Size: ${cartItem['sizes']}'),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              );
            }),
      ),
    );
  }
}
