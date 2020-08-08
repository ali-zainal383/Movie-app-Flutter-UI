class Theater {
  final String title, overview, image;
  final int id;
  final double rating;

  Theater({
    this.id,
    this.title,
    this.overview,
    this.image,
    this.rating,
  });
}

List<Theater> theaters = [
  Theater(
    id: 1,
    title: "A Star is Born",
    overview: astarOverveiw,
    rating: 7.5,
    image: "assets/poster/poster_a_star.jpg",
  ),
  Theater(
    id: 2,
    title: "Aquaman",
    overview: aquaOverview,
    rating: 6.9,
    image: "assets/poster/poster_aquaman.jpg",
  ),
  Theater(
    id: 3,
    title: "Avengers Infinity War",
    overview: avengerOverview,
    rating: 8.3,
    image: "assets/poster/poster_avengerinfinity.jpg",
  ),
  Theater(
    id: 4,
    title: "Bird Box",
    overview: birdBoxOverview,
    rating: 6.9,
    image: "assets/poster/poster_birdbox.jpg",
  ),
  Theater(
    id: 5,
    title: "Bohemian Rhapsody",
    overview: bohemianOverview,
    rating: 8.0,
    image: "assets/poster/poster_bohemian.jpg",
  ),
  Theater(
    id: 6,
    title: "Bumblebee",
    overview: bumblebeeOverview,
    rating: 6.6,
    image: "assets/poster/poster_bumblebee.jpg",
  ),
  Theater(
    id: 7,
    title: "Creed II",
    overview: creedOverview,
    rating: 6.9,
    image: "assets/poster/poster_creed.jpg",
  ),
  Theater(
    id: 8,
    title: "Once Upon a Deadpool",
    overview: deadPoolOverview,
    rating: 6.9,
    image: "assets/poster/poster_deadpool.jpg",
  ),
  Theater(
    id: 9,
    title: "How To Train your Dragon",
    overview: dragonOverview,
    rating: 7.8,
    image: "assets/poster/poster_dragon.jpg",
  ),
  Theater(
    id: 10,
    title: "Glass",
    overview: glassOverview,
    rating: 6.6,
    image: "assets/poster/poster_glass.jpg",
  ),
  Theater(
    id: 11,
    title: "Hunter Killer",
    overview: hunterKillerOverview,
    rating: 6.6,
    image: "assets/poster/poster_hunterkiller.jpg",
  ),
  Theater(
    id: 12,
    title: "Mary Popins Returns",
    overview: maryOverview,
    rating: 6.5,
    image: "assets/poster/poster_marrypopins.jpg",
  ),
  Theater(
    id: 13,
    title: "Mortal Engines",
    overview: mortalOverview,
    rating: 6.1,
    image: "assets/poster/poster_mortalengine.jpg",
  ),
  Theater(
    id: 14,
    title: "Preman Pensiun",
    overview: premanOverview,
    rating: 6.3,
    image: "assets/poster/poster_preman.jpg",
  ),
  Theater(
    id: 15,
    title: "Robin Hood",
    overview: robinHoodOverview,
    rating: 5.9,
    image: "assets/poster/poster_robinhood.jpg",
  ),
  Theater(
    id: 16,
    title: "Spiderman",
    overview: spiderOverview,
    rating: 8.4,
    image: "assets/poster/poster_spiderman.jpg",
  ),
  Theater(
    id: 17,
    title: "The Girl in The Spiders Web",
    overview: theGirlOverview,
    rating: 6.1,
    image: "assets/poster/poster_thegirl.jpg",
  ),
  Theater(
    id: 18,
    title: "The Mule",
    overview: theMuleOverview,
    rating: 6.7,
    image: "assets/poster/poster_themule.jpg",
  ),
  Theater(
    id: 19,
    title: "Venom",
    overview: venomOverview,
    rating: 6.7,
    image: "assets/poster/poster_venom.jpg",
  ),
  Theater(
    id: 20,
    title: "DragonBall Broly",
    overview: dragonBallOverview,
    rating: 7.7,
    image: "assets/poster/poster_dragonball.jpg",
  ),
];

String astarOverveiw =
    "Seasoned musician Jackson Maine discovers — and falls in love with — struggling artist Ally. She has just about given up on her dream to make it big as a singer — until Jack coaxes her into the spotlight. But even as Ally's career takes off, the personal side of their relationship is breaking down, as Jack fights an ongoing battle with his own internal demons.";
String aquaOverview =
    "Once home to the most advanced civilization on Earth, Atlantis is now an underwater kingdom ruled by the power-hungry King Orm. With a vast army at his disposal, Orm plans to conquer the remaining oceanic people and then the surface world. Standing in his way is Arthur Curry, Orm's half-human, half-Atlantean brother and true heir to the throne.";
