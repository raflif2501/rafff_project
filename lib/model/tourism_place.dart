
class TourismPlace {
  String name;
  String location;
  String imageAsset;
  String open;
  String jam;
  String tiket;
  String deskripsi;
  String image1;
  String image2;
  String image3;
  String image4;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.open,
    required this.jam,
    required this.tiket,
    required this.deskripsi,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
  });
}

var tourismPlaceList = [
  TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      open:'Every Day',
      jam:'08:00 - 16:00',
      tiket:'10.000',
      deskripsi:'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952.',
      image1: 'assets/images/monkasel_1.jpg',
      image2: 'assets/images/monkasel_2.jpg',
      image3: 'assets/images/monkasel_3.jpg',
      image4: 'assets/images/monkasel_4.jpg',
  ),
  TourismPlace(
    name: 'Kelenteng Sanggar Agung',
    location: 'Kenjeran',
    imageAsset: 'assets/images/klenteng.jpg',
    open:'Minggu',
    jam:'07:00 - 17:00',
    tiket:'Free',
    deskripsi:'Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. Alamatnya berada di Jalan Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya. Kuil ini, selain menjadi tempat ibadah bagi pemeluk Tridharma, juga menjadi tempat tujuan wisata bagi para wisatawan. ',
    image1: 'assets/images/klenteng_1.jpg',
    image2: 'assets/images/klenteng_2.jpg',
    image3: 'assets/images/klenteng_3.jpg',
    image4: 'assets/images/klenteng_4.jpg',
  ),
  TourismPlace(
    name: 'House Of Sampoerna',
    location: 'Krembangan Utara',
    imageAsset: 'assets/images/sampoerna.jpg',
    open:'Eveery Day',
    jam:'09:00 - 16:00',
    tiket:'15.000',
    deskripsi:'House of Sampoerna adalah sebuah museum tembakau dan markas besar Sampoerna yang terletak di Surabaya. Gaya arsitektur dari bangunan utamanya yang dipengaruhi oleh gaya kolonial Belanda dibangun pada 1862 dan sekarang menjadi situs sejarah.',
    image1: 'assets/images/sampoerna_1.jpg',
    image2: 'assets/images/sampoerna_2.jpg',
    image3: 'assets/images/sampoerna_3.jpg',
    image4: 'assets/images/sampoerna_4.jpg',
  ),
  TourismPlace(
    name: 'Tugu Pahlawan',
    location: 'Alun - alun contong',
    imageAsset: 'assets/images/pahlawan.jpg',
    open:'Every Day',
    jam:'24 Jam',
    tiket:'Free',
    deskripsi:'Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan sebanyak 10 lengkungan, dan terbagi atas 11 ruas.',
    image1: 'assets/images/pahlawan_1.jpg',
    image2: 'assets/images/pahlawan_2.jpg',
    image3: 'assets/images/pahlawan_3.jpg',
    image4: 'assets/images/pahlawan_4.jpg',
  ),
  TourismPlace(
    name: 'Patung Suro Boyo',
    location: 'Wonokromo',
    imageAsset: 'assets/images/sby.jpg',
    open:'Every Day',
    jam:'24 Jam',
    tiket:'Free',
    deskripsi:'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan ini yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
    image1: 'assets/images/sby_1.jpg',
    image2: 'assets/images/sby_2.jpg',
    image3: 'assets/images/sby_3.jpg',
    image4: 'assets/images/sby_4.jpg',
  ),
  TourismPlace(
    name: 'Masjid Agung Sumenep',
    location: 'Bangselok',
    imageAsset: 'assets/images/masjid.jpg',
    open:'Every Day',
    jam:'24 Jam',
    tiket:'Free',
    deskripsi:'Masjid Agung Sumenep atau lebih dikenal dengan nama Masjid Jamik Sumenep adalah sebuah masjid yang berada di Kabupaten Sumenep, Jawa Timur. Berdiri menghadap Alun-Alun Sumenep dan menjadi simbol masuknya Islam di Kabupaten Sumenep.',
    image1: 'assets/images/masjid_1.jpg',
    image2: 'assets/images/masjid_2.jpg',
    image3: 'assets/images/masjid_3.jpg',
    image4: 'assets/images/masjid_4.jpg',
  ),
];