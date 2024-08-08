import 'package:ampersand_project/model/product.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  final Product product;

  const DetailsView({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: const Text(
          "Details",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            product.data != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Color: ${product.data!.color ?? 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Capacity: ${product.data!.capacity ?? 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Price: ${product.data!.price != null ? '\$${product.data!.price}' : 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Generation: ${product.data!.generation ?? 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Year: ${product.data!.year ?? 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'CPU Model: ${product.data!.cpuModel ?? 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Hard Disk Size: ${product.data!.hardDiskSize ?? 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Strap Colour: ${product.data!.strapColour ?? 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Case Size: ${product.data!.caseSize ?? 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Description: ${product.data!.description ?? 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Screen Size: ${product.data!.screenSize != null ? '${product.data!.screenSize}"' : 'N/A'}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  )
                : const Text('No additional data available'),
          ],
        ),
      ),
    );
  }
}
