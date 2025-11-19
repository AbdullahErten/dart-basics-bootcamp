// ABSTRACT (SOYUT) SINIF
// Bu sınıftan nesne üretilemez! Sadece bir şablondur.
abstract class Hayvan {
  String ad;

  Hayvan(this.ad);

  // GÖVDESİ OLMAYAN METOT (Abstract Method)
  // Kural: Beni miras alan (extends) herkes bu metodu
  // KENDİSİNE GÖRE DOLDURMAK ZORUNDADIR!
  void sesCikar();

  // Normal metot da olabilir
  void yemekYe() {
    print("$ad yemek yiyor...");
  }
}

// Kedi sınıfı
class Kedi extends Hayvan {
  Kedi(String ad) : super(ad);

  // ZORUNLU: Hayvan sınıfı "sesCikar" zorunlu dediği için bunu yazmalıyız.
  @override
  void sesCikar() {
    print("$ad: Miyaavvv!");
  }
}

class Kopek extends Hayvan {
  Kopek(String ad) : super(ad);

  @override
  void sesCikar() {
    print("$ad: Hav Hav!");
  }
}

class Kus extends Hayvan {
  Kus(String ad) : super(ad);

  @override
  void sesCikar() {
    print("$ad: Cik Cik!");
  }
}

void main() {
  // Hayvan h = Hayvan("X"); // HATA! Soyut sınıftan nesne üretilemez.
  Kedi kedi = Kedi("Boncuk");
  Kopek kopek = Kopek("Karabaş");
  Kus kus = Kus("Çitos");

  kedi.sesCikar();
  kedi.yemekYe();

  kopek.sesCikar();
  kopek.yemekYe();

  kus.sesCikar();
  kus.yemekYe();
}
