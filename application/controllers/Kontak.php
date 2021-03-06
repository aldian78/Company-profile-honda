<?php
class Kontak extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('m_pengunjung');
		$this->load->model('m_kontak');
		$this->m_pengunjung->count_visitor();
	}

	function index()
	{
		$this->load->library('googlemaps');
		error_reporting(0);
		$long = '37.4419';
		$lat = '-122.1419';
		$config = array();
		$config['center'] = '112.690675,-7.578745';
		$config['zoom'] = 'auto';
		$this->googlemaps->initialize($config);
		$marker = array();
		$marker['position'] = '112.690675,-7.578745';
		$this->googlemaps->add_marker($marker);
		$x['map'] = $this->googlemaps->create_map();
		$this->load->view('v_kontak', $x);
	}

	function kirim_pesan()
	{
		$nama = htmlspecialchars($this->input->post('nama', TRUE), ENT_QUOTES);
		$email = htmlspecialchars($this->input->post('email', TRUE), ENT_QUOTES);
		$pesan = htmlspecialchars(trim($this->input->post('pesan', TRUE)), ENT_QUOTES);
		$this->m_kontak->kirim_pesan($nama, $email, $pesan);
		echo $this->session->set_flashdata('msg', "<div class='alert alert-info'>Terima kasih telah menghubungi kami.</div>");
		redirect('kontak');
	}
}
