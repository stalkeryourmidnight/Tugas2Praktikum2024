# Tugas Pertemuan 2

// final _namaController = TextEditingController();
// final _nimController = TextEditingController();
// final _shiftController = TextEditingController();
Masing-masing TextEditingController ini mengontrol satu TextField dan digunakan untuk mendapatkan data input dari pengguna.

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
Ketika tombol "Simpan" ditekan, mengambil data dari TextEditingController lalu memproses kemudian data yang diambil dari controller digunakan untuk membuat objek atau untuk ditampilkan di tampilan lain.

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
    // Gunakan data untuk membangun tampilan
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
                  _textWithIcon(icon: Icons.person, label: 'Nama', value: nama),
                  const SizedBox(height: 10),
                  _textWithIcon(icon: Icons.badge, label: 'NIM', value: nim),
                  const SizedBox(height: 10),
                  _textWithIcon(icon: Icons.calendar_today, label: 'Shift Baru', value: shiftBaru),
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

Tampilan menerima data melalui konstruktor dan menyimpannya sebagai variabel internal. Data ini kemudian digunakan untuk membangun tampilan di dalam build method tampil_data.dart

