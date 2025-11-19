// 1. MİXİN (YETENEK 1)
// Tek başına bir sınıf değildir, bir "özellik paketidir".

mixin Ucabilen {
  void uc() {
    print("Uçmaya başlıyor...");
  }
}

// 2. MİXİN (YETENEK 2)
mixin Yuzebilen {
  void yuz() {
    print("Yüzmeye başlıyor...");
  }
}

mixin Kosabilen {
  void kos() {
    print("Koşmaya başlıyor...");
  }
}

class Hayvan {
  String ad;
  Hayvan(this.ad);
}

class Ordek extends Hayvan with Ucabilen, Yuzebilen {
  Ordek(String ad) : super(ad);
}

class Helikopter with Ucabilen {}

class Insan with Kosabilen, Yuzebilen {
  String ad;
  Insan(this.ad);
}

void main() {
  Ordek ordek = Ordek("Duffy");
  ordek.uc();
  ordek.yuz();
  print("Adı: ${ordek.ad}");

  print("--- Helikopter ---");
  Helikopter heli = Helikopter();
  heli.uc();
  // heli.yuz(); // HATA: Helikopter yüzme yeteneğine sahip değil!

  print("--- İnsan ---");
  Insan biri = Insan("Abdullah");
  print("Adı: ${biri.ad}");
  biri.kos();
  biri.yuz();
  //biri.uc(); // HATA: İnsan uçma yeteneğine sahip değil!
}
