SELECT tp.id,judul,konten,gambar,tc.nama,tpn.nama,tpn.foto,tpn.deskripsi FROM `tb_post` AS tp 
JOIN tb_category AS tc ON tp.category=tc.id
JOIN tb_penulis AS tpn ON tp.penulis=tpn.id
ORDER BY tp.tgl_posting DESC;