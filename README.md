# Dart Null Map

A dart package that provides `!= null` map operation extension (null map, `nmap`).

**Check it out** (install) on pub.dev: <https://pub.dev/packages/nmap>

The null map operator applies the passed `convert` function on receiver if it is not `null`, returns `null` otherwise.

**Note**: this package is a temporary solution to the open Dart lang issue <https://github.com/dart-lang/language/issues/361> while waiting for an actual language operator implementation.

## Usage

```dart
final int? a = null;
final int b = 1;
                                     
print(a.nmap((n) => n + 1)); // null
print(b.nmap((n) => n + 1)); // 2
```

See [implementation file](./lib/src/nmap_base.dart) for library source code.
