<?php
//共通に使う関数を記述
//XSS対応（ echoする場所で使用！それ以外はNG ）
// htmlspecial何とかの関数を作る
function h($str) {
    return htmlspecialchars($str, ENT_QUOTES);
    
    
    }

    ?>