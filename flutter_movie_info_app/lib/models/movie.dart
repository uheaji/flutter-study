// Our movie model
class Movie {
  final int id, year, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop;
  final List<Map> cast;

  Movie({
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.id,
    required this.year,
    required this.numOfRatings,
    required this.criticsReview,
    required this.metascoreRating,
    required this.rating,
    required this.genra,
    required this.plot,
    required this.cast,
  });
}

// our demo data movie data
List<Movie> movies = [
  Movie(
    id: 1,
    title: "Bloodshot",
    year: 2020,
    poster: "images/poster_1.jpg",
    backdrop: "images/backdrop_1.jpg",
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Ford v Ferrari ",
    year: 2019,
    poster: "images/poster_2.jpg",
    backdrop: "images/backdrop_2.jpg",
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 1,
    title: "Onward",
    year: 2020,
    poster: "images/poster_3.jpg",
    backdrop: "images/backdrop_3.jpg",
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "images/actor_4.png",
      },
    ],
  ),
];

String plotText =
    "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";
