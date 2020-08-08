class Trailer {
  final String title, image, genre;
  final int id;

  Trailer({
    this.id,
    this.title,
    this.image,
    this.genre,
  });
}

List<Trailer> trailers = [
  Trailer(
    id: 1,
    title: "Bloodshot",
    genre: "Action, Science, Fiction",
    image: "assets/trailers/bloodshot.jpg",
  ),
  Trailer(
    id: 2,
    title: "The Way Back",
    genre: "Drama",
    image: "assets/trailers/thewayback.jpg",
  ),
  Trailer(
    id: 3,
    title: "10 Things We Should Do Before We Break Up",
    genre: "Comedy Romance",
    image: "assets/trailers/10thinks.jpg",
  ),
  Trailer(
    id: 4,
    title: "Hotel Belgrade",
    genre: "Comedy, Romance",
    image: "assets/trailers/hotel.jpg",
  ),
  Trailer(
    id: 5,
    title: "The Kangaroo Chronicles",
    genre: "Comedy",
    image: "assets/trailers/thekangoro.jpg",
  ),
];
