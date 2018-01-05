<?php
  require '../data/activity.php';

//$re = array(
//    22563983190516,22564222870516,23930664390516,23946530530516,23947146390516,24042496540516,24139822460516,24154914650516,24164845170516,24183193230516,24203206740516,24224199340516,24225502160516,24226158850516,24230423470516,24231650280516,24232033960516,24232246800516,24232859270516,24587177590516,24587321020516,24587461000516,24951659740516,24951951620516,24952069620516,24952161580516,25944490170516,25944529860516,25950286460516,25950356940516,25950464360516,24233172230516,24231201160516,24229132590516,24203242960516,24062356180516,23934830680516,23933124370516,23931873600516,23930878370516,23930719750516,23934830680516
//);
//$detailsKey = [];
//foreach ($activity as $k=>$v){
//    if(in_array($v['orderId'],$re)){
////        var_export($k);
//        $detailsKey[]=$v;
//    }
//}
//
//
//  var_export($detailsKey);
//
//  exit;


function convertUrlQuery($query)
{
    $queryParts = explode('&', $query);
    $params = array();
    foreach ($queryParts as $param) {
        $item = explode('=', $param);
        $params[$item[0]] = $item[1];
    }
    return $params;
}
/**
 * 将参数变为字符串
 * @param $array_query
 * @return string string 'm=content&c=index&a=lists&catid=6&area=0&author=0&h=0®ion=0&s=1&page=1' (length=73)
 */
function getUrlQuery($array_query)
{
    $tmp = array();
    foreach($array_query as $k=>$param)
    {
        $tmp[] = $k.'='.$param;
    }
    $params = implode('&',$tmp);
    return $params;
}

  $url_arr = array();

  foreach ($details as $v){


      $iosDownloadUrl = 'http:'.$v['iosDownloadUrl'];
      $arr = parse_url($iosDownloadUrl);
      $arr_query_ios = convertUrlQuery($arr['query']);

      $androidDownloadUrl = 'http:'.$v['androidDownloadUrl'];
      $arr = parse_url($androidDownloadUrl);
      $arr_query_and = convertUrlQuery($arr['query']);


      $url[$v['orderId']]=array(
          'iosDownloadUrl'=>urldecode($arr_query_ios['url']),
          'androidDownloadUrl'=>urldecode($arr_query_and['url'])

      );

  }


  var_export($url);