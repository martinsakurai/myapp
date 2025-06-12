import 'package:flutter/material.dart';
import 'package:flutter_login/entities/users.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';


  final User usuarioIngresado; // uso final ya que estamos en un Statless widget. Como StatelessWidget no cambia su estado, sus propiedades deberían ser final
  //final jugadores = Player.playerList;

final List<Player> playerList =[
    Player(
      name: 'Cristiano Ronaldo',
      country: 'Portugal',
      goals: 140,
      appearances: 183,
      clubs: 'Manchester United, Real Madrid, Juventus',
      age: 40,
      ratio: 0.77,
      posterUrl: 'https://es.wikipedia.org/wiki/Cristiano_Ronaldo#/media/Archivo:Ronaldo_in_2018.jpg'

    ),
    Player(
      name: 'Lionel Messi',
      country: 'Argentina',
      goals: 129,
      appearances: 163,
      clubs: 'Barcelona, Paris Saint-Germain',
      age: 38,
      ratio: 0.79,
      posterUrl: 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg'

    ),
    Player(
      name: 'Robert Lewandowski',
      country: 'Poland',
      goals: 105,
      appearances: 133,
      clubs: 'Borussia Dortmund, Bayern Munich, Barcelona',
      age: 36,
      ratio: 0.79,
      posterUrl: 'https://www.fcbarcelona.com/photo-resources/2024/10/13/b666059e-1d0a-493f-a7e5-dd7a258d8165/09-Lewandowski-M.jpg?width=640&height=400'

    ),
    Player(
      name: 'Karim Benzema',
      country: 'France',
      goals: 90,
      appearances: 152,
      clubs: 'Lyon, Real Madrid',
      age: 37,
      ratio: 0.59,
      posterUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2_0x9QJB6r1C7VVbiHj4pTwCOnEJ2GwXsgw&s'

    ),
    Player(
      name: 'Raúl',
      country: 'Spain',
      goals: 71,
      appearances: 142,
      clubs: 'Real Madrid, Schalke 04',
      age: 47,
      ratio: 0.50,
      posterUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnirgvb6IsZvH5pvV7ktbCRt_I7evCoHsEew&s'

    ),
    Player(
      name: 'Thomas Muller',
      country: 'Germany',
      goals: 57,
      appearances: 163,
      clubs: 'Bayern Munich',
      age: 35,
      ratio: 0.35,
      posterUrl: 'https://www.ole.com.ar/2023/05/10/AzkythvI7_1290x760__1.jpg'

    ),
    Player(
      name: 'Ruud Van Nistelrooy',
      country: 'Netherlands',
      goals: 56,
      appearances: 73,
      clubs: 'PSV Eindhoven, Manchester United, Real Madrid',
      age: 48,
      ratio: 0.77,
      posterUrl: 'https://e00-elmundo.uecdn.es/elmundodeporte/futbol/2008-2009/nistelrooy.jpg'

    ),
    Player(
      name: 'Kylian Mbappé',
      country: 'France',
      goals: 55,
      appearances: 87,
      clubs: 'Monaco, Paris Saint-Germain, Real Madrid',
      age: 26,
      ratio: 0.64,
      posterUrl: 'https://www.directvsports.com/__export/1734702436786/sites/dsports/img/2024/12/20/mbappx.jpg_44784309.jpg'

    ),
    Player(
      name: 'Thierry Henry',
      country: 'France',
      goals: 51,
      appearances: 112,
      clubs: 'Monaco, Arsenal, Barcelona',
      age: 47,
      ratio: 0.45,
      posterUrl: 'https://tmssl.akamaized.net/images/foto/galerie/thierry-henry-1417524348-3352.jpg'

    ),
    Player(
      name: 'Mohamed Salah',
      country: 'Egypt',
      goals: 51,
      appearances: 98,
      clubs: 'Basel, Roma, Liverpool',
      age: 32,
      ratio: 0.52,
      posterUrl: 'https://hips.hearstapps.com/hmg-prod/images/liverpools-mohamed-salah-during-the-premier-league-match-news-photo-1727166672.jpg'

    ),
    Player(
      name: 'Filippo Inzaghi',
      country: 'Italy',
      goals: 50,
      appearances: 85,
      clubs: 'Juventus, Milan',
      age: 51,
      ratio: 0.59,
      posterUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/1997_Filippo_Inzaghi_%28cropped%29.jpg/250px-1997_Filippo_Inzaghi_%28cropped%29.jpg'

    ),
  
  ];
  HomeScreen({super.key, required this.usuarioIngresado}); //aca se dice que se requiere el userName de la pantalla login, la variable esta declarada igual que en appRouter


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bienvenido, ${usuarioIngresado.nombre}'),),
      body: ListView.builder(
        itemCount: playerList.length,
        itemBuilder: (context, index) {
          final jugador = playerList[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                jugador.posterUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.image),
              ),
              title: Text(jugador.name),
              subtitle: Text(
                'País: ${jugador.country}\n'
                'Goles: ${jugador.goals}, Partidos: ${jugador.appearances}, Promedio: ${jugador.ratio.toStringAsFixed(2)}\n'
                'Clubes: ${jugador.clubs}',
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}

