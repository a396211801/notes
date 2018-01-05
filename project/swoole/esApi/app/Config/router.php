<?php


return $router=[
    ['name'=>'接口文档','pattern'=>'get /help','controller'=>'Help','action'=>'apiList'],
    ['name'=>'获取人群热力图人数总量','pattern'=>'get /people/count','controller'=>'People','action'=>'count'],       
    ['name'=>'获取地图上圈选功能数据','pattern'=>'get /people/circle','controller'=>'People','action'=>'circle'],
    ['name'=>'获取人群热力图数据','pattern'=>'get /people/points','controller'=>'People','action'=>'points'],
    ['name'=>'获取人群分布图','pattern'=>'get /people/:s','controller'=>'People','action'=>'people'],
    ['name'=>'获取楼盘区域','pattern'=>'get /loupan/region','controller'=>'LouPan','action'=>'region'],   
    ['name'=>'获取楼盘区域楼盘','pattern'=>'get /loupan','controller'=>'LouPan','action'=>'louPanList'],   
    ['name'=>'获取区域板块','pattern'=>'get /loupan/districts','controller'=>'LouPan','action'=>'districts'],   
    ['name'=>'获取楼盘名搜索时提示','pattern'=>'get /loupan/suggest','controller'=>'LouPan','action'=>'suggest'],   
    
];