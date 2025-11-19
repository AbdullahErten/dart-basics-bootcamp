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
}
