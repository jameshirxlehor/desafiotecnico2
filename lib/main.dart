import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meu app'),
          backgroundColor: Colors.lightGreen,
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
                      botaoTransicao(tituloBotao: "Livros"),
                      botaoTransicao(tituloBotao: "Favoritos")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                      livro(tituloLivro: 'Titulo top', autorLivro: 'Autor top'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class livro extends StatefulWidget {
  final String autorLivro;
  final String tituloLivro;

  const livro({super.key, required this.autorLivro, required this.tituloLivro});

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
          children: [
            Container(
              height: 160,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepOrange),
                color: Colors.amberAccent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            Text(
              widget.tituloLivro,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            Text(
              widget.autorLivro,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

class botaoTransicao extends StatefulWidget {
  final String tituloBotao;

  const botaoTransicao({super.key, required this.tituloBotao});

  @override
  State<botaoTransicao> createState() => _botaoTransicaoState();
}

class _botaoTransicaoState extends State<botaoTransicao> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(widget.tituloBotao),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}
