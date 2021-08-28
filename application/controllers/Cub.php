<?php
class Cub extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('m_cub');
    }
    function index()
    {
        $jum = $this->m_cub->get_cub();
        $page = $this->uri->segment(3);
        if (!$page) :
            $offset = 0;
        else :
            $offset = $page;
        endif;
        $limit = 6;
        $config['base_url'] = base_url() . 'cub/index/';
        $config['total_rows'] = $jum->num_rows();
        $config['per_page'] = $limit;
        $config['uri_segment'] = 3;
        $config['first_link'] = 'Awal';
        $config['last_link'] = 'Akhir';
        $config['next_link'] = 'Next >>';
        $config['prev_link'] = '<< Prev';
        $this->pagination->initialize($config);
        $x['page'] = $this->pagination->create_links();
        $x['data'] = $this->m_cub->get_cub_per_page($offset, $limit);
        $this->load->view('v_cub', $x);
    }

    function detail($port_id)
    {
        $data['cub'] = $this->m_cub->get_all_cub();

        $where = array('port_id' => $port_id);
        $data['tbl_cub'] = $this->m_cub->detail_data($where, 'tbl_cub')->result();
        $data['populer'] = $this->m_cub->get_tulisan_populer();
        $data['terbaru'] = $this->m_cub->get_tulisan_terbaru();
        $data['kat'] = $this->m_cub->get_kategori_for_blog();
        $this->load->view('v_detail_cub', $data);
    }
    function kategori()
    {
        $kategori_id = $this->uri->segment(3);
        $jum = $this->m_tulisan->get_tulisan_by_kategori($kategori_id);
        $page = $this->uri->segment(4);
        if (!$page) :
            $offset = 0;
        else :
            $offset = $page;
        endif;
        $limit = 5;
        $config['base_url'] = base_url() . 'blog/kategori/' . $kategori_id . '/';
        $config['total_rows'] = $jum->num_rows();
        $config['per_page'] = $limit;
        $config['uri_segment'] = 4;
        $config['first_link'] = 'Awal';
        $config['last_link'] = 'Akhir';
        $config['next_link'] = 'Next >>';
        $config['prev_link'] = '<< Prev';
        $this->pagination->initialize($config);
        $x['page'] = $this->pagination->create_links();
        $x['data'] = $this->m_tulisan->get_tulisan_by_kategori_perpage($kategori_id, $offset, $limit);
        $this->load->view('v_blog', $x);
    }

    function search()
    {
        $keyword = str_replace("'", "", $this->input->post('xfilter', TRUE));
        $x['data'] = $this->m_tulisan->search_tulisan($keyword);
        $this->load->view('v_blog', $x);
    }
}
