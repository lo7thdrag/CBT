unit uDataType;

{
  Place all user data types here
  Naming Convention :
    Constanta  C_XxxXxx  : C_MyConst = 20;
    User Type  T_XxxXxx  : T_UserType = procedure(Sender : TObject) of TObject;
    Enum       E_XxxXxx  : E_MyEnum = (meMine, meYours);
    Record     R_XxxXxx  : R_MyRecord = record
}

interface

const
  {$REGION ' Random alfabet '}
  C_ABJAD_ID : array [0..27] of string = ('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
                                           'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'numeral', 'spasi');
  C_ABJAD_RND1 : array [0..27] of string = ('spasi', 'q', 'r', 's', 'v', 't', 'o', 'z', 'w', 'x', 'numeral', 'a', 'y', 'u', 'g', 'd',
                                           'b', 'c', 'p', 'f', 'n', 'e', 'i', 'j', 'm', 'h', 'k', 'l');
  C_ABJAD_RND2 : array [0..27] of string = ('h', 'v', 's', 'x', 'numeral', 'u', 'w', 'a', 'z', 'r', 'spasi', 'o', 'y', 'q', 'l', 'b',
                                           'n', 'j', 'c', 't', 'f', 'p', 'g', 'd', 'm', 'i', 'e', 'k');
  C_ABJAD_RND3 : array [0..27] of string = ('r', 't', 'numeral', 'v', 'y', 'q', 'j', 'p', 'z', 'g', 'k', 'l', 'h', 'n', 'u', 'm',
                                           'numeral', 'a', 'x', 'i', 'w', 'd', 'o', 's', 'e', 'b', 'c', 'f');
  C_ABJAD_RND4 : array [0..27] of string = ('s', 'w', 'r', 'x', 't', 'g', 'm', 'k', 'y', 'spasi', 'd', 'l', 'f', 'p', 'i', 'z',
                                           'numeral', 'u', 'a', 'v', 'c', 'e', 'b', 'h', 'o', 'n', 'q', 'j');
  C_ABJAD_RND5 : array [0..27] of string = ('f', 'r', 'spasi', 't', 'm', 'numeral', 'e', 'o', 'b', 'c', 'y', 'h', 'g', 'v', 'p', 'l',
                                           'q', 'i', 's', 'z', 'u', 'x', 'w', 'n', 'k', 'd', 'a', 'j');
  {$ENDREGION}

  {$region ' Soal-Soal mode Easy '}
  C_EASY1 : array [0..9] of string = ('Bunga', 'Layar', 'Rambu', 'Tenda', 'Laris', 'Surat', 'Koran', 'Minum', 'Lemak', 'Sinar');
  C_EASY2 : array [0..9] of string = ('Lapar', 'Rumah', 'Pisau', 'Pulau', 'Belut', 'Badan', 'Senin', 'Tanah', 'Datar', 'Pedas');
  C_EASY3 : array [0..9] of string = ('Kunci', 'Kanan', 'Merah', 'Udang', 'Tenis', 'Petik', 'Ganas', 'Sakit', 'Terik', 'Luwes');
  C_EASY4 : array [0..9] of string = ('Hadir', 'Tenar', 'Balap', 'Kawat', 'Pikir', 'Indah', 'Rapat', 'Pasar', 'Lautan', 'Nisan');
  C_EASY5 : array [0..9] of string = ('Kipas', 'Sinar', 'Tiket', 'Sopan', 'Keras', 'Sepak', 'Sayur', 'Bakar', 'Goyah', 'Udara');
  C_EASY6 : array [0..9] of string = ('Cegah', 'Nyala', 'Batok', 'Dukun', 'Gagal', 'Butuh', 'Koyak', 'Jarak', 'Tebar', 'Gulat');
  C_EASY7 : array [0..9] of string = ('Lapis', 'Tutur', 'Hutan', 'Nyeri', 'Jemur', 'Perih', 'Tarik', 'Tobat', 'Sadar', 'Kalah');
  C_EASY8 : array [0..9] of string = ('Akhir', 'Pajak', 'Jeruk', 'Tepis', 'Tepat', 'Beras', 'Gores', 'Mandi', 'Hitam', 'Cinta');
  C_EASY9 : array [0..9] of string = ('Catut', 'Retak', 'Takut', 'Lekuk', 'Kukuh', 'Gigit', 'Sayap', 'Sorot', 'Merdu', 'Pilih');
  C_EASY10 : array [0..9] of string = ('Bajai', 'Kabur', 'Kawat', 'Sikat', 'Mimpi', 'Gerah', 'Rindu', 'Keras', 'Legam', 'Kerja');
  {$ENDREGION}

  {$region ' Soal-Soal mode Normal '}
  C_NORMAL1 : array [0..9] of string = ('saya lapar', 'kirim uang', 'minum susu', 'tenda biru', 'jalan kaki', 'suka minum', 'koran lama', 'minum susu', 'jari manis', 'rasa pedas');
  C_NORMAL2 : array [0..9] of string = ('tidur pagi', 'ambil lima', 'lima pisau', 'pulau alor', 'bawah meja', 'pulau rote', 'gula manis', 'kaca hitam', 'rindu ayah', 'banda aceh');
  C_NORMAL3 : array [0..9] of string = ('teman lama', 'ambil satu', 'merah muda', 'lima pisau', 'saya lapar', 'bola tenis', 'pulau alor', 'kopi pahit', 'empat apel', 'cinta anak');
  C_NORMAL4 : array [0..9] of string = ('pasar jauh', 'cium bunda', 'teman lama', 'kawat besi', 'pikir dulu', 'gagal lagi', 'butuh kamu', 'ambil lima', 'pasar baru', 'rasa pedas');
  C_NORMAL5 : array [0..9] of string = ('duduk sini', 'cabut tela', 'tiket kamu', 'kamu sopan', 'batu keras', 'sepak bola', 'pasar raya', 'bakar ikan', 'tidak ikut', 'minum kopi');
  C_NORMAL6 : array [0..9] of string = ('jalan kaki', 'pukul tiga', 'sayang dia', 'cinta anak', 'gagal mulu', 'butuh kamu', 'jarak jauh', 'kawat besi', 'suka gulat', 'bola tenis');
  C_NORMAL7 : array [0..9] of string = ('lihat mata', 'tarik ulur', 'hutan riau', 'nyeri kaki', 'jemur baju', 'jamur enak', 'tarik tali', 'saya tobat', 'sadar diri', 'kamu kalah');
  C_NORMAL8  : array [0..9] of string = ('lihat saya', 'tidur pagi', 'jeruk cina', 'sawi hijau', 'kuda putih', 'Beras enak', 'pulau rote', 'mandi lama', 'gagal lagi', 'tidak akan');
  C_NORMAL9 : array [0..9] of string = ('bakar ikan', 'kaca retak', 'takut lama', 'lima pisau', 'bawah meja', 'sakit gigi', 'rindu ayah', 'sorot mata', 'bola tenis', 'pikir dulu');
  C_NORMAL10 : array [0..9] of string = ('lebih lama', 'cium bunda', 'kawat besi', 'sikat gigi', 'rindu ayah', 'pasar daya', 'jaket baru', 'keras batu', 'mata indah', 'sayang ibu');
  {$ENDREGION}

  {$region ' Soal-Soal mode Normal '}
  C_HARD1 : array [0..9] of string = ('bayam dan tomat', 'layar kaca kita', 'kanan kiri saya', 'jika kamu lihat', 'tenda saya rapi', 'gigi putih saya', 'batu batu berat', 'takut akan ular', 'jalan panjangku', 'dengan doa saya');
  C_HARD2 : array [0..9] of string = ('sungai bengawan', 'aku tidur malam', 'lihat saya baik', 'tenda saya rapi', 'lihat sawah itu', 'badan saya kuat', 'bantu saya dulu', 'tanah ayah saya', 'jajan kaki lima', 'makanan pedasku');
  C_HARD3 : array [0..9] of string = ('lupa bawa kunci', 'kanan kiri saya', 'roti merah muda', 'gagal coba lagi', 'teknis perangku', 'petik buah apel', 'hari hari indah', 'panen ubi manis', 'sikap baik kamu', 'cari cari lawan');
  C_HARD4 : array [0..9] of string = ('hadir merayakan', 'bola besar saya', 'kemenangan kami', 'lupa bawa kunci', 'pikir panjangku', 'panen ubi manis', 'cari cari teman', 'pagi pagi indah', 'katamu dia baik', 'saya cari cari');
  C_HARD5 : array [0..9] of string = ('beras raja lele', 'bola kecil kamu', 'sepak bola kami', 'keras kepalanya', 'batu batu keras', 'sayur sawi mama', 'pahlawan negara', 'masak teri nasi', 'jalan kaki pagi', 'minggu paginya');

  C_HARD6 : array [0..9] of string = ('surabaya makmur', 'gagal coba lagi', 'bayam dan tomat', 'roti merah muda', 'nyeri kaki saya', 'jalan panjangku', 'cuaca yang baik', 'rapat guru guru', 'tanah ayah saya', 'bantu saya dulu');
  C_HARD7 : array [0..9] of string = ('tni bela negara', 'hidup mati saya', 'strategi perang', 'nyeri kaki saya', 'saya jemur baju', 'surabaya makmur', 'tarik ulur tali', 'badan saya kaku', 'kemenangan kami', 'kalah lagi saya');
  C_HARD8 : array [0..9] of string = ('pos jaga markas', 'jika kamu lihat', 'petai cina saya', 'tempatnya indah', 'jajan kaki lima', 'rapat guru guru', 'lomba lari lari', 'mandi pagi hari', 'makan ikan laut', 'kami cinta mama');
  C_HARD9 : array [0..9] of string = ('strategi perang', 'rindu mama saya', 'takut akan ular', 'lekuk kaki saya', 'mimpi tingginya', 'hewan baik baik', 'lari lari malam', 'pilih baju baru', 'kerja pagi lagi', 'pilih lauk ayam');
  C_HARD10 : array [0..9] of string = ('kemenangan kami', 'lihat saya baik', 'lupa bawa kunci', 'gigi putih saya', 'panjang jalanku', 'cuaca yang baik', 'sikap baik kamu', 'hidup saya atur', 'masak teri nasi', 'saya cari cari');
  {$ENDREGION}

  function GetQuestion(const exerciseMode, randomValue, nomorSoal: Integer): string;

implementation

function GetQuestion(const exerciseMode, randomValue, nomorSoal: Integer): string;
begin
  case exerciseMode of
    0: {Easy}
    begin
      case randomValue of
        1: Result := C_EASY1[nomorSoal];
        2: Result := C_EASY2[nomorSoal];
        3: Result := C_EASY3[nomorSoal];
        4: Result := C_EASY4[nomorSoal];
        5: Result := C_EASY5[nomorSoal];
        6: Result := C_EASY6[nomorSoal];
        7: Result := C_EASY7[nomorSoal];
        8: Result := C_EASY8[nomorSoal];
        9: Result := C_EASY9[nomorSoal];
        10: Result := C_EASY10[nomorSoal];
      end;
    end;
    1: {Normal}
    begin
      case randomValue of
        1: Result := C_NORMAL1[nomorSoal];
        2: Result := C_NORMAL2[nomorSoal];
        3: Result := C_NORMAL3[nomorSoal];
        4: Result := C_NORMAL4[nomorSoal];
        5: Result := C_NORMAL5[nomorSoal];
        6: Result := C_NORMAL6[nomorSoal];
        7: Result := C_NORMAL7[nomorSoal];
        8: Result := C_NORMAL8[nomorSoal];
        9: Result := C_NORMAL9[nomorSoal];
        10: Result := C_NORMAL10[nomorSoal];
      end;
    end;
    2: {Hard}
    begin
      case randomValue of
        1: Result := C_HARD1[nomorSoal];
        2: Result := C_HARD2[nomorSoal];
        3: Result := C_HARD3[nomorSoal];
        4: Result := C_HARD4[nomorSoal];
        5: Result := C_HARD5[nomorSoal];
        6: Result := C_HARD6[nomorSoal];
        7: Result := C_HARD7[nomorSoal];
        8: Result := C_HARD8[nomorSoal];
        9: Result := C_HARD9[nomorSoal];
        10: Result := C_HARD10[nomorSoal];
      end;
    end;
  end;
end;

end.
