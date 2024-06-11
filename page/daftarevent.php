<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Ponpes AL-IKHLAS</title>
  <link rel="stylesheet" href="../css/daftar.css" />
  <link rel="stylesheet" href="../css/header.css" />
</head>

<body>
  <header id="headAbu">
    <div>
      <img src="../img/tag.png" alt="" />
      <h2>PONPES AL-IKHLAS</h2>
    </div>
    <p><a href="../index.php">HOME</a> / DAFTAR EVENT PONPES AL-IKHLAS</p>
  </header>

  <main>
    <section class="hero">
      <h1>PONPES AL-IKHLAS</h1>
      <h2>KOTA JOMBANG</h2>
    </section>

    <?php
    $conn = mysqli_connect("localhost", "root", "", "ponpes");
    if (!$conn) {
      die("Gagal terhubung dengan database: " . mysqli_connect_error());
    }

    if (isset($_POST['data'])) {
      $nama = $_POST['nama'];
      $email = $_POST['email'];
      $telpon = $_POST['telpon'];
      $kelamin = $_POST['kelamin'];
      $idEvent = $_POST['id_event'];

      $sql = "INSERT INTO `peserta_terdaftar`(`id_terdaftar`, `id_event`, `nama`, `email`, `telpon`, `kelamin`) VALUES ('','$idEvent','$nama','$email','$telpon','$kelamin')";

      if ($conn->query($sql) === TRUE) {
        echo "<script>alert('Anda Sudah Terdaftar');window.location.href = '../index.php'</script>";
      } else {
        echo "<script>alert('Pendaftaran anda gagal')</script>";
      }
    }

    if (isset($_GET['id'])) {
      $id = $_GET['id'];
      $sql = "SELECT * FROM `event` WHERE `id_event` = $id";
      $result = mysqli_query($conn, $sql);
      $row = $result->fetch_assoc();
    }
    ?>
    <img src="../img/<?php echo $row['gambar']; ?>" id="banner" alt="" />

    <section class="form-container">
      <h2>Registration Form</h2>
      <form action="#" class="form" id="registrationForm" method="post">
        <input type="text" name="id_event" id="hide" value="<?php echo $_GET['id']; ?>">
        <div class="form-group">
          <label for="nama-lengkap">Nama Lengkap</label>
          <input type="text" id="nama-lengkap" name="nama" placeholder="Masukkan Nama Lengkap" required />
        </div>
        <div class="form-group">
          <label for="email">Alamat Email</label>
          <input type="email" id="email" name="email" placeholder="Masukkan Alamat Email" required />
        </div>
        <div class="form-group">
          <label for="nomor-telepon">Nomor Telpon</label>
          <input type="tel" id="nomor-telepon" name="telpon" placeholder="Masukkan Nomor Telpon" required />
        </div>
        <div class="form-group">
          <label for="tanggal-lahir">Tanggal Lahir</label>
          <input type="date" id="tanggal-lahir" name="tgl" required />
        </div>
        <div class="form-group">
          <label for="suku">Jenis Kelamin</label>
          <div class="radio-group">
            <label><input type="radio" name="kelamin" value="laki" required /> Laki
              - Laki</label>
            <label><input type="radio" name="kelamin" value="perempuan" required />
              Perempuan</label>
          </div>
        </div>
        <div class="form-group">
          <button name="data" type="submit">Submit</button>
        </div>
      </form>
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
          <li><a href="./Tentang Kami.html">Tentang kami</a></li>
          <li><a href="./hubungi kami.html">Hubungi kami</a></li>
          <li><a href="./Kebijakan.html">Kebijakan privasi</a></li>
        </ul>
      </div>
      <div class="footer-section">
        <h3>Alamat kami</h3>
        <p>Jalan Pemuda no 10<br />Kota Jombang, Jawa Timur</p>
        <div class="social-media">
          <a href="#" class="social-icon"><img src="../img/wig.png" alt="Instagram" /></a>
          <a href="#" class="social-icon"><img src="../img/wfb.png" alt="Facebook" /></a>
          <a href="#" class="social-icon"><img src="../img/wx.png" alt="Twitter" /></a>
          <a href="mailto:info@ponpesal-ikhlas.com" class="social-icon"><img src="../img/wemail.png" alt="Email" /></a>
        </div>
      </div>
    </div>
  </footer>
</body>

</html>