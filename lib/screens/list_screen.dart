import 'package:ampersand_project/model/product.dart';
import 'package:ampersand_project/screens/detail_screen.dart';
import 'package:ampersand_project/service/product_service.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final ProductService _productService = ProductService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Products",
        ),
      ),
      body: FutureBuilder<List<Product>>(
        future: _productService.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No products found'));
          } else {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListCard(
                  product: product,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsView(product: product),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ListCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 1,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          leading: Icon(
            Icons.device_hub, // Choose an icon that fits the product type
            size: 40,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            product.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: product.data != null
              ? Text(
                  'Color: ${product.data!.color ?? 'N/A'}\n'
                  'Capacity: ${product.data!.capacity ?? 'N/A'}',
                  style: Theme.of(context).textTheme.titleMedium,
                )
              : const Text('No additional data'),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Theme.of(context).primaryColor,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
