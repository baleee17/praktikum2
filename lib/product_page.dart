import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final List<String> produk = ["Produk 1", "Produk 2", "Produk 3", "Produk 4"];

  void _tambahKeKeranjang(BuildContext context, String produk) {
    // Logika untuk menambahkan produk ke keranjang bisa ditambahkan di sini
    // Untuk sekarang, kita hanya menampilkan snackbar sebagai notifikasi
    final snackBar = SnackBar(
      content: Text('$produk telah ditambahkan ke keranjang'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: produk.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(produk[index]),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () => _tambahKeKeranjang(context, produk[index]),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductPage(),
  ));
}
