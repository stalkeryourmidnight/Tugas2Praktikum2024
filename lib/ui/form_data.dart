import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _shiftController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.blueAccent, 
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _inputCard(),
              const SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      shadowColor: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _textboxNama(),
            const SizedBox(height: 15),
            _textboxNIM(),
            const SizedBox(height: 15),
            _textboxShift(), 
          ],
        ),
      ),
    );
  }

  Widget _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      controller: _namaController,
    );
  }

  Widget _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      controller: _nimController,
    );
  }

  Widget _textboxShift() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Shift Baru", 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      controller: _shiftController,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        shadowColor: Colors.black54,
      ),
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        String shiftBaru = _shiftController.text;

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => TampilData(
              nama: nama,
              nim: nim,
              shiftBaru: shiftBaru, 
            ),
          ),
        );
      },
      child: const Text('Simpan', style: TextStyle(fontSize: 18)),
    );
  }
}
