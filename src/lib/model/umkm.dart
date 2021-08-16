class Umkm {
  late String nama_umkm;
  late String alamat;
  late String image_url;
  late String no_telp;
  late String daerah;
  late String kategori;
  late String url_lokasi;
  late String url_maps;

  Umkm(
      {required this.nama_umkm,
        required this.alamat,
        required this.image_url,
        required this.no_telp,
        required this.daerah,
        required this.kategori,
        required this.url_lokasi,
        required this.url_maps});
}

var umkm_list = [
  Umkm(
      nama_umkm: "Dash Woman's Outfit",
      alamat: "Jl.P & K Gg. Pisangan",
      image_url:
      "https://sc01.alicdn.com/kf/HTB1uGjyeljTBKNjSZFuq6z0HFXaG/202439437/HTB1uGjyeljTBKNjSZFuq6z0HFXaG.jpg",
      no_telp: "081977453250",
      daerah: "jakarta selatan",
      kategori: "Barang",
      url_lokasi: "https://www.tokopedia.com/4tuna",
      url_maps: "https://g.page/pipearly?share"),
  Umkm(
      nama_umkm: "Toko Batu Alam Raden",
      alamat: "Jl.Kemang Pratama Raya",
      image_url:
      "https://lh3.googleusercontent.com/p/AF1QipPYmvXqVgskSYIBtxmkdH99GB1nPF8oCzsztkBf=s1280-p-no-v1",
      no_telp: "081397452633",
      daerah: "kota bekasi",
      kategori: "Barang",
      url_lokasi: "https://www.tokopedia.com/grosirbatualam",
      url_maps: "https://goo.gl/maps/3TvPmDeKaUevWJFdA"),
  Umkm(
      nama_umkm: "Toko Krey Ling",
      alamat: "Jl.Hasyim Ashari",
      image_url:
      "https://awningjayalana.com/wp-content/uploads/2018/11/canopy-kain-1-394x258.png",
      no_telp: "081634562480",
      daerah: "jakarta pusat",
      kategori: "Barang",
      url_lokasi:
      "https://shopee.co.id/yuliyah_09?categoryId=100636&itemId=8308897127",
      url_maps: "https://g.page/SumberKaryaKreyManggaraiUtara?share"),
  Umkm(
      nama_umkm: "Ayam Geprek Pedas",
      alamat: "Jl.Sonton 100",
      image_url:
      "http://kbu-cdn.com/dk/wp-content/uploads/tahu-crispy-geprek.jpg",
      no_telp: "081426557899",
      daerah: "jakarta selatan",
      kategori: "Makanan",
      url_lokasi:
      "https://food.grab.com/id/en/restaurant/ayam-geprek-omema-tebet-delivery/6-CZLENBBFVECKGA",
      url_maps: "https://goo.gl/maps/QcXm3VF397RcaEMcA"),
  Umkm(
      nama_umkm: "Bakti Raya Cetak",
      alamat: "Jl.Ciputat Raya (Depan Stasiun Kebayoran Lama)",
      image_url:
      "https://iqbalazhari.com/wp-content/uploads/2016/10/peluang-usaha-toko-percetakan.jpg",
      no_telp: "081645224788",
      daerah: "jakarta selatan",
      kategori: "Barang",
      url_lokasi: "https://www.tokopedia.com/imindopedia",
      url_maps: "https://goo.gl/maps/EeSH9szS9nR9hK2D9"),
  Umkm(
      nama_umkm: "Romy Mebel",
      alamat: "Jl.Pondok Pinang Raya",
      image_url:
      "https://www.serbabandung.com/wp-content/uploads/2016/02/Toko-Mebel-Jati-Mulya.jpg",
      no_telp: "081654228799",
      daerah: "jakarta selatan",
      kategori: "Barang",
      url_lokasi: "https://www.tokopedia.com/bezatishfurniture",
      url_maps: "https://goo.gl/maps/vRBaLNSqLdvLZ81XA"),
  Umkm(
      nama_umkm: "Aneka Masakan Tempe Bu Ani",
      alamat: "Jl.Utan Panjang",
      image_url:
      "https://cdn.idntimes.com/content-images/community/2021/01/fromandroid-e578c77e38210897194db9cd8510663b.jpg",
      no_telp: "081276945730",
      daerah: "jakarta pusat",
      kategori: "Makanan",
      url_lokasi:
      "https://food.grab.com/id/en/restaurant/mendoan-yushi-harapan-mulya-delivery/6-C2ACNBW1EU2YJX",
      url_maps: "https://goo.gl/maps/MJuYgUBGkna1N11W6"),
  Umkm(
      nama_umkm: "Tempe Bacem Jakarta",
      alamat: "Jl.Irian",
      image_url:
      "https://doyanresep.com/wp-content/uploads/2020/06/resep-tempe-bacem.jpg",
      no_telp: "081765248766",
      daerah: "jakarta pusat",
      kategori: "Makanan",
      url_lokasi:
      "https://food.grab.com/id/en/restaurant/gudeg-jogja-mbak-anung-kemayoran-delivery/6-CZDZJJXFJ6UZA6",
      url_maps: "https://g.page/gudeg-adem-ayem?share"),
  Umkm(
      nama_umkm: "Pusat Celana Ammi",
      alamat: "Jl.Letjen Suprapto",
      image_url:
      "http://asset-a.grid.id/crop/0x0:0x0/x/photo/2019/01/23/1368966398.jpg",
      no_telp: "081423668799",
      daerah: "jakarta pusat",
      kategori: "Barang",
      url_lokasi: "https://www.tokopedia.com/pakaianmurah92",
      url_maps: "https://goo.gl/maps/h7NjLmTHjf273MfH8"),
  Umkm(
      nama_umkm: "Konveksi Bu Adi",
      alamat: "Jl.Serdang Kemayoran",
      image_url:
      "https://alamatjalan.com/wp-content/uploads/2018/12/Toko-Harapan-Makassar-Toko-Kain-dan-Perlengpan-Menjahit-min.jpg",
      no_telp: "081945772877",
      daerah: "jakarta pusat",
      kategori: "Barang",
      url_lokasi:
      "https://shopee.co.id/roditex?categoryId=100017&itemId=6959923838",
      url_maps: "https://goo.gl/maps/JhocwD56u1VfgmLq6"),
  Umkm(
      nama_umkm: "YourShoes",
      alamat: "Jl.Kemayoran",
      image_url:
      "https://i2.wp.com/www.artforia.com/wp-content/uploads/2019/08/worm-tokyo-in-store.jpg?ssl=1",
      no_telp: "081745367855",
      daerah: "jakarta pusat",
      kategori: "Barang",
      url_lokasi:
      "https://shopee.co.id/wcf6xbamlq?categoryId=100532&itemId=9023474264",
      url_maps: "https://goo.gl/maps/67FPxVxAwC9ii4PP7"),
  Umkm(
      nama_umkm: "Warung Ayam Bakar Adi",
      alamat: "Jl.Mampang Prapatan 7",
      image_url:
      "https://selerasa.com/wp-content/uploads/2015/12/images_daging_ayam-panggang-bumbu-spesial.jpg",
      no_telp: "081465884622",
      daerah: "jakarta selatan",
      kategori: "Makanan",
      url_lokasi:
      "https://food.grab.com/id/en/restaurant/ayam-bakar-rizki-abr-mampang-mampang-prapatan-delivery/6-CZBVGCC2GB4HJE",
      url_maps: "https://goo.gl/maps/6Q1kq16bHZYB5XLg9"),
  Umkm(
      nama_umkm: "Kopi Seberang Kota",
      alamat: "Jl.Warung Buncit III",
      image_url:
      "https://majalah.ottencoffee.co.id/wp-content/uploads/2016/11/kedai-kopi.jpg",
      no_telp: "081478994500",
      daerah: "jakarta selatan",
      kategori: "Minuman",
      url_lokasi:
      "https://food.grab.com/id/en/restaurant/kopi-koup-tebet-timur-delivery/6-CZLJPEJUEA3ENE",
      url_maps: "https://goo.gl/maps/uoLUnMwHjvzHEpNNA"),
  Umkm(
      nama_umkm: "Kids Friendly",
      alamat: "Jl.UPT Kalibata Pulo",
      image_url:
      "https://www.birdsnbees.co.id/blog/wp-content/uploads/2020/07/Toko-Jual-Baju-Anak-dan-Bayi-011.jpg",
      no_telp: "081645448755",
      daerah: "jakarta selatan",
      kategori: "Barang",
      url_lokasi: "https://www.tokopedia.com/mon-cheri-id",
      url_maps: "https://goo.gl/maps/5bB7tiQ9f971rx668"),
  Umkm(
      nama_umkm: "Umar Peci Jakarta",
      alamat: "Jl.H. Buang No.25",
      image_url:
      "https://cdn-2.tstatic.net/wartakota/foto/bank/images/20180528berita-foto-pedagang-kopiah-tanah-abang-mendulang-untung1_20180528_170408.jpg",
      no_telp: "083547229688",
      daerah: "jakarta selatan",
      kategori: "Barang",
      url_lokasi: "https://www.tokopedia.com/anekakoko",
      url_maps: "https://goo.gl/maps/ahVnaH3d5VNWbKby9"),
  Umkm(
      nama_umkm: "TasMu",
      alamat: "Jl.Bumi Raya",
      image_url:
      "https://cf.shopee.co.id/file/2b28b278a0a4e34348f4323f8faf848f",
      no_telp: "081176220866",
      daerah: "jakarta timur",
      kategori: "Barang",
      url_lokasi:
      "https://shopee.co.id/dnv.store?categoryId=100016&itemId=7650213155",
      url_maps: "https://goo.gl/maps/ia3ATyu3JS4KgxCh7"),
  Umkm(
      nama_umkm: "Art of Binder",
      alamat: "Jl.Tanah Rendah Kebon Pala 1",
      image_url:
      "https://cf.shopee.co.id/file/0500e8d46c0b9a4d0cb2f166db00b8cb_tn",
      no_telp: "081723997644",
      daerah: "jakarta timur",
      kategori: "Barang",
      url_lokasi:
      "https://shopee.co.id/artistik_pro?categoryId=100638&itemId=3519469567",
      url_maps: "https://goo.gl/maps/NwwSeLCvR4rBHu456"),
  Umkm(
      nama_umkm: "FunPlay Store",
      alamat: "Jl.Sunter Jaya",
      image_url:
      "https://cf.shopee.co.id/file/4150b8ecc8b19ea3e3ac2c47e3845ef9",
      no_telp: "081722445674",
      daerah: "jakarta utara",
      kategori: "Barang",
      url_lokasi:
      "https://shopee.co.id/animeyu.case?categoryId=100639&itemId=10512039914",
      url_maps: "https://goo.gl/maps/QtEf2Y1Cmm3Rj3oK7"),
  Umkm(
      nama_umkm: "Your Bakery",
      alamat: "Jl.Rajawati Barat",
      image_url:
      "https://cf.shopee.co.id/file/73ac17276df825ef5c3dbe1e417ecf9b_tn",
      no_telp: "081379664933",
      daerah: "jakarta selatan",
      kategori: "Makanan",
      url_lokasi: "https://www.tokopedia.com/honeybearbakery",
      url_maps: "https://goo.gl/maps/thutzqFdKq6a8EDK6"),
  Umkm(
      nama_umkm: "BajuCeweNih!",
      alamat: "Jl.Gg. H . Mas'yud",
      image_url: "https://sc04.alicdn.com/kf/HTB1iX85jvxNTKJjy0Fjq6x6yVXaM.jpg",
      no_telp: "081255463820",
      daerah: "jakarta selatan",
      kategori: "Barang",
      url_lokasi:
      "https://shopee.co.id/kamyno?categoryId=100017&itemId=4655049912",
      url_maps: "https://goo.gl/maps/HVnoYweKQFtrcFdG9")
];

