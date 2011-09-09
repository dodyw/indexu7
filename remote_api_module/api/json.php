<?php  
  function json_serialize($any) {
    return json_encode(json_wrap($any));
  }

  function json_unserialize($str) {
    return json_unwrap(json_decode($str));
  }

  function json_wrap($any, $skipAssoc = false) {
    if (!$skipAssoc && is_array($any) && is_string(key($any))) {
      return (object)array("_PHP_ASSOC" => json_wrap($any,true));
    }
    if (is_array($any) || is_object($any)) {
      foreach ($any as &$v) {
        $v = json_wrap($v);
      }
    }
    return $any;
  }

  function json_unwrap($any, $skipAssoc = false) {
    if (!$skipAssoc && is_object($any) && is_object($any->_PHP_ASSOC) && count((array)$any) == 1) {
      return (array)json_unwrap($any->_PHP_ASSOC);
    }
    if (is_array($any) || is_object($any)) {
      foreach ($any as &$v) {
        $v = json_unwrap($v);
      }
    }
    return $any;
  }
?>