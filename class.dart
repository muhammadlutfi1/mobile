class Hewan {
  double berat;

  Hewan(this.berat);
}

class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    double totalBeratMuatan = muatan.map((h) => h.berat).fold(0, (a, b) => a + b);
    if (kapasitas >= totalBeratMuatan + hewan.berat) {
      muatan.add(hewan);
      print('${hewan.berat} kg hewan ditambahkan ke dalam muatan.');
    } else {
      print('Kapasitas muatan tidak mencukupi.');
    }
  }

  double totalMuatan() {
    return muatan.map((h) => h.berat).fold(0, (a, b) => a + b);
  }
}

void main() {
  Mobil mobil = Mobil(500); // Mobil dengan kapasitas 500 kg
  Hewan hewan1 = Hewan(100); // Hewan dengan berat 100 kg
  Hewan hewan2 = Hewan(200); // Hewan dengan berat 200 kg
  Hewan hewan3 = Hewan(150); // Hewan dengan berat 150 kg

  mobil.tambahMuatan(hewan1); // Menambahkan hewan1 ke dalam muatan
  mobil.tambahMuatan(hewan2); // Menambahkan hewan2 ke dalam muatan
  mobil.tambahMuatan(hewan3); // Menambahkan hewan3 ke dalam muatan

  print('Total muatan dalam mobil: ${mobil.totalMuatan()} kg');
}
