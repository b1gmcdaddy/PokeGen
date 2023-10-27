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

  Future<List<String>> callApiDetails() async {
    final url = widget.generation.url; 
    final response = await http.get(Uri.parse(url));
    final data = jsonDecode(response.body);
    
    List<String> genPokemons = [];
    for (var species in data['pokemon_species']) {
      genPokemons.add(species['name']);
    }
    return genPokemons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(102, 13, 13, 1),
        title: Text("${widget.generation.name.toUpperCase()}'s Pokemons"),
      ),
      body: FutureBuilder<List<String>>(
        future: callApiDetails(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length > 10 ? 10 : snapshot.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Center(
                    child: Text(snapshot.data![index].toUpperCase()),
                )
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
}
