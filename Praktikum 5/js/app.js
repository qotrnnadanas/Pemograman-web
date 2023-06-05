// fungsi untuk materi event
function eventSatu() {
    alert("Hello World");
}

function gantiGambar(img){
    img.src = "img/2.jpg";
}

function gantiGambar2(img){
    img.src = "img/1.jpeg";
}

function cekLogin(){
    let username = document.getElementById('username').value;
    let password = document.getElementById('password').value;

    if (username == 'mario' && password == '1234'){
        alert('Login Berhasil')
    } else{
        alert('Login Gagal')
    }
}

//3. materi operator 2
function cekNilai(porom){
    let nilai = porom.value;
    let info = document.getElementById("info");

    info.style.fontSize = '24px';

    if (nilai > 60){
        info.innerText = 'Anda Lulus';
        info.style.color = 'green';
    } else {
        info.innerText = 'Anda Tidak Lulus';
        info.style.color = 'red';
    }
}

//4. materi operator 3
let day = new Date().getDate();
let namahari;
switch(parseInt (day) - 1) {
    case 1:
        namahari = 'Minggu'
        break;
    case 2:
        namahari = 'Senin'
        break;
    case 3:
        namahari = 'Selasa'
        break;
    case 4:
        namahari = 'Rabu'
        break;
    case 4:
        namahari = 'Kamis'
        break;
    case 4:
        namahari = 'Jumat'
        break;
    default:
        namahari = 'Sabtu'
        break;
}
document.getElementById('namahari').innerHTML = "Hari ini adalah hari " + namahari;

//5. Materi perulangan
let nama_orang = ['mario', 'sambo', 'rudi'];
let teks = '';

for (let index = 0; index < nama_orang.length;index++){
    teks+= "- "+nama_orang[index]+" <br>";
}

document.getElementById('namaOrang').innerHTML = teks;