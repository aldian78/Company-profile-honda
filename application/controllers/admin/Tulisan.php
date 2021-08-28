<?php
class Tulisan extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if (!isset($_SESSION['logged_in'])) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('m_kategori');
		$this->load->model('m_tulisan');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}


	function index()
	{
		$x['data'] = $this->m_tulisan->get_all_tulisan();
		$this->load->view('admin/v_tulisan', $x);
	}
	function add_tulisan()
	{
		$x['kat'] = $this->m_kategori->get_all_kategori();
		$this->load->view('admin/v_add_tulisan', $x);
	}
	function get_edit()
	{
		$kode = $this->uri->segment(4);
		$x['data'] = $this->m_tulisan->get_tulisan_by_kode($kode);
		$x['kat'] = $this->m_kategori->get_all_kategori();
		$this->load->view('admin/v_edit_tulisan', $x);
	}
	function simpan_tulisan()
	{
		$config['upload_path'] = './assets/images/produk/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang image yang dizinkan
		$config['encrypt_name'] = 'file_name'; //enkripsi nama file

		$this->upload->initialize($config);
		//gambar 1
		if (!empty($_FILES['tulisan_gambar']['name'] != null)) {
			$this->upload->do_upload('tulisan_gambar');
			$tg = $this->upload->data();
			$tulisan_gambar = $tg['file_name'];
			$this->_create($tg['file_name']);
		}
		//gambar2
		if (!empty($_FILES['tulisan_gambar1']['name'])) {
			$this->upload->do_upload('tulisan_gambar1');
			$tg1 = $this->upload->data();
			$tulisan_gambar1 = $tg1['file_name'];
			//Compress Image
			$this->_create($tg1['file_name']);
		}
		//gambar3
		if (!empty($_FILES['tulisan_gambar2']['name'])) {
			$this->upload->do_upload('tulisan_gambar2');
			$tg2 = $this->upload->data();
			$tulisan_gambar2 = $tg2['file_name'];
			//Compress Image
			$this->_create($tg2['file_name']);
		}
		//gambar4
		if (!empty($_FILES['tulisan_gambar3']['name'])) {
			$this->upload->do_upload('tulisan_gambar3');
			$tg3 = $this->upload->data();
			$tulisan_gambar3 = $tg3['file_name'];
			//Compress Image
			$this->_create($tg3['file_name']);
		}
		//gambar5
		if (!empty($_FILES['tulisan_gambar4']['name'])) {
			$this->upload->do_upload('tulisan_gambar4');
			$tg4 = $this->upload->data();
			$tulisan_gambar4 = $tg4['file_name'];
			//Compress Image
			$this->_create($tg4['file_name']);
		}

		$judul = strip_tags($this->input->post('xjudul'));
		$isi = $this->input->post('xisi');
		$kategori_id = strip_tags($this->input->post('xkategori'));
		$data = $this->m_kategori->get_kategori_byid($kategori_id);
		$q = $data->row_array();
		$kategori_nama = $q['kategori_nama'];
		$kode = $this->session->userdata('idadmin');
		$user = $this->m_pengguna->get_pengguna_login($kode);
		$p = $user->row_array();
		$user_id = $p['pengguna_id'];
		$user_nama = $p['pengguna_nama'];
		$this->m_tulisan->simpan_tulisan($judul, $isi, $kategori_id, $kategori_nama, $user_id, $user_nama, $tulisan_gambar, $tulisan_gambar1, $tulisan_gambar2, $tulisan_gambar3, $tulisan_gambar4);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('admin/tulisan');
	}
	function _create($file_name)
	{
		//Compress Image
		$config['image_library'] = 'gd2';
		$config['source_image'] = './assets/images/produk/' . $file_name;
		$config['create_thumb'] = FALSE;
		$config['maintain_ratio'] = FALSE;
		$config['quality'] = '60%';
		$config['new_image'] = './assets/images/produk/' . $file_name;
		$this->load->library('image_lib', $config);
		$this->image_lib->resize();
	}
	function update_tulisan()
	{

		$config['upload_path'] = './assets/images/produk/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = 'file_name'; //nama yang terupload nantinya

		$tulisan_id = $this->input->post('kode');
		$gambar = $this->db->get_where('tbl_tulisan', array('tulisan_id' => $tulisan_id));
		foreach ($gambar->result_array() as $g) {

			$this->upload->initialize($config);
			//gambar 1
			if (!empty($_FILES['tulisan_gambar']['name'] != null)) {
				$this->upload->do_upload('tulisan_gambar');
				$tg = $this->upload->data();
				$tulisan_gambar = $tg['file_name'];
				$this->_update($tg['file_name']);

				$path = './assets/images/produk/' . $g['tulisan_gambar'];
				unlink($path);
			}

			//gambar2
			if (!empty($_FILES['tulisan_gambar1']['name'])) {
				$this->upload->do_upload('tulisan_gambar1');
				$tg1 = $this->upload->data();
				$tulisan_gambar1 = $tg1['file_name'];
				//Compress Image
				$this->_update($tg1['file_name']);

				$path = './assets/images/produk/' . $g['tulisan_gambar1'];
				unlink($path);
			}
			//gambar3
			if (!empty($_FILES['tulisan_gambar2']['name'])) {
				$this->upload->do_upload('tulisan_gambar2');
				$tg2 = $this->upload->data();
				$tulisan_gambar2 = $tg2['file_name'];
				//Compress Image
				$this->_update($tg2['file_name']);

				$path = './assets/images/produk/' . $g['tulisan_gambar2'];
				unlink($path);
			}

			//gambar4
			if (!empty($_FILES['tulisan_gambar3']['name'])) {
				$this->upload->do_upload('tulisan_gambar3');
				$tg3 = $this->upload->data();
				$tulisan_gambar3 = $tg3['file_name'];
				//Compress Image
				$this->_update($tg3['file_name']);

				$path = './assets/images/produk/' . $g['tulisan_gambar3'];
				unlink($path);
			}

			//gambar5
			if (!empty($_FILES['tulisan_gambar4']['name'])) {
				$this->upload->do_upload('tulisan_gambar4');
				$tg4 = $this->upload->data();
				$tulisan_gambar4 = $tg4['file_name'];
				//Compress Image
				$this->_update($tg4['file_name']);

				$path = './assets/images/produk/' . $g['tulisan_gambar4'];
				unlink($path);
			}
			$tulisan_id = $this->input->post('kode');
			$judul = strip_tags($this->input->post('xjudul'));
			$isi = $this->input->post('xisi');
			$kategori_id = strip_tags($this->input->post('xkategori'));
			$data = $this->m_kategori->get_kategori_byid($kategori_id);
			$q = $data->row_array();
			$kategori_nama = $q['kategori_nama'];
			$kode = $this->session->userdata('idadmin');
			$user = $this->m_pengguna->get_pengguna_login($kode);
			$p = $user->row_array();
			$user_id = $p['pengguna_id'];
			$user_nama = $p['pengguna_nama'];
			$this->m_tulisan->update_tulisan($tulisan_id, $judul, $isi, $kategori_id, $kategori_nama, $user_id, $user_nama, $tulisan_gambar, $tulisan_gambar1, $tulisan_gambar2, $tulisan_gambar3, $tulisan_gambar4);
			echo $this->session->set_flashdata('msg', 'info');
			redirect('admin/tulisan');
		}
	}

	function _update($file_name)
	{

		//Compress Image
		$config['image_library'] = 'gd2';
		$config['source_image'] = './assets/images/produk/' . $file_name;
		$config['create_thumb'] = FALSE;
		$config['maintain_ratio'] = FALSE;
		$config['quality'] = '60%';
		$config['new_image'] = './assets/images/produk/' . $file_name;
		$this->load->library('image_lib', $config);
		$this->image_lib->resize();
	}


	// fungsi hapus data beserta gambar didirektori
	function hapus_tulisan()
	{
		$kode = $this->input->post('kode');
		$gambar = $this->db->get_where('tbl_tulisan', array('tulisan_id' => $kode));
		foreach ($gambar->result_array() as $g) {
			$path = './assets/images/produk/' . $g['tulisan_gambar'];
			unlink($path);
			$path = './assets/images/produk/' . $g['tulisan_gambar1'];
			unlink($path);
			$path = './assets/images/produk/' . $g['tulisan_gambar2'];
			unlink($path);
			$path = './assets/images/produk/' . $g['tulisan_gambar3'];
			unlink($path);
			$path = './assets/images/produk/' . $g['tulisan_gambar4'];
			unlink($path);

			$this->m_tulisan->hapus_tulisan($kode);
			echo $this->session->set_flashdata('msg', 'success-hapus');
			redirect('admin/tulisan');
		}
	}
}
