<?php
class M_sport extends CI_Model
{

    function get_all_sport()
    {
        $hsl = $this->db->query("SELECT tbl_sport.*,DATE_FORMAT(port_tanggal,'%d %M %Y') AS tanggal FROM tbl_sport ORDER BY port_id DESC");
        return $hsl;
    }

    function simpan_sport($judul, $isi, $user_nama, $port_image, $port_image1, $port_image2, $port_image3, $port_image4)
    {
        $hsl = $this->db->query("INSERT INTO tbl_sport (port_judul,port_deskripsi,port_author,port_image,port_image1,port_image2,port_image3,port_image4) VALUES ('$judul','$isi','$user_nama','$port_image','$port_image1','$port_image2','$port_image3','$port_image4')");
        return $hsl;
    }

    function get_sport_by_kode($kode)
    {
        $hsl = $this->db->query("SELECT * FROM tbl_sport WHERE port_id='$kode'");
        return $hsl;
    }

    function update_sport($port_id, $judul, $isi, $user_nama, $port_image, $port_image1, $port_image2, $port_image3, $port_image4)
    {
        $hsl = $this->db->query("UPDATE tbl_sport SET port_judul='$judul',port_deskripsi='$isi',port_author='$user_nama',port_image='$port_image',port_image1='$port_image1',port_image2='$port_image2',port_image3='$port_image3',port_image4='$port_image4' WHERE port_id='$port_id'");
        return $hsl;
    }

    function update_sport_tanpa_img($port_id, $judul, $isi, $user_nama)
    {
        $hsl = $this->db->query("UPDATE tbl_sport SET port_judul='$judul',port_deskripsi='$isi',port_author='$user_nama' WHERE port_id='$port_id'");
        return $hsl;
    }

    function hapus_sport($kode)
    {
        $hsl = $this->db->query("DELETE FROM tbl_sport WHERE port_id='$kode'");
        return $hsl;
    }


    //Frontend
    function get_sport()
    {
        $hsl = $this->db->query("SELECT tbl_sport.*,DATE_FORMAT(port_tanggal,'%d %M %Y') AS tanggal FROM tbl_sport ORDER BY port_id DESC");
        return $hsl;
    }

    function get_sport_per_page()
    {
        $hsl = $this->db->query("SELECT tbl_sport.*,DATE_FORMAT(port_tanggal,'%d %M %Y') AS tanggal FROM tbl_sport ORDER BY port_id DESC");
        return $hsl;
    }

    function detail_data($where, $table)
    {
        return $this->db->get_where($table, $where);
    }

    function get_tulisan_by_kategori($kategori_id)
    {
        $hsl = $this->db->query("SELECT tbl_tulisan.*,DATE_FORMAT(tulisan_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_tulisan where tulisan_kategori_id='$kategori_id'");
        return $hsl;
    }

    function get_tulisan_by_kategori_perpage($kategori_id, $offset, $limit)
    {
        $hsl = $this->db->query("SELECT tbl_tulisan.*,DATE_FORMAT(tulisan_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_tulisan where tulisan_kategori_id='$kategori_id' limit $offset,$limit");
        return $hsl;
    }

    function search_tulisan($keyword)
    {
        $hsl = $this->db->query("SELECT tbl_tulisan.*,DATE_FORMAT(tulisan_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_tulisan WHERE tulisan_judul LIKE '%$keyword%'");
        return $hsl;
    }

    function get_tulisan_populer()
    {
        $hasil = $this->db->query("SELECT tbl_tulisan.*,DATE_FORMAT(tulisan_tanggal,'%d %M %Y') AS tanggal FROM tbl_tulisan ORDER BY tulisan_views DESC limit 6");
        return $hasil;
    }

    function get_tulisan_terbaru()
    {
        $hasil = $this->db->query("SELECT tbl_tulisan.*,DATE_FORMAT(tulisan_tanggal,'%d %M %Y') AS tanggal FROM tbl_tulisan ORDER BY tulisan_id DESC limit 6");
        return $hasil;
    }

    function get_kategori_for_blog()
    {
        $hasil = $this->db->query("SELECT COUNT(tulisan_kategori_id) AS jml,kategori_id,kategori_nama FROM tbl_tulisan JOIN tbl_kategori ON tulisan_kategori_id=kategori_id GROUP BY tulisan_kategori_id");
        return $hasil;
    }
}
