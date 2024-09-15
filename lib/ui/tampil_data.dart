import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final String shiftBaru; 

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.shiftBaru, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            shadowColor: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _textWithIcon(
                      icon: Icons.person, label: 'Nama', value: nama),
                  const SizedBox(height: 10),
                  _textWithIcon(icon: Icons.badge, label: 'NIM', value: nim),
                  const SizedBox(height: 10),
                  _textWithIcon(
                      icon: Icons.calendar_today, 
                      label: 'Shift Baru', 
                      value: shiftBaru), 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textWithIcon({required IconData icon, required String label, required String value}) {
    return Row(
      children: [
        Icon(icon, color: Colors.blueAccent),
        const SizedBox(width: 10),
        Text(
          '$label: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
