<?php
class Sport extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('m_sport');
    }
    function index()
    {
        $jum = $this->m_sport->get_sport();
        $page = $this->uri->segment(3);
        if (!$page) :
            $offset = 0;
        else :
            $offset = $page;
        endif;
        $limit = 6;
        $config['base_url'] = base_url() . 'sport/index/';
        $config['total_rows'] = $jum->num_rows();
        $config['per_page'] = $limit;
        $config['uri_segment'] = 3;
        $config['first_link'] = 'Awal';
        $config['last_link'] = 'Akhir';
        $config['next_link'] = 'Next >>';
        $config['prev_link'] = '<< Prev';
        $this->pagination->initialize($config);
        $x['page'] = $this->pagination->create_links();
        $x['data'] = $this->m_sport->get_sport_per_page($offset, $limit);
        $this->load->view('v_sport', $x);
    }

    function detail($port_id)
    {
        $data['sport'] = $this->m_sport->get_all_sport();

        $where = array('port_id' => $port_id);
        $data['tbl_sport'] = $this->m_sport->detail_data($where, 'tbl_sport')->result();
        $data['populer'] = $this->m_sport->get_tulisan_populer();
        $data['terbaru'] = $this->m_sport->get_tulisan_terbaru();
        $data['kat'] = $this->m_sport->get_kategori_for_blog();
        $this->load->view('v_detail_sport', $data);
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
