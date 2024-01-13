import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/cart_provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override //check
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cart;
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
                trailing: GestureDetector(
                  onTap: () {
                    Provider.of<CartProvider>(context, listen: false)
                        .removeProduct(cart[index]);
                  },
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
