import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String name;
  final double price;
  const ServiceCard({super.key, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Expanded(
            child: ExpansionTile(
              title: Row(
                children: [
                  const Icon(Icons.cut_outlined, size: 18.0),
                  const SizedBox(width: 4.0),
                  Text(name),
                ],
              ),
              tilePadding: const EdgeInsets.symmetric(horizontal: 16.0),
              childrenPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              onExpansionChanged: (value) {},
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("R\$ ${price.toString()}"),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Agendar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
