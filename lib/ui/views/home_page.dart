import 'package:flutter/material.dart';
import 'package:shopping_app/data/entity/products.dart';
import 'package:shopping_app/ui/views/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Products>> productsDownload() async {
    var productList = <Products>[];
    var p1 = Products(
        id: 0, ad: "Macbook Pro 14", resim: "bilgisayar.png", fiyat: 43000);
    var p2 = Products(
        id: 1, ad: "Rayban Club Master", resim: "gozluk.png", fiyat: 2500);
    var p3 = Products(
        id: 2, ad: "Sony ZX  Series", resim: "kulaklik.png", fiyat: 40000);
    var p4 =
        Products(id: 3, ad: "Gio Armani", resim: "parfum.png", fiyat: 2000);
    var p5 =
        Products(id: 4, ad: "Casio X Series", resim: "saat.png", fiyat: 8000);
    var p6 =
        Products(id: 5, ad: "Dyson V8", resim: "supurge.png", fiyat: 18000);
    var p7 =
        Products(id: 6, ad: "Iphone 13", resim: "telefon.png", fiyat: 32000);
    productList.add(p1);
    productList.add(p2);
    productList.add(p3);
    productList.add(p4);
    productList.add(p5);
    productList.add(p6);
    productList.add(p7);
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ürünler"),
      ),
      body: FutureBuilder<List<Products>>(
        future: productsDownload(),
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            var productList = snapShot.data;

            return ListView.builder(
              itemCount: productList!.length,
              itemBuilder: (context, indeks) {
                var product = productList[indeks];
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailPage(product: product)));
                    },
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              width: 128,
                              height: 128,
                              child: Image.asset("images/${product.resim}")),
                        ),

                        Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.ad),
                            const SizedBox(height: 10),
                            Text(
                              "${product.fiyat} ₺",
                              style: const TextStyle(fontSize: 20),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                print("${product.ad} sepete eklendi");
                              },
                              child: const Text("Sepete Ekle"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
