void main() {
  List<String> alisverisListesi = ["Süt", "Ekmek", "Yumurta"];
  alisverisListesi.add("Peynir");

  print("İlk alinan ürün: ${alisverisListesi[0]}");
  print("Listede toplam ${alisverisListesi.length} ürün var.");
  print(alisverisListesi);

  Map<String, dynamic> ogrenci = {"ad": "Abdullah", "yas": 22, "aktifMi": true};

  ogrenci["bolum"] = "Bilgisayar Mühendisliği";

  print("Öğrencinin Adı: ${ogrenci['ad']}");
  print("Öğrencinin Bölümü: ${ogrenci['bolum']}");

  print("--- FOR DÖNGÜSÜ ---");

  for (var urun in alisverisListesi) {
    print("Alınacak: $urun");
  }

  print("--- 2. YÖNTEM ---");
  for (int i = 0; i < alisverisListesi.length; i++) {
    print("${i + 1}. sıradaki ürün: ${alisverisListesi[i]}");
  }

  List<int> sayilar = [10, 5, 20, 3, 8, 15];

  // 1. FİLTRELEME (where)
  // Sayılardan sadece 10'dan büyük olanları al.
  // 'e' o anki elemanı (element) temsil eder.
  var buyukSayilar = sayilar.where((e) => e > 10).toList();
  print("10'dan büyük sayılar: $buyukSayilar");

  // 2. DÖNÜŞTÜRME (map)
  // Her sayının karesini alıp yeni bir liste yap.
  var kareler = sayilar.map((e) => e * e).toList();
  print("Kareler: $kareler");

  // 3. KONTROL (contains / any)
  bool besVarMi = sayilar.contains(5);
  print("Listede 5 var mı? $besVarMi");

  // Listede hiç negatif sayı var mı?
  bool negatifVarMi = sayilar.any((e) => e < 0);
  print("Negatif sayı var mı? $negatifVarMi");

  // Ödev
  List<String> isimler = ["Ali", "Veli", "Ayşe"];
  var buyukHarf = isimler.map((e) => e.toUpperCase()).toList();
  print("Büyük harfli isimler: $buyukHarf");
}
