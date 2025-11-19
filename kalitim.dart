class Arac {
  String marka;
  int modelYili;

  Arac(this.marka, this.modelYili);

  void bilgileriGoster() {
    print("Araç: $marka ($modelYili)");
  }

  void calistir() {
    print("Araç çalıştırılıyor...");
  }
}

class Araba extends Arac {
  int kapiSayisi;

  // super: "Bu bilgileri al, üst sınıfa (Arac'a) gönder" demektir.
  Araba(String marka, int modelYili, this.kapiSayisi) : super(marka, modelYili);

  // OVERRIDE: Üst sınıftaki bir metodu değiştirmek (Ezmek).
  @override
  void calistir() {
    print("$marka arabası sessizce çalıştı. Vrooom!");
  }
}

void main() {
  Araba benimArabam = Araba("Toyota", 2023, 4);

  benimArabam.bilgileriGoster();

  print("Kapı Sayısı: ${benimArabam.kapiSayisi}");

  benimArabam.calistir();
}
