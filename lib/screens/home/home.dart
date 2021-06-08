import 'package:flutter/material.dart';
import 'package:pokedex/models/product.dart';
import 'package:pokedex/provider/products.dart';
import 'package:pokedex/style.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokédex"),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: builder,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 5,
          );
        },
        itemCount: listPokemons.length,
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Pokemons _pokemon = listPokemons.elementAt(index);
    String type = _pokemon.type.toUpperCase();
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Row(
        children: [
          Image.asset(
            _pokemon.image,
            width: 112,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _pokemon.name,
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  _pokemon.description,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Tipo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: type == "FOGO"
                                ? Colors.orange
                                : type == "ÁGUA"
                                    ? Colors.blueAccent
                                    : type == "INSETO"
                                        ? Color(0xffb8c355)
                                        : type == "POÇÃO"
                                            ? Colors.purple
                                            : type == "ELÉTRICO"
                                                ? Colors.yellow
                                                : type == "FADA"
                                                    ? Color(0xffffb9e9)
                                                    : type == "GRAMA" ? Colors.green : Colors.lightBlue,
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                          child: Row(
                            children: [
                              Text(
                                _pokemon.type,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Peso",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          _pokemon.weight.toString() + " kg",
                          style: TextStyle(
                            fontSize: 16,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Altura",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          _pokemon.height.toString() + " m",
                          style: TextStyle(
                            fontSize: 16,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
