<!DOCTYPE html>
<?php
$conn = mysqli_connect("localhost", "root", "", "ponpes");
if (!$conn) {
  die("Gagal terhubung dengan database: " . mysqli_connect_error());
}
?>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Ponpes AL-IKHLAS</title>
  <link rel="stylesheet" href="./css/styles.css" />
</head>

<body>
  <header id="head">
    <div class="header-container">
      <div class="contact-info">
        <img id="logo_kecil" src="./img/logo.png" alt="">
      </div>
      <nav>
        <ul>
          <li><a href="#">Home</a></li>
          <li class="dropdown">
            <a href="#">Profile</a>
            <ul class="dropdown-content">
              <li><a href="./page/Profile.html">Profile Pesantren</a></li>
              <li><a href="./page/Sejarah.html">Sejarah</a></li>
              <li><a href="./page/Biodata Pendiri.html">Biodata Pendiri</a></li>
            </ul>
          </li>
          <li class="dropdown">
            <a href="#">Pendidikan</a>
            <ul class="dropdown-content">
              <li><a href="./page/BTQI.html">BTQI</a></li>
              <li><a href="./page/mahad.html">Profile Mahad Aly</a></li>
            </ul>
          </li>
          <li class="dropdown">
            <a href="./page/Galeri.html">Gallery</a>
          </li>
          <li class="dropdown">
            <a href="./page/hubungi kami.html">Kontak</a>
          </li>
        </ul>
      </nav>
    </div>
  </header>

  <main>
    <section class="hero">
      <h1>PONPES AL-IKHLAS</h1>
      <h2>KOTA JOMBANG</h2>
    </section>

    <section class="info">
      <div class="info-item">
        <h2>
          <?php
          $sql = "SELECT COUNT(`idSantri`) AS total FROM `santri`";
          $result = mysqli_query($conn, $sql);
          $row = $result->fetch_assoc();
          echo $row['total'];
          ?>
        </h2>
        <p>Santri</p>
      </div>
      <div class="info-item">
        <h2>
          <?php
          $sql = "SELECT COUNT(`idUstad`) AS total FROM `ustad`";
          $result = mysqli_query($conn, $sql);
          $row = $result->fetch_assoc();
          echo $row['total'];
          ?>
        </h2>
        <p>Ustadz</p>
      </div>
      <div class="info-item">
        <h2>
          <?php
          $sql = "SELECT COUNT(`idUstadzah`) AS total FROM `ustadzah`";
          $result = mysqli_query($conn, $sql);
          $row = $result->fetch_assoc();
          echo $row['total'];
          ?>
        </h2>
        <p>Ustadzah</p>
      </div>
    </section>

    <section class="team">
      <div class="team-member">
        <img src="./img/raja88.jpeg" alt="Pimpinan Ponpes" />
        <h3>Pimpinan Ponpes</h3>
        <p>KH. Brahma Fa'iq Mahdewa, M.Ag</p>
      </div>
      <div class="team-member">
        <img src="./img/wakil.jpg" alt="Wakil Pimpinan Ponpes" />
        <h3>Wakil Pimpinan Ponpes</h3>
        <p>Adinda Putri permatasari, S.Ag</p>
      </div>
      <div class="team-member">
        <img src="./img/sekertaris.jpg" alt="Sekertaris" />
        <h3>Sekertaris</h3>
        <p>Tania Herlina, S.Ag</p>
      </div>
      <div class="team-member">
        <img src="./img/bendahara.jpg" alt="Bendahara" />
        <h3>Bendahara</h3>
        <p>Ayunda Dahlia Permata, S.Ag</p>
      </div>
    </section>

    <section class="news">
      <h2>Berita terkini</h2>
      <div class="news-container">
        <div class="news-item">
          <img src="./img/berita 1.jpg" alt="Berita 1" class="news-image" />
          <p>Dokumentasi Pengajian</p>
        </div>
        <div class="news-item">
          <img src="./img/dokumentasi santri mengajar.jpg" alt="Berita 2" class="news-image" />
          <p>Dokumentasi Santri Mengajar</p>
        </div>
        <div class="news-item">
          <img src="./img/dokumentasi lomba mengaji.jpg" alt="Berita 3" class="news-image" />
          <p>Dokumentasi Hari Santri Nasional</p>
        </div>
        <div class="news-item">
          <img src="./img/dokumentasi kajian ahad.jpg" alt="Berita 4" class="news-image" />
          <p>Dokumentasi Kajian Ahad</p>
        </div>
      </div>
    </section>

    <section id="event" class="news">
      <h2>Event</h2>
      <div class="galeri-container">

        <div class="galeri-item">
          <img src="./img/pengajian.jpg" alt="Berita 1" class="galeri-image" />
          <div>
            <p>Hadirilah Pengajian Ahad Pagi Oleh Ustadz Nur Kholid Syaifullah Bertema: Puasa Sunnah.</p>
            <div class="daftar">
              <a href="./page/daftarevent.php?id=1"><button class="button-event">Daftar</button></a>
              <div class="terdaftar">
                <?php
                $sql = "SELECT COUNT(`id_terdaftar`) AS jumlah FROM `peserta_terdaftar` WHERE `id_event` = 1;";
                $result = mysqli_query($conn, $sql);
                $row = $result->fetch_assoc();
                echo "<p>" . $row['jumlah'] . "</p>";
                ?>
                <p>Peserta Terdaftar</p>
              </div>
            </div>
          </div>
        </div>

        <div class="galeri-item">
          <img src="./img/santri mengajar.jpg" alt="Berita 2" class="galeri-image" />
          <div>
            <p>Daftarkan diri anda untuk mengikuti Santri Mengajar Tazkia Dakwah Center.. Jangan Sampai ketinggalan yaa!!</p>
            <div class="daftar">
              <a href="./page/daftarevent.php?id=2"><button class="button-event">Daftar</button></a>
              <div class="terdaftar">
                <?php
                $sql = "SELECT COUNT(`id_terdaftar`) AS jumlah FROM `peserta_terdaftar` WHERE `id_event` = 2;";
                $result = mysqli_query($conn, $sql);
                $row = $result->fetch_assoc();
                echo "<p>" . $row['jumlah'] . "</p>";
                ?>
                <p>Peserta Terdaftar</p>
              </div>
            </div>
          </div>
        </div>

        <div class="galeri-item">
          <img src="./img/hari santri.jpg" alt="Berita 3" class="galeri-image" />
          <div>
            <p>Memperingati hari santri nasional. Daftarkan diri anda untuk mengikuti lomba mengaji santri dan santriwati ponpes al-ikhlas.</p>
            <div class="daftar">
              <a href="./page/daftarevent.php?id=3"><button class="button-event">Daftar</button></a>
              <div class="terdaftar">
                <?php
                $sql = "SELECT COUNT(`id_terdaftar`) AS jumlah FROM `peserta_terdaftar` WHERE `id_event` = 3;";
                $result = mysqli_query($conn, $sql);
                $row = $result->fetch_assoc();
                echo "<p>" . $row['jumlah'] . "</p>";
                ?>
                <p>Peserta Terdaftar</p>
              </div>
            </div>
          </div>
        </div>

        <div class="galeri-item">
          <img src="./img/Kajian ahad.jpg" alt="Berita 4" class="galeri-image" />
          <div>
            <p>Hadirilah kajian ahad pagi oleh ustadz Bachtiar Dwi Kurniawan, MPA (free snack).</p>
            <div class="daftar">
              <a href="./page/daftarevent.php?id=4"><button class="button-event">Daftar</button></a>
              <div class="terdaftar">
                <?php
                $sql = "SELECT COUNT(`id_terdaftar`) AS jumlah FROM `peserta_terdaftar` WHERE `id_event` = 4;";
                $result = mysqli_query($conn, $sql);
                $row = $result->fetch_assoc();
                echo "<p>" . $row['jumlah'] . "</p>";
                ?>
                <p>Peserta Terdaftar</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="quote">
      <img src="./img/Santri pondok pesantren.jpg" alt="Background Image" class="quote-background" />
      <div class="quote-content">
        <img src="./img/raja88.jpeg" alt="Pimpinan Ponpes" class="quote-image" />
        <h3>KH. Brahma Fa'iq Mahdewa, M.Ag</h3>
        <p>
          "Sepandai-pandai tupai melompat, tetap akhirnya dia menjadi milik
          orang lain"
        </p>
      </div>
    </section>
  </main>

  <footer>
    <div class="footer-container">

      <div class="footer-section">
        <h3>PONPES AL-IKHLAS<br />KOTA JOMBANG</h3>
        <p>
          Pondok pesantren Al-Ikhlas adalah lembaga pendidikan dengan layanan
          program Tahfidzul Quran, Madrasah, SMP, dan SMK.
        </p>
      </div>

      <div class="footer-section">
        <h3>Informasi kami</h3>
        <ul>
          <li><a href="./page/Tentang Kami.html">Tentang kami</a></li>
          <li><a href="./page/hubungi kami.html">Hubungi kami</a></li>
          <li><a href="./page/Kebijakan.html">Kebijakan privasi</a></li>
        </ul>
      </div>

      <div class="footer-section">
        <h3>Alamat kami</h3>
        <p>Jalan Pemuda no 10<br />Kota Jombang, Jawa Timur</p>
        <div class="social-media">
          <a href="#" class="social-icon"><img src="./img/wig.png" alt="Instagram" /></a>
          <a href="#" class="social-icon"><img src="./img/wfb.png" alt="Facebook" /></a>
          <a href="#" class="social-icon"><img src="./img/wx.png" alt="Twitter" /></a>
          <a href="mailto:info@ponpesal-ikhlas.com" class="social-icon"><img src="./img/wemail.png" alt="Email" /></a>
        </div>
      </div>
    </div>
  </footer>

  <script>
    window.addEventListener('scroll', function() {
      const header = document.getElementById('head');
      const scrollNow = window.pageYOffset;

      if (scrollNow > 0) {
        header.style.backgroundColor = '#00000080';
      } else {
        header.style.backgroundColor = '#0000';
      }
    })
  </script>

</body>

</html>