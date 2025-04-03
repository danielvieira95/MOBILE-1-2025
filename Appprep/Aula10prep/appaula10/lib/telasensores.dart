import 'package:flutter/material.dart';

class SensorData {
  final String title;
  final String value;
  final String status;
  final Color statusColor;
  final String imagePath;

  SensorData({
    required this.title,
    required this.value,
    required this.status,
    required this.statusColor,
    required this.imagePath,
  });
}

class ColetaDeDadosScreen extends StatelessWidget {
  ColetaDeDadosScreen({super.key});

  final List<SensorData> sensores = [
    SensorData(
      title: 'Umidade do Solo',
      value: '80%',
      status: 'Bom',
      statusColor: Colors.blue,
      imagePath: 'images/1.png'
    
    ),
    SensorData(
      title: 'Temperatura',
      value: '25 C',
      status: 'Bom',
      statusColor: Colors.blue,
      imagePath: 'images/2.png',
    ),
    SensorData(
      title: 'Luminosidade',
      value: '80%',
      status: 'Bom',
      statusColor: Colors.blue,
      imagePath: 'images/3.png',
    ),
    SensorData(
      title: 'Níveis de pH',
      value: '2',
      status: 'Ruim',
      statusColor: Colors.red,
      imagePath: 'images/4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF5EE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.brown),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Coleta de Dados',
          style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: sensores.length,
        itemBuilder: (context, index) {
          final sensor = sensores[index];
          return SensorCard(sensor: sensor);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF40251C),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
        ],
      ),
    );
  }
}

class SensorCard extends StatelessWidget {
  final SensorData sensor;

  const SensorCard({super.key, required this.sensor});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              sensor.imagePath,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sensor.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(sensor.value,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                       
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        sensor.status,
                        style: TextStyle(
                          color: sensor.statusColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