String avengerOverview =
    "As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.";
String birdBoxOverview =
    "Five years after an ominous unseen presence drives most of society to suicide, a survivor and her two children make a desperate bid to reach safety.";
String bohemianOverview =
    "Singer Freddie Mercury, guitarist Brian May, drummer Roger Taylor and bass guitarist John Deacon take the music world by storm when they form the rock 'n' roll band Queen in 1970. Hit songs become instant classics. When Mercury's increasingly wild lifestyle starts to spiral out of control, Queen soon faces its greatest challenge yet – finding a way to keep the band together amid the success and excess.";
String bumblebeeOverview =
    "On the run in the year 1987, Bumblebee finds refuge in a junkyard in a small Californian beach town. Charlie, on the cusp of turning 18 and trying to find her place in the world, discovers Bumblebee, battle-scarred and broken. When Charlie revives him, she quickly learns this is no ordinary yellow VW bug.";
String creedOverview =
    "Between personal obligations and training for his next big fight against an opponent with ties to his family's past, Adonis Creed is up against the challenge of his life.";
String deadPoolOverview =
    "A kidnapped Fred Savage is forced to endure Deadpool's PG-13 rendition of Deadpool 2 as a Princess Bride-esque story that's full of magic, wonder & zero F's.";
String dragonOverview =
    "As Hiccup fulfills his dream of creating a peaceful dragon utopia, Toothless’ discovery of an untamed, elusive mate draws the Night Fury away. When danger mounts at home and Hiccup’s reign as village chief is tested, both dragon and rider must make impossible decisions to save their kind.";
String dragonBallOverview =
    "Earth is peaceful following the Tournament of Power. Realizing that the universes still hold many more strong people yet to see, Goku spends all his days training to reach even greater heights. Then one day, Goku and Vegeta are faced by a Saiyan called 'Broly' who they've never seen before. The Saiyans were supposed to have been almost completely wiped out in the destruction of Planet Vegeta, so what's this one doing on Earth? This encounter between the three Saiyans who have followed completely different destinies turns into a stupendous battle, with even Frieza (back from Hell) getting caught up in the mix.";
String glassOverview =
    "In a series of escalating encounters, former security guard David Dunn uses his supernatural abilities to track Kevin Wendell Crumb, a disturbed man who has twenty-four personalities. Meanwhile, the shadowy presence of Elijah Price emerges as an orchestrator who holds secrets critical to both men.";
String hunterKillerOverview =
    "Captain Glass of the USS Arkansas discovers that a coup d'état is taking place in Russia, so he and his crew join an elite group working on the ground to prevent a war.";
String maryOverview =
    "In Depression-era London, a now-grown Jane and Michael Banks, along with Michael's three children, are visited by the enigmatic Mary Poppins following a personal loss. Through her unique magical skills, and with the aid of her friend Jack, she helps the family rediscover the joy and wonder missing in their lives.";
String mortalOverview =
    "Many thousands of years in the future, Earth’s cities roam the globe on huge wheels, devouring each other in a struggle for ever diminishing resources. On one of these massive traction cities, the old London, Tom Natsworthy has an unexpected encounter with a mysterious young woman from the wastelands who will change the course of his life forever.";
String premanOverview =
    "Despite his struggles to lead a law-abiding life, a former criminal tries to resist the urge to meddle in a revenge plot led by his past underlings.";
String robinHoodOverview =
    "A war-hardened Crusader and his Moorish commander mount an audacious revolt against the corrupt English crown.";
String spiderOverview =
    "Miles Morales is juggling his life between being a high school student and being a spider-man. When Wilson Kingpin Fisk uses a super collider, others from across the Spider-Verse are transported to this dimension.";
String theGirlOverview =
    "In Stockholm, Sweden, hacker Lisbeth Salander is hired by Frans Balder, a computer engineer, to retrieve a program that he believes it is too dangerous to exist.";
String theMuleOverview =
    "Earl Stone, a man in his eighties, is broke, alone, and facing foreclosure of his business when he is offered a job that simply requires him to drive. Easy enough, but, unbeknownst to Earl, he's just signed on as a drug courier for a Mexican cartel. He does so well that his cargo increases exponentially, and Earl hit the radar of hard-charging DEA agent Colin Bates.";
String venomOverview =
    "Investigative journalist Eddie Brock attempts a comeback following a scandal, but accidentally becomes the host of Venom, a violent, super powerful alien symbiote. Soon, he must rely on his newfound powers to protect the world from a shadowy organization looking for a symbiote of their own.";
