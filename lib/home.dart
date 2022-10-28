import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.network(
                    'https://ibis.accor.com/editorial/imagerie/article/comida-mineira-pratos-tipicos-de-cada-regiao-do-brasil-358a_660x440.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'JSLanches',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      '',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const MenuCard(
              title: 'Brazuca',
              image:
                  'https://1.bp.blogspot.com/-lW1OwmsE2sw/XW5ynV4eycI/AAAAAAAAT8s/E8R_IhErbWgxyXeUWY9vzOHLMLGRtfyTgCLcBGAs/w1200-h630-p-k-no-nu/30-cardapios-marmitex-CozinhadoQuintal.jpg',
              description:
                  'Ingredientes: arroz, feijão, batata frita, filé, alface e ovo',
              price: "R\$ 22,00",
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            const MenuCard(
              title: 'Espetinho tropical',
              image:
                  'https://www.cookingclassy.com/wp-content/uploads/2018/06/chicken-fajita-kebabs-10.jpg',
              description:
                  'Ingredientes: frango, pimentão verde, pimentão amarelo, pimentão vermelho e cebola',
              price: "R\$ 42,00",
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            const MenuCard(
              title: 'Camarão acebolado',
              image:
                  'https://www.foodiecrush.com/wp-content/uploads/2017/07/Citrus-Shrimp-Avocado-Salad-foodiecrush.com-001.jpg',
              description: 'Ingredientes: camarrão, abacate e espinafre',
              price: "R\$ 60,00",
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
      ),
    );
  }
}
