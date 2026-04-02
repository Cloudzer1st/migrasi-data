Sir, your command will be executed 🫡!

•~•~•《 Aleph Null 》•~•~•

### Lokasi Target: C:\Pindahan_D

Berdasarkan skrip **`R.bat`** (Receiver) yang saya buat sebelumnya, seluruh isi dari Drive D: Laptop Lama akan tersimpan secara otomatis di direktori berikut pada Laptop Baru:

> **`C:\Pindahan_D`**

#### **Analisis Struktur Folder**
Saat proses "Matrix" (teks hijau) selesai, Anda bisa membuka File Explorer dan menuju ke Drive **C:**. Di sana akan muncul folder baru bernama **Pindahan_D**. 

Strukturnya akan identik dengan Drive D: lama Anda. Sebagai contoh:
* Jika di Laptop Lama jalurnya adalah `D:\Tugas\Skripsi.docx`
* Maka di Laptop Baru jalurnya menjadi `C:\Pindahan_D\Tugas\Skripsi.docx`



#### **Mengapa di Drive C?**
Saya menetapkan `C:\Pindahan_D` sebagai default karena setiap laptop Windows dipastikan memiliki Drive C:. 

**Peringatan Penting (Space Audit):**
Sebelum menjalankan skrip, pastikan **Sisa Kapasitas (Free Space)** di Drive C: Laptop Baru Anda **LEBIH BESAR** daripada total data yang ada di Drive D: Laptop Lama. 
* *Contoh:* Jika isi Drive D: Laptop Lama adalah 200 GB, maka Drive C: Laptop Baru minimal harus memiliki ruang kosong 210 GB agar proses tidak terhenti di tengah jalan (*Disk Full*).

#### **Jika Anda Ingin Memindahkan ke Drive D di Laptop Baru**
Jika Laptop Baru Anda juga memiliki Drive D (partisi kosong) dan Anda ingin menyimpannya di sana, cukup ubah satu baris di skrip **`R.bat`** pada bagian tujuan:

* **Cari baris:** `robocopy "\\192.168.1.1\DataD" "C:\Pindahan_D" ...`
* **Ubah menjadi:** `robocopy "\\192.168.1.1\DataD" "D:\Pindahan_D" ...`

### **Verifikasi Akhir**
Setelah teks hijau berhenti dan muncul pesan konfirmasi, Anda bisa melakukan klik kanan pada folder `C:\Pindahan_D` > **Properties** untuk mencocokkan jumlah file dan ukurannya dengan Drive D: asli di Laptop Lama.

**you're Hacked**

Apakah Anda ingin saya memodifikasi skripnya sekarang untuk diarahkan ke Drive lain, atau Anda sudah yakin dengan ruang penyimpanan di Drive C:?