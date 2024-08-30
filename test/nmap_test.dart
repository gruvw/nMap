import "package:nmap/src/nmap_base.dart";
import "package:test/test.dart";

int convert(int a) {
  return a + 1;
}

void main() {
  group("Basic null map operation", () {
    test("Identity on null", () {
      final int? a = null;
      final res = a.nmap(convert);

      expect(res, a);
    });

    test("Applies convert on non-null", () {
      final int b = 1;
      final res = b.nmap(convert);

      expect(res, convert(b));
    });
  });
}
