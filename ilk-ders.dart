void main() {
  var not = 75;

  if (not >= 90) {
    print("Not: A (Mükemmel)");
  } else if (not >= 70) {
    print("Not: B (İyi)");
  } else {
    print("Not: C (Geliştirilebilir)");
  }

  // i: Başlangıç değeri (0)
  // i < 5: Döngü ne zaman duracak (i 5'ten küçük olduğu sürece)
  // i++: Her seferinde ne kadar artacak (1 artır)
  for (int i = 0; i < 5; i++) {
    print("Tekrar sayısı: $i");
  }
}
