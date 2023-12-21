


<?php



/**
 * 1. index.phpのフォームの部分がおかしいので、ここを書き換えて、
 * insert.phpにPOSTでデータが飛ぶようにしてください。
 * 2. insert.phpで値を受け取ってください。
 * 3. 受け取ったデータをバインド変数に与えてください。
 * 4. index.phpフォームに書き込み、送信を行ってみて、実際にPhpMyAdminを確認してみてください！
 */

//1. POSTデータ取得

$age = $_POST['age'];
$sex = $_POST['sex'];
$name = $_POST['name'];
$job = $_POST['job'];
$career = $_POST['career'];
$coment = $_POST['coment'];
$contact = $_POST['contact'];



//2. DB接続します if文みたいなやつ（難易度高め）
try {
  //ID:'root', Password: xamppは 空白 ''
  $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost', 'root', '');
} catch (PDOException $e) {
  exit('DBConnectError:' . $e->getMessage());
}



//３．データ登録SQL作成

// 1. SQL文を用意  stmtにSQRを入れている？多分そう
$stmt = $pdo->prepare("
    INSERT INTO
        career_book(id, age, sex, name, job, career, coment, contact)
    VALUES (
        NULL, :age, :sex, :name, :job, :career, :coment, :contact )");



//  2. バインド変数を用意

 //インサートではデーターベースを登録する。下の bindで変なものがないか確認している的な。
// Integer 数値の場合 PDO::PARAM_INT
// String文字列の場合 PDO::PARAM_STR
$stmt->bindValue(':age', $age, PDO::PARAM_STR);
$stmt->bindValue(':sex', $sex, PDO::PARAM_STR);
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':job', $job, PDO::PARAM_STR);
$stmt->bindValue(':career', $career, PDO::PARAM_STR);
$stmt->bindValue(':coment', $coment, PDO::PARAM_STR);
$stmt->bindValue(':contact', $contact, PDO::PARAM_STR);

// //  3. 実行


$status = $stmt->execute();

var_dump($status);

//４．データ登録処理後
if($status === false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit('ErrorMessage:' . $error[2]);
} else {
    //５．index.phpへリダイレクト
    // 成功した場合 ↓インデックスhtml
        //これプログラミングの考え方として面白い。重要
        //インデックスのページで送信成功した場合、インデックスのページに遷移する
        //上こういう指示することで、ユーザーがフォームボタンおした際にUXめちゃ良さそう。
    header('Location: index.php');
}