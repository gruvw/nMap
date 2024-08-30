import "package:nmap/nmap.dart";

void main() {
  final int? a = null;
  final int b = 1;

  print(a.nmap((n) => n + 1)); // null
  print(b.nmap((n) => n + 1)); // 2
}
