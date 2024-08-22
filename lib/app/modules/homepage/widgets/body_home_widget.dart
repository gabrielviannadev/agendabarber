import 'package:agendabarber/app/modules/homepage/widgets/service_card.dart';
import 'package:flutter/material.dart';

class BodyHomeWidget extends StatelessWidget {
  const BodyHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: 4.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Faça seu agendamento',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 24.0,
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Divider(color: Colors.grey.shade200),
              const ServiceCard(
                name: 'Corte de cabelo',
                price: 25.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
