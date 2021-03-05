class Place {
  final int id;
  final String title;
  final Map<String, Object> coordinates;
  final Map<String, List> points;
  final List<Map> results;

  Place({this.id, this.title, this.coordinates, this.points, this.results});
}

List<Place> _places = [];
void main(List<String> args) {
  // for Places class
  final newPlace1 = Place(
    id: 1,
    title: 'Forest',
    coordinates: {'lat': 13.3, 'lon': 289.3},
    points: {
      'first': [2, 6, 8],
      'second': [12, 16, 18]
    },
    results: [
      {'name': 'John', 'age': 18},
    ],
  );
  final newPlace2 = Place(
    id: 2,
    title: 'Animal',
    coordinates: {'lat': 56.3, 'lon': 46.1},
    points: {
      'first': [22, 26, 28],
      'second': [32, 36, 38]
    },
    results: [
      {'name': 'Mary', 'age': 23},
    ],
  );

  _places.add(newPlace1);
  _places.add(newPlace2);

  print(_places);
  print(_places[1].title);
  print(_places[1].coordinates['lat']);
  print(_places[1].points['second']);
  print(_places[1].results[0]['name']);
}