final List<String> kategori = [
  'Semua',
  'Makanan',
  'Barang',
  'Minuman',
  'Kebutuhan',
];

class DataDiri {
  late String nama;
  late String email;
  late String password;
  late String panggilan;
  late String alamat;
  late String url_gambar;

  DataDiri({
    required this.nama,
    required this.email,
    required this.password,
    required this.panggilan,
    required this.alamat,
    required this.url_gambar

});

}

var ListData = [
  DataDiri(
    nama: 'Muhammad Fajar Ramadhan',
    panggilan: 'Fajar',
    email: 'mfajar801@gmail.com',
    password: '12345678',
    alamat: 'Jl. Bumi Blok C No 5',
    url_gambar: 'https://instagram.fcgk27-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/203963521_128736499290136_6910394464548703333_n.jpg?_nc_ht=instagram.fcgk27-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=UPhesJLxDNoAX_TI3V0&tn=NelJxPz2EtxBc2Bf&edm=AP_V10EBAAAA&ccb=7-4&oh=d8e6eb2a48705f705854d9cf50d56b59&oe=611FB070&_nc_sid=4f375e'
  ),
  DataDiri(
    nama: 'Alifiya Brizita',
    panggilan: 'Fiya',
    email: 'fiya@gmail.com',
    password: '12345678',
    alamat: 'Jl. Makmur Jaya No. 10',
    url_gambar: 'https://instagram.fcgk27-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/202100864_492805195126222_7584442575286854749_n.jpg?_nc_ht=instagram.fcgk27-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=FFVqapzfEIgAX9POMpO&tn=NelJxPz2EtxBc2Bf&edm=AP_V10EBAAAA&ccb=7-4&oh=22a44ed13570bd758656abf078bb6256&oe=611FD9FE&_nc_sid=4f375e'
  ),
  DataDiri(
      nama: 'Divya Maharani Lazuardi',
      email: 'divya@gmail.com',
      password: '12345678',
      panggilan: 'Divya',
      alamat: 'Jl. Menuntun Masa Depan Kamu No. 10',
      url_gambar: 'https://instagram.fcgk27-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/203136748_503033447594909_5810528733973240112_n.jpg?_nc_ht=instagram.fcgk27-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=0PXL1OBgmPIAX9rHiYj&tn=NelJxPz2EtxBc2Bf&edm=AP_V10EBAAAA&ccb=7-4&oh=6229dd870c8765be3b6f0de959893eaa&oe=61209467&_nc_sid=4f375e'),
  DataDiri(
    nama: 'xxxxxxxx',
    panggilan: 'xxxxxxxx',
    email: 'xxxxxxxxx',
    password: 'xxxxxxxxx',
    alamat: 'xxxxxxxx',
    url_gambar: 'https://instagram.fcgk27-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/203136748_503033447594909_5810528733973240112_n.jpg?_nc_ht=instagram.fcgk27-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=0PXL1OBgmPIAX9rHiYj&tn=NelJxPz2EtxBc2Bf&edm=AP_V10EBAAAA&ccb=7-4&oh=6229dd870c8765be3b6f0de959893eaa&oe=61209467&_nc_sid=4f375e'
  )
];