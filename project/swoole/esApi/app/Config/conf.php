<?php

return $config = [
    'server' => [
        'worker_num' => 2,
        'open_cpu_affinity' => 4,
        'daemonize' => FALSE,
        'max_request' => 1000000,
        'task_worker_num' => 2,
        'log_file' => APP . '/log',
        'backlog' => 1024
    ],
    'redis'=>[
        'host'=>'192.168.1.134',
        'port'=>6388,
        'db'=>0,
        'auth'=>''
    ],
    'elasticSearch' => [
//        '192.168.1.218:9200'
        '122.225.117.133:9200'
    ],
    'es'=>[
        'people'=> ['index'=> 'map_house_bj','type'=>'map'],
        'loupan'=>['index'=>'map_house_loupan_tmp_beijing','type'=>'house']
        ]
];
