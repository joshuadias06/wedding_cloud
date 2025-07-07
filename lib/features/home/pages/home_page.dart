import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.deepPurple, size: 60),
                    SizedBox(height: 10),
                    Text(
                      "Bem-vindo ao nosso grande dia!",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                "O que você vai encontrar aqui:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              _buildFeatureCard(
                icon: Icons.camera_alt,
                title: "Câmera do Evento",
                description: "Capture momentos incríveis durante a festa.",
              ),
              const SizedBox(height: 12),
              _buildFeatureCard(
                icon: Icons.photo_library,
                title: "Galeria de Fotos",
                description: "Veja e compartilhe os melhores registros.",
              ),
              const SizedBox(height: 12),
              _buildFeatureCard(
                icon: Icons.restaurant_menu,
                title: "Cardápio",
                description: "Descubra os pratos e bebidas do evento.",
              ),
              const SizedBox(height: 12),
              _buildFeatureCard(
                icon: Icons.event_available,
                title: "Confirmação de Presença",
                description: "Confirme que estará presente nesse momento único.",
              ),
              const Spacer(),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/gallery');
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text(
                    "Explorar o App",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 32, color: Colors.deepPurple),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
