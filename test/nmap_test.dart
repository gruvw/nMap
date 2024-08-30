import "package:nmap/src/nmap_base.dart";
import "package:test/test.dart";

void main() {
  convert(int a) => a + 1;

  group("null map operation", () {
    test("should return identity on null", () {
      final int? a = null;
      final res = a.nmap(convert);

      expect(res, a);
    });

    test("should apply convert on non-null", () {
      final int b = 1;
      final res = b.nmap(convert);

      expect(res, convert(b));
    });
  });
}
