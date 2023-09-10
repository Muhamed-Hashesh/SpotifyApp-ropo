class SongsCard {
  final String image, nameOfSong, nameOfArtist, song;

  SongsCard(
      {required this.image,
      required this.nameOfSong,
      required this.nameOfArtist, required this.song});
}

List<SongsCard> songsCardList = [
  SongsCard(
    image: "assets/images/Billie eilish.jpg",
    nameOfSong: "Bad Guy",
    nameOfArtist: "Billie Eilish", song: "sounds/songs/bad_guy.mp3",
  ),
  SongsCard(
    image: "assets/images/Armani White.jpg",
    nameOfSong: "BILLIE EILISH.",
    nameOfArtist: "Armani White", song: 'sounds/songs/sweet_child.mp3',
  ),
  SongsCard(
    image: "assets/images/Billie eilish2.jpg",
    nameOfSong: "Happier Than Ever",
    nameOfArtist: "Billie Eilish", song: 'sounds/songs/bad_guy.mp3',
  ),
  SongsCard(
    image: "assets/images/Ed Sheeran.jpg",
    nameOfSong: "Shape of You",
    nameOfArtist: "Ed Sheeran", song: 'sounds/songs/sweet_child.mp3',
  ),
  SongsCard(
    image: "assets/images/Camila Cabello.jpg",
    nameOfSong: "Havana",
    nameOfArtist: "Camila Cabello", song: 'sounds/songs/bad_guy.mp3',
  ),
  SongsCard(
    image: "assets/images/Michael Jackson.jpg",
    nameOfSong: "Billie Jean",
    nameOfArtist: "Michael Jackson", song: 'sounds/songs/sweet_child.mp3',
  ),
  SongsCard(
    image: "assets/images/OneRepublic.jpg",
    nameOfSong: "Counting Stars",
    nameOfArtist: "OneRepublic", song: 'sounds/songs/bad_guy.mp3',
  ),
];

// ? Songs playlist class and List

class SongPlaylist {
  final String songName, singer;

  SongPlaylist({required this.songName, required this.singer});
}

List<SongPlaylist> songPlaylistList = [
  SongPlaylist(
    songName: "Sweet Child o' Mine",
    singer: "Guns N' Roses",
  ),
  SongPlaylist(
    songName: "Pink Venom",
    singer: "BLACKPINK",
  ),
  SongPlaylist(
    songName: "Harry's House",
    singer: "Harry Styles",
  ),
  SongPlaylist(
    songName: "Hello",
    singer: "Adele",
  ),
  SongPlaylist(
    songName: "Uptown Funk",
    singer: "Mark Ronson ft. Bruno Mars.",
  ),
  SongPlaylist(
    songName: "Despacito",
    singer: "Luis Fonsi ft. Daddy Yankee",
  ),
  SongPlaylist(
    songName: "Blank Space",
    singer: "Taylor Swift",
  ),
  SongPlaylist(
    songName: "Rolling in the Deep",
    singer: "Adele",
  ),
  SongPlaylist(
    songName: "Happy",
    singer: "Pharrell Williams",
  ),
  SongPlaylist(
    songName: "Dance Monkey",
    singer: "Tones and I",
  ),
  SongPlaylist(
    songName: "Bad Guy",
    singer: "Billie Eilish",
  ),
  SongPlaylist(
    songName: "Havana",
    singer: "Camila Cabello",
  ),
  SongPlaylist(
    songName: "Rockstar",
    singer: "Post Malone ft. 21 Savage",
  ),
  SongPlaylist(
    songName: "Wrecking Ball",
    singer: "Miley Cyrus",
  ),
  SongPlaylist(
    songName: "Sweet Child o' Mine",
    singer: "Guns N' Roses",
  ),
  SongPlaylist(
    songName: "Pink Venom",
    singer: "BLACKPINK",
  ),
  SongPlaylist(
    songName: "Blank Space",
    singer: "Taylor Swift",
  ),
  SongPlaylist(
    songName: "Harry's House",
    singer: "Harry Styles",
  ),
  SongPlaylist(
    songName: "Hello",
    singer: "Adele",
  ),
  SongPlaylist(
    songName: "Pink Venom",
    singer: "BLACKPINK",
  ),
  SongPlaylist(
    songName: "Happy",
    singer: "Pharrell Williams",
  ),
  SongPlaylist(
    songName: "Rolling in the Deep",
    singer: "Adele",
  ),
  SongPlaylist(
    songName: "Dance Monkey",
    singer: "Tones and I",
  ),
];
