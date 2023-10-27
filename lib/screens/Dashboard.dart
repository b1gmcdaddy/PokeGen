import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'package:midtermproj/screens/Details.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Future<List<PokemonGeneration>> pokeApi = callApi();
    
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<PokemonGeneration>>(
          future: pokeApi,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                padding: EdgeInsets.all(24.0),
                color: Colors.grey[200],
                child: Column(
                  children: [
                    const Text(
                      "List of Pokemon Generations",
                      style: TextStyle(
                        fontSize: 24, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), 
                    Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                Details.routeName,
                                arguments: snapshot.data![index],
                              );
                            },
                            child: Card(
                              color: const Color.fromRGBO(102, 13, 13, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                title: Center(
                                  child: Text(
                                    snapshot.data![index].name.toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  Future<List<PokemonGeneration>> callApi() async {
  Response response = await http.get(Uri.parse("https://pokeapi.co/api/v2/generation"));
  List<PokemonGeneration> generations = [];
  var data = jsonDecode(response.body);
  for(var generationJson in data["results"]){
    generations.add(PokemonGeneration(
      name: generationJson["name"],
      url: generationJson["url"],
    ));
  }
  return generations;
  }
}

class PokemonGeneration {
  final String name;
  final String url;   //for the Details page

  PokemonGeneration({required this.name, required this.url});
}

