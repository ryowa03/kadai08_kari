<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>データ登録</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <style>
        div {
            /* padding: 10px; */
            font-size: 16px;
        }

    </style>
</head>

<body>

    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php"></a></div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

  


    <form method="post" action="insert.php">
       
        
                <legend>career-memo</legend>
                <fieldset>
        <div class="jumbotron">
                <label>age<br><input type="text" name="age"></label><br>
                <label>sex<br><input type="text" name="sex"></label><br>
                <label>name<br><input type="text" name="name"></label><br>
              
         </div>

         
         <div class="jumbotron2">
    
                <label class = job>job　<input type="text" name="job"></label><br>
         </div>

         <br>



         <div class = jumbotron3 >
            キャリアメモ <br>
                <label><textArea name="career" rows="10" cols="80"></textArea></label><br>
                </div>

                <div class = jumbotron4 >
            その他<br>
                <label><textArea name="coment" rows="2" cols="40"></textArea></label><br>
                <br>
                </div>

                <div class = jumbotron5 >
            コンタクト先  <br> <br><br><br><br>
                <label><textArea name="contact" rows="2" cols="40"></textArea></label><br>
                </div>

                <input type="submit" value="送信">
            </fieldset>
        </div>
    </form>


</body>

</html>
