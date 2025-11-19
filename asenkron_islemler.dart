// 'async' kelimesi: "Bu fonksiyonun içinde beklemeli işlemler olacak" demektir.
void main() async {
  print("1. Uygulama açıldı.");
  print("2. Veri İndiriliyor...");

  // 'await': "Bu işlem bitene kadar bekle, alt satıra geçme!" demektir.
  // Sanki internetten veri çekiyormuşuz gibi 3 saniye bekletiyoruz.
  String gelenVeri = await veriGetir();

  print("3. İşlem Tamamlandı: $gelenVeri");
}

// Gelecekte String döndürecek bir fonksiyon (Future<String>)
Future<String> veriGetir() async {
  // 3 saniyelik yapay bir gecikme oluşturuyoruz.
  await Future.delayed(Duration(seconds: 3));
  return "Veritabanından gelen gizli şifre";
}
