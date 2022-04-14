import 'package:flutter/cupertino.dart';

class Bandung  {
  String nama;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String image;
  String image1;
  String image2;
  String image3;

  Bandung ({
    required this.nama,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.image,
    required this.image1,
    required this.image2,
    required this.image3,
  });
}

List<Bandung> bandungList = [
  Bandung(
    nama: 'Farm House Lembang',
    location: 'Lembang',
    description: 'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25000',
    image: 'https://th.bing.com/th/id/R.22bedd073c308053b7dc208df64deb15?rik=t6fogbt1imz7mw&riu=http%3a%2f%2fvickyfahmi.com%2fwp-content%2fuploads%2f2018%2f01%2fFarm-House-Lembang-Bandung.jpeg&ehk=a%2bxXQCMnA2m5JrgTRAuSNQmll%2fgV7O2JPV53agZ7E9E%3d&risl=&pid=ImgRaw&r=0',
    image1: 'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
    image2: 'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
    image3: 'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
  ),
  Bandung(
    nama: 'Observatorium Bosscha',
    location: 'Lembang',
    description: 'Memiliki beberapa teleskop, antara lain, Refraktor Ganda Zeiss, Schmidt Bimasakti, Refraktor Bamberg, Cassegrain GOTO, dan Teleskop Surya. Refraktor Ganda Zeiss adalah jenis teleskop terbesar untuk meneropong bintang. Benda ini diletakkan pada atap kubah sehingga saat teropong digunakan, atap tersebut harus dibuka. Observatorium Bosscha boleh dikunjungi oleh siapa pun, tanpa tiket. Namun, bagi yang ingin menggunakan teleskop Zeiss, wajib mendaftarkan diri. Untuk instansi atau lembaga pendidikan, diberikan jadwal hari Selasa sampai Jumat. Sementara itu, kunjungan individu dibuka setiap hari Sabtu.',
    openDays: 'Tuesday - Saturday',
    openTime: '09:00 - 14:30',
    ticketPrice: 'Rp 20000',
    image: 'https://4.bp.blogspot.com/-PtcxyqTJOdE/VcIgdOz6VJI/AAAAAAAAAi8/pRqUZzk6hLI/s1600/observatorium-bosscha-lembang.jpg',
    image1: 'https://media-cdn.tripadvisor.com/media/photo-o/12/6b/63/0b/bosscha-observatory.jpg',   
    image2: 'https://media-cdn.tripadvisor.com/media/photo-p/0d/6a/88/9b/photo3jpg.jpg',
    image3: 'https://cdn.pergidulu.com/wp-content/uploads/2016/09/Teleskop-Ganda-Zeiss.jpg',
  ),
  Bandung(
    nama: 'Jalan Asia Afrika',
    location: 'Kota Bandung',
    description: 'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    image: 'https://th.bing.com/th/id/R.c672593f14ae01f6de0dab6608a6c2a7?rik=pJfhtSfJTZldpA&riu=http%3a%2f%2ftherejournal.weebly.com%2fuploads%2f9%2f4%2f1%2f2%2f94121023%2fimg20170217115830_1_orig.jpg&ehk=cy0wSqBa%2fd%2bz0ASzVjm%2fyAZuZeq4zsMYvwaiUIBLDEc%3d&risl=&pid=ImgRaw&r=0',
    image1: 'https://media-cdn.tripadvisor.com/media/photo-o/0d/c2/e7/e6/quotes-kota-bandung.jpg',
    image2: 'https://media-cdn.tripadvisor.com/media/photo-w/17/f4/44/01/jalan-asia-afrika.jpg',
    image3: 'https://th.bing.com/th/id/R.87c772ccbb2124001e15288fa778e05e?rik=%2bZCCqBZQYreoww&riu=http%3a%2f%2f2.bp.blogspot.com%2f_YVOUckzLFVI%2fSw895rz-YXI%2fAAAAAAAAAA8%2fjljCH6SomVU%2fw1200-h630-p-k-no-nu%2fmuseum-konferensi-asia-afrika.jpg&ehk=OzczO%2bPmd46SDqS%2bYiBi3j%2fr2csLBOzqYReSFCBDXj8%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
  ),
  Bandung(
    nama: 'Stone Garden',
    location: 'Padalarang',
    description:'Stone Garden atau Taman Batu di Padalarang - Bandung ini adalah nama secara harafiah untuk apa yang akan kita lihat jika berada di sana. Hamparan batu yang artistik membuat kita merasa tidak sedang berada di Bandung, apalagi di Padalarang. Hamparan batu yang dimaksud bukan terhampar begitu saja di atas tanah luas yang menjadi permukaannya. Batu-batu besar yang ukuran pastinya bervariasi tersusun seperti memiliki suatu formasi matematis.',
    openDays: 'Open Everyday',
    openTime: '06:00 - 17:00',
    ticketPrice: 'Rp 3000',
    image: 'https://2.bp.blogspot.com/-wTEtqIE0-ck/VmOpSA45H0I/AAAAAAAAAoU/0xI7plFQqVo/s1600/CIMG9190.JPG',
    image1: 'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
    image2: 'https://media-cdn.tripadvisor.com/media/photo-w/15/68/00/32/stone-garden-citatah.jpg',
    image3: 'https://media-cdn.tripadvisor.com/media/photo-o/0d/a2/cb/05/stone-garden-citatah.jpg',
  ),
  Bandung(
    nama: 'Taman Film Pasopati',
    location: 'Kota Bandung',
    description: 'Menjadi salah satu tempat wisata di Bandung yang favorit, tentu Taman Film ini memiliki fasilitas cukup memadai. Pemberian fasilitas ini memiliki harapan para pengunjung akan merasa nyaman dan tak segan-segan untuk kembali berkunjung terus menerus kesini. Beberapa fasilitas taman yang bisa kamu nikmati diantaranya seperti layar videotron besar berukuran 4×8 untuk memutar berbagai macam pilihan film seperti Film Indonesia, Bollywood, Korea, ataupun Indie Bandung.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/67/d5/51/img-20190505-114502-largejpg.jpg?w=1200&h=-1&s=1',
    image1: 'https://media-cdn.tripadvisor.com/media/photo-o/08/8b/87/50/bandung-movie-park.jpg',
    image2: 'https://media-cdn.tripadvisor.com/media/photo-o/17/67/d5/53/img-20190505-114509-largejpg.jpg',
    image3: 'https://media-cdn.tripadvisor.com/media/photo-w/09/73/33/05/taman-film-pasopati.jpg',
  
  ),
  Bandung(
    nama: 'Museum Geologi',
    location: 'Kota Bandung',
    description: 'Museum Geologi didirikan pada tanggal 16 Mei 1929. Museum ini telah direnovasi dengan dana bantuan dari JICA (Japan International Cooperation Agency). Setelah mengalami renovasi, Museum Geologi dibuka kembali dan diresmikan oleh Wakil Presiden RI, Megawati Soekarnoputri pada tanggal 23 Agustus 2000. Sebagai salah satu monumen bersejarah, museum berada di bawah perlindungan pemerintah dan merupakan peninggalan nasional. Dalam Museum ini, tersimpan dan dikelola materi-materi geologi yang berlimpah, seperti fosil, batuan, mineral. Kesemuanya itu dikumpulkan selama kerja lapangan di Indonesia sejak 1850.',
    openDays: 'Open Saturday - Thursday',
    openTime: '09:00 - 15:30',
    ticketPrice: 'Rp 3000',
    image: 'https://th.bing.com/th/id/R.96e4260ec17ed4661518d5eabbf15680?rik=dLdQqsbClBfcUg&riu=http%3a%2f%2fpujidarmawan.files.wordpress.com%2f2013%2f06%2f2013-03-30-11-48-40.jpg&ehk=mCRi0FvkRGWwDEGZDBIuuNi7GI8thvnVIbRVfFCk3PI%3d&risl=&pid=ImgRaw&r=0',
    image1: 'https://media-cdn.tripadvisor.com/media/photo-w/19/1c/8e/f7/geology-museum.jpg',
    image2: 'https://media-cdn.tripadvisor.com/media/photo-o/11/a7/35/b7/geology-museum.jpg',
    image3: 'https://media-cdn.tripadvisor.com/media/photo-s/1a/55/e0/dc/geology-museum.jpg',
  ),
  Bandung(
    nama: 'Floating Market',
    location: 'Lembang',
    description: 'Tempat wisata ini sepertinya memang ditujukan untuk wisata keluarga di Bandung. Di sini kita bisa menikmati suasana kawasan yang tertata rapi dan alami. Pada awalnya, floating market Lembang tidak begitu luas. Tapi sekarang sudah ekspansi dan memiliki banyak objek menarik baru. Nama floating market ini sepertinya merujuk pada stand tempat jualan makanan yang berada dalam perahu.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Rp 20000',
    image: 'https://th.bing.com/th/id/R.86fff6ad70f00e1e780d2619125f1f90?rik=qFl02ClUgxdz%2fw&riu=http%3a%2f%2fwww.michellefranclee.com%2fwp-content%2fuploads%2f2016%2f06%2fFloating-Market-Lembang.jpg&ehk=YEoIV%2b6t%2fndK3ChvfeSt%2f%2bl9oey2K8H4iUW28CvuDyU%3d&risl=&pid=ImgRaw&r=0',
    image1: 'https://media-cdn.tripadvisor.com/media/photo-o/17/f9/ff/f8/floating-market-bandung.jpg',
    image2: 'https://media-cdn.tripadvisor.com/media/photo-p/1a/86/d3/cd/20200103-125059-largejpg.jpg',
    image3: 'https://media-cdn.tripadvisor.com/media/photo-p/19/ce/b4/9b/img20181224120857-largejpg.jpg',
  ),
  Bandung(
    nama: 'Kawah Putih',
    location: 'Ciwidey',
    description: 'Kawah Putih adalah tempat wisata di Bandung yang paling terkenal. Berlokasi di Ciwidey, Jawa Barat, kurang lebih sekitar 50 KM arah selatan kota Bandung, Kawah Putih adalah sebuah danau yang terbentuk akibat dari letusan Gunung Patuha. Sesuai dengan namanya, tanah yang ada di kawasan ini berwarna putih akibat dari pencampuran unsur belerang.',
    openDays: 'Open Everyday',
    openTime: '07:00 - 17:00',
    ticketPrice: 'Rp 15000',
    image: 'https://th.bing.com/th/id/R.e0618e128f203a82b1b305ae2c1e18b8?rik=%2fqqFxE6iCQPCnw&riu=http%3a%2f%2f1.bp.blogspot.com%2f-c6_VrTKDgEY%2fTVym1IPyBbI%2fAAAAAAAAAJQ%2fmJsg0-dsoOw%2fs1600%2fDSC_1073.JPG&ehk=ByEF6nA9sz3y2hQVmLIHPPlzyJ1PioTHrA3xZOiL36c%3d&risl=&pid=ImgRaw&r=0',
    image1: 'https://media-cdn.tripadvisor.com/media/photo-o/0b/6e/7c/ce/rocks-sticking-out-of.jpg',
    image2: 'https://media-cdn.tripadvisor.com/media/photo-p/0b/35/30/14/white-crater.jpg',
    image3: 'https://media-cdn.tripadvisor.com/media/photo-o/0a/8b/9a/79/2945-t00572-www-initempatwisat.jpg',
  ),
  Bandung(
    nama: 'Ranca Upas',
    location: 'Ciwidey',
    description: 'Ranca Upas Ciwidey adalah kawasan bumi perkemahan di bawah pengelolaan perhutani. Tempat ini berada di kawasan wisata Bandung Selatan, satu lokasi dengan kawah putih, kolam Cimanggu dan situ Patenggang. Banyak hal yang bisa dilakukan di kawasan wisata ini, seperti berkemah, berinteraksi dengan rusa, sampai bermain di water park dan mandi air panas.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp 20000',
    image: 'https://blog.tripcetera.com/id/wp-content/uploads/2021/01/Ranca-Upas-Bandung-Rusa-scaled.jpg',
    image1: 'https://media-cdn.tripadvisor.com/media/photo-o/1a/e0/7f/9c/kampung-cai-ranca-upas.jpg',
    image2: 'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/2f/87/ranca-upas.jpg',
    image3: 'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/27/0a/ranca-upas.jpg',
  ),
];
      