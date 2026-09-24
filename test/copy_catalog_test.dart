import 'dart:io';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Copy DMart Catalog HTML', () {
    final src = File(r'C:\Users\ajit.chowdary\Desktop\dmart_categories_products.html');
    final dst = File(r'C:\Users\ajit.chowdary\Desktop\Grocery_List\assets\dmart_categories_products.html');
    dst.parent.createSync(recursive: true);
    if (src.existsSync()) {
      src.copySync(dst.path);
      print('SUCCESSFULLY COPIED ${dst.lengthSync()} BYTES TO ASSETS!');
    } else {
      print('SOURCE FILE NOT FOUND AT ${src.path}');
    }
  });
}
