String selamla(String ad) {
  return 'Merhaba, $ad!';
}

void kareCiz() {
  print('Kare çizildi.');
}

void main() {
  String karsilama = selamla("Abdullah");
  print(karsilama);

  kareCiz();
}
