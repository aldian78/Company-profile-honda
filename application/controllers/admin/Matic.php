<?php
class Matic extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if (!isset($_SESSION['logged_in'])) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('m_pengguna');
		$this->load->model('m_matic');
		$this->load->library('upload');
	}


	function index()
	{
		$x['data'] = $this->m_matic->get_all_matic();
		$this->load->view('admin/v_matic', $x);
	}
	function add_matic()
	{
		$this->load->view('admin/v_add_matic');
	}
	function get_edit()
	{
		$kode = $this->uri->segment(4);
		$x['data'] = $this->m_matic->get_matic_by_kode($kode);
		$this->load->view('admin/v_edit_matic', $x);
	}
	function simpan_matic()
	{
		$config['upload_path'] = './assets/images/matic/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang image yang dizinkan
		$config['encrypt_name'] = 'file_name'; //enkripsi nama file

		$this->upload->initialize($config);
		//gambar 1
		if (!empty($_FILES['port_image']['name'] != null)) {
			$this->upload->do_upload('port_image');
			$gbr = $this->upload->data();
			$port_image = $gbr['file_name'];
			$this->_create($gbr['file_name']);
		}
		//gambar2
		if (!empty($_FILES['port_image1']['name'])) {
			$this->upload->do_upload('port_image1');
			$gbr1 = $this->upload->data();
			$port_image1 = $gbr1['file_name'];
			//Compress Image
			$this->_create($gbr['file_name']);
		}
		//gambar3
		if (!empty($_FILES['port_image2']['name'])) {
			$this->upload->do_upload('port_image2');
			$gbr2 = $this->upload->data();
			$port_image2 = $gbr2['file_name'];
			//Compress Image
			$this->_create($gbr['file_name']);
		}
		//gambar4
		if (!empty($_FILES['port_image3']['name'])) {
			$this->upload->do_upload('port_image3');
			$gbr3 = $this->upload->data();
			$port_image3 = $gbr3['file_name'];
			//Compress Image
			$this->_create($gbr['file_name']);
		}
		//gambar5
		if (!empty($_FILES['port_image4']['name'])) {
			$this->upload->do_upload('port_image4');
			$gbr4 = $this->upload->data();
			$port_image4 = $gbr4['file_name'];
			//Compress Image
			$this->_create($gbr['file_name']);
		}


		$judul = strip_tags($this->input->post('xjudul'));
		$isi = $this->input->post('xisi');
		$kode = $this->session->userdata('idadmin');
		$user = $this->m_pengguna->get_pengguna_login($kode);
		$p = $user->row_array();
		$user_id = $p['pengguna_id'];
		$user_nama = $p['pengguna_nama'];

		$this->m_matic->simpan_matic($judul, $isi, $user_nama, $port_image, $port_image1, $port_image2, $port_image3, $port_image4);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('admin/matic');
	}

	function _create($file_name)
	{
		//Compress Image
		$config['image_library'] = 'gd2';
		$config['source_image'] = './assets/images/matic/' . $file_name;
		$config['create_thumb'] = FALSE;
		$config['maintain_ratio'] = FALSE;
		$config['quality'] = '60%';
		$config['new_image'] = './assets/images/matic/' . $file_name;
		$this->load->library('image_lib', $config);
		$this->image_lib->resize();
	}

	// fungsi update data beserta banyak gambar dan replace gambar lama
	function update_matic()
	{

		$config['upload_path'] = './assets/images/matic/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = 'file_name'; //nama yang terupload nantinya

		$kode = $this->input->post('kode');
		$gambar = $this->db->get_where('tbl_matic', array('port_id' => $kode));
		foreach ($gambar->result_array() as $g) {

			$this->upload->initialize($config);
			//gambar 1
			if (!empty($_FILES['port_image']['name'] != null)) {
				$this->upload->do_upload('port_image');
				$gbr = $this->upload->data();
				$port_image = $gbr['file_name'];
				$this->_update($gbr['file_name']);

				$path = './assets/images/matic/' . $g['port_image'];
				unlink($path);
			}

			//gambar2
			if (!empty($_FILES['port_image1']['name'])) {
				$this->upload->do_upload('port_image1');
				$gbr1 = $this->upload->data();
				$port_image1 = $gbr1['file_name'];
				//Compress Image
				$this->_update($gbr['file_name']);

				$path = './assets/images/matic/' . $g['port_image1'];
				unlink($path);
			}
			//gambar3
			if (!empty($_FILES['port_image2']['name'])) {
				$this->upload->do_upload('port_image2');
				$gbr2 = $this->upload->data();
				$port_image2 = $gbr2['file_name'];
				//Compress Image
				$this->_update($gbr['file_name']);

				$path = './assets/images/matic/' . $g['port_image2'];
				unlink($path);
			}

			//gambar4
			if (!empty($_FILES['port_image3']['name'])) {
				$this->upload->do_upload('port_image3');
				$gbr3 = $this->upload->data();
				$port_image3 = $gbr3['file_name'];
				//Compress Image
				$this->_update($gbr['file_name']);

				$path = './assets/images/matic/' . $g['port_image3'];
				unlink($path);
			}

			//gambar5
			if (!empty($_FILES['port_image4']['name'])) {
				$this->upload->do_upload('port_image4');
				$gbr4 = $this->upload->data();
				$port_image4 = $gbr4['file_name'];
				//Compress Image
				$this->_update($gbr['file_name']);

				$path = './assets/images/matic/' . $g['port_image4'];
				unlink($path);
			}

			$port_id = $this->input->post('kode');
			$judul = strip_tags($this->input->post('xjudul'));
			$isi = $this->input->post('xisi');
			$kode = $this->session->userdata('idadmin');
			$user = $this->m_pengguna->get_pengguna_login($kode);
			$p = $user->row_array();
			$user_id = $p['pengguna_id'];
			$user_nama = $p['pengguna_nama'];

			$this->m_matic->update_matic($port_id, $judul, $isi, $user_nama, $port_image, $port_image1, $port_image2, $port_image3, $port_image4);
			echo $this->session->set_flashdata('msg', 'info');
			redirect('admin/matic');
		}
	}

	function _update($file_name)
	{

		//Compress Image
		$config['image_library'] = 'gd2';
		$config['source_image'] = './assets/images/matic/' . $file_name;
		$config['create_thumb'] = FALSE;
		$config['maintain_ratio'] = FALSE;
		$config['quality'] = '60%';
		$config['new_image'] = './assets/images/matic/' . $file_name;
		$this->load->library('image_lib', $config);
		$this->image_lib->resize();
	}


	// fungsi hapus data beserta gambar didirektori
	function hapus_matic()
	{
		$kode = $this->input->post('kode');
		$gambar = $this->db->get_where('tbl_matic', array('port_id' => $kode));
		foreach ($gambar->result_array() as $g) {
			$path = './assets/images/matic/' . $g['port_image'];
			unlink($path);
			$path = './assets/images/matic/' . $g['port_image1'];
			unlink($path);
			$path = './assets/images/matic/' . $g['port_image2'];
			unlink($path);
			$path = './assets/images/matic/' . $g['port_image3'];
			unlink($path);
			$path = './assets/images/matic/' . $g['port_image4'];
			unlink($path);

			$this->m_matic->hapus_matic($kode);
			echo $this->session->set_flashdata('msg', 'success-hapus');
			redirect('admin/matic');
		}
	}
}
