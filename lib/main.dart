import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() async {
  Response response;
  Dio dio = Dio();
  response = await dio.get('https://escribo.com/books.json');
  print(response.data.toString());
  List listaLivros = (response.data as List).map((item) {
    return livrosArquivos.fromJson(item);
  }).toList();
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Estante Virtual',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromRGBO(83, 132, 86, 1),
        ),
        body: Padding(
          padding: EdgeInsets.all(6),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      botaoLivros(tituloBotao: "Livros"),
                      botaoFavoritos(
                        tituloBotao: "Favoritos",
                      )
                    ],
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       livro(
                            tituloLivro: 'Kazan',
                            autorLivro: 'Curwood, James Oliver',
                            capaLivro:
                                'https://www.gutenberg.org/cache/epub/72127/pg72127.cover.medium.jpg'),
                      ],
                    ),
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        livro(
                            tituloLivro: 'The Bible of Nature',
                            autorLivro: 'Oswald, Felix L.',
                            capaLivro:
                            'https://www.gutenberg.org/cache/epub/72134/pg72134.cover.medium.jpg'),
                        ],
                    ),
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       livro(
                            tituloLivro:
                                'The octopus: or, The "devil-fish" of fiction and of fact',
                            autorLivro: 'Henry Lee',
                            capaLivro:
                                'https://www.gutenberg.org/cache/epub/72133/pg72133.cover.medium.jpg'),
                      ],
                    ),
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        livro(
                            tituloLivro: 'Lupe',
                            autorLivro: 'Affonso Celso',
                            capaLivro:
                            'https://www.gutenberg.org/cache/epub/63606/pg63606.cover.medium.jpg'),
                        ],
                    ),
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        livro(
                          tituloLivro:
                              'The History of England in Three Volumes, Vol.III.',
                          autorLivro: 'Edward Farr and E. H. Nolan',
                          capaLivro:
                              'https://www.gutenberg.org/cache/epub/19218/pg19218.cover.medium.jpg',
                        ),
                      ],
                    ),
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        livro(
                            tituloLivro:
                            'Among the Mushrooms: A Guide For Beginners',
                            autorLivro: 'Burgin and Dallas',
                            capaLivro:
                            'https://www.gutenberg.org/cache/epub/18452/pg18452.cover.medium.jpg'),
                      ],
                    ),
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        livro(
                            tituloLivro: 'Mythen en sagen uit West-Indië',
                            autorLivro: 'Cappelle, Herman van, Jr.',
                            capaLivro:
                                'https://www.gutenberg.org/cache/epub/72126/pg72126.cover.medium.jpg'),
                       ],
                    ),
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      livro(
                            tituloLivro:
                            'Nuorta ja vanhaa väkeä: Kokoelma kertoelmia',
                            autorLivro: 'Fredrik Nycander',
                            capaLivro:
                            'https://www.gutenberg.org/cache/epub/72135/pg72135.cover.medium.jpg'),
                      ],
                    ),
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        livro(
                            tituloLivro: 'Adventures of Huckleberry Finn',
                            autorLivro: 'Mark Twain',
                            capaLivro:
                                'https://www.gutenberg.org/cache/epub/76/pg76.cover.medium.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(83, 132, 86, 1),
      ),
    );
  }
}

class favoritosTela extends StatefulWidget {
  const favoritosTela({super.key});

  @override
  State<favoritosTela> createState() => _favoritosTelaState();
}

class _favoritosTelaState extends State<favoritosTela> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Estante Virtual',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromRGBO(83, 132, 86, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(6),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      botaoLivros(
                        tituloBotao: "Livros",
                      ),
                      botaoFavoritos(
                        tituloBotao: "Favoritos",
                      )
                    ],
                  ),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        livro(
                            tituloLivro: 'The Bible of Nature',
                            autorLivro: 'Oswald, Felix L.',
                            capaLivro:
                                'https://www.gutenberg.org/cache/epub/72134/pg72134.cover.medium.jpg'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      livro(
                          tituloLivro: 'The Bible of Nature',
                          autorLivro: 'Oswald, Felix L.',
                          capaLivro:
                              'https://www.gutenberg.org/cache/epub/72134/pg72134.cover.medium.jpg'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      livro(
                          tituloLivro: 'The Bible of Nature',
                          autorLivro: 'Oswald, Felix L.',
                          capaLivro:
                              'https://www.gutenberg.org/cache/epub/72134/pg72134.cover.medium.jpg'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      livro(
                          tituloLivro: 'The Bible of Nature',
                          autorLivro: 'Oswald, Felix L.',
                          capaLivro:
                              'https://www.gutenberg.org/cache/epub/72134/pg72134.cover.medium.jpg'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(83, 132, 86, 1),
      ),
    );
  }
}

class livro extends StatefulWidget {
  final String autorLivro;
  final String tituloLivro;
  final String capaLivro;

  const livro(
      {super.key,
      required this.autorLivro,
      required this.tituloLivro,
      required this.capaLivro});

  @override
  State<livro> createState() => _livroState();
}

class _livroState extends State<livro> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                image: DecorationImage(
                  image: NetworkImage(widget.capaLivro),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    widget.tituloLivro,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    widget.autorLivro,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class botaoLivros extends StatefulWidget {
  final String tituloBotao;

  botaoLivros({super.key, required this.tituloBotao});

  @override
  State<botaoLivros> createState() => _botaoLivrosState();
}

class _botaoLivrosState extends State<botaoLivros> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(1),
        child: ElevatedButton(
          onPressed: () {
            runApp(
              MaterialApp(
                home: MyApp(),
                debugShowCheckedModeBanner: false,
              ),
            );
          },
          child: Text(widget.tituloBotao),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}

class botaoFavoritos extends StatefulWidget {
  final String tituloBotao;

  botaoFavoritos({super.key, required this.tituloBotao});

  @override
  _botaoFavoritosState createState() => _botaoFavoritosState();
}

class _botaoFavoritosState extends State<botaoFavoritos> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(1),
        child: ElevatedButton(
          onPressed: () {
            runApp(
              MaterialApp(
                home: favoritosTela(),
                debugShowCheckedModeBanner: false,
              ),
            );
          },
          child: Text(widget.tituloBotao),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}

class livrosArquivos {
  final int id;
  final String title;
  final String author;
  final String cover_url;
  final String download_url;

  livrosArquivos(
      {required this.id,
      required this.title,
      required this.author,
      required this.cover_url,
      required this.download_url});

  factory livrosArquivos.fromJson(Map<String, dynamic> json) => livrosArquivos(
        id: json["id"],
        title: json['title'],
        author: json['author'],
        cover_url: json['cover_url'],
        download_url: json['download_url'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'author': author,
        'cover_url': cover_url,
        'download_url': download_url,
      };
}
