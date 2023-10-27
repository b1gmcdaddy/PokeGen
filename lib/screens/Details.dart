import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:midtermproj/screens/Dashboard.dart';

class Details extends StatefulWidget {
  static const String routeName = "Details";
  final PokemonGeneration generation;

  Details({super.key, required this.generation});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(102, 13, 13, 1),
        title: Text("${widget.generation.name.toUpperCase()}'s Pokemons"),
      ),
      body: FutureBuilder<List<String>>(
        future: callApiDetails(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(18.0),
                  elevation: 5.0,
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            snapshot.data![index].toUpperCase(),
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          'assets/greatBall.png',
                          width: 50,
                          height: 50, 
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return Center(child: Text("NO POKEMON IN THIS GEN."));
          }
        },
      ),
    );
  }

  Future<List<String>> callApiDetails() async {
    final url = widget.generation.url; // URL of specific gen to GET list of Pokemon
    final response = await http.get(Uri.parse(url));
    final data = jsonDecode(response.body);

    List<String> genPokemons = [];
    for (var pokemons in data['pokemon_species']) {
      genPokemons.add(pokemons['name']);
    }
    return genPokemons;
  }
}
