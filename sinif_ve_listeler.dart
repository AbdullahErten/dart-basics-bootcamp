// 1. KALIP (CLASS)
class Urun {
  String ad;
  double fiyat;
  bool stoktaVarMi;

  Urun(this.ad, this.fiyat, this.stoktaVarMi);
}

void main() {
  List<Urun> marketRaf = [
    Urun("Laptop", 60000, true),
    Urun("Mouse", 500, true),
    Urun("Klavye", 1500, false),
    Urun("Monitor", 4500, true),
  ];

  // 3. GERÇEK HAYAT :
  // Sadece stokta olanları ve fiyatı 5000 TL'den ucuz olanlar
  var alinabilecekUrunler = marketRaf
      .where((e) => e.stoktaVarMi == true && e.fiyat < 5000)
      .toList();

  print("--- Alınabilecek Ürünler ---");
  for (var e in alinabilecekUrunler) {
    print("${e.ad} - Fiyat: ${e.fiyat} TL");
  }
}
