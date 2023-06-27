## Live Code Automation Mobile Apps Test

### Permasalahan

Saat ini kamu bekerja sebagai seorang QA (Quality Assurance) dalam sebuah project yang bernama Sauce Labs. Mobile Team Development sudah selesai melakukan pengerjaan aplikasi. Sebelum di publish kamu diharuskan melakukan testing untuk memastikan aplikasi yang dibuat sudah sesuai pada functionalitasnya.

### Kritera

Berikut kriteria yang harus kamu lakukan tester:

1. Aplikasi yang sudah dan siap di lakukan testing dapat kamu unduh di [DISINI](https://github.com/saucelabs/my-demo-app-rn/releases)
2. Berikutnya lakukan JSON Representation pada `Appium Inspector` untuk konfigurasi silahkan sesuaikan dengan apa yang sudah di ajarkan dan jangan lupa konfigurasi tersebut disimpan pada sebuah file dengan nama `inspector.json`
3. Buat project dengan struktur sebagai berikut:

```
- apk/
  - SauceLabTest.apk
- PageObject/
  - Locators.py
- Resources/
  - Resource.robot
- Steps/
  - MyTest.robot
- inspector.json
- README.md

```

1. Pengujian selesai dibuktikan dengan hasil record saat menjalankan test, tools record bebas ya. Untuk record pastikan sebelah kiri adalah running terminal dan kanan adalah emulator. Untuk hasil rekaman dapat di upload pada GGDrive dan sertakan link nya di `README.md`
2. Project yang sudah selesai silahkan push pada repository git dengan nama `livecode-automation-mobile` paling lambat **Jumat, 16 Juni 2023 | 11.30 WIB**.

### Langkah-langkah Pengujian

Berikut langkah-langkah pengujian yang harus dilakukan:

1. Pengujian dilakuan dan dibuktikan dengan dapat membuka aplikasi dengan baik.
2. Pengujian dilakuan dan dibuktikan dengan dapat melakukan swipe kanan untuk membuka menu apps
3. Pengujian dilakuan dan dibuktikan dengan dapat melakukan scroll down hingga Product terakhir terlihat yaitu dengan Item `Sauce Labs Onesie`
4. Pengujian dilakuan dan dibuktikan dengan dapat mengklik sebuah rating dan muncul pop up dan dapat menutup pop tersebut.
5. Pengujian dilakuan dan dibuktikan dengan dapat melakukan sort by dengan menekan icon di samping icon `cart`.
6. Pengujian dilakuan dan dibuktikan dengan dapat melakukan pembelian product `Sauce Labs Backpack` berwarna Biru dengan jumlah pembelian adalah 5 dan `Sauce Labs Bolt T-Shirt` berwarna hitam dengan jumlah pembelian adalah 1.
7. Pengujian dilakuan dan dibuktikan dengan dapat melakukan proses melihat Cart sebelum dilakukan `Procedd To Checkout` (Buktikan dengan adanya scroll down juga)
8. Pengujian dilakuan dan dibuktikan dengan dapat melakukan pengisian data `Enter a shipping address` sampai dengan proses pembelian selesai.
9. Silahkan buat `** Test Cases ***` dengan pattern `As a User I ....`
