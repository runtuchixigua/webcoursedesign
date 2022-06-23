<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>音悦Music首页</title>
    <link rel="stylesheet" type="text/css" href="static/CSS/index.css">
    <link rel="stylesheet" type="text/css" href="static/CSS/butn.css">
    <script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".logo").click(function () {
                window.location.href="index.jsp";
            });
            $(".regist").click(function () {
                window.location.href="pages/user/register.jsp";
            });
            $(".login").click(function () {
                window.location.href="pages/user/login.jsp";
            });
        })
    </script>
</head>
<body>
<div id="site-title">
    <div id="test"></div>
    <script >
        var text = "人们时常埋怨音乐是这样的模糊，听音乐时，简直不知如何去想才好。但每个人对文学总是能够理解的。可是，" +
            "对我来说……一首我喜爱的乐曲所传达给我的思想和意义是不能用语言表达的。这不是因为音乐不够具体，而是因为它太具体了。" +
            "所以，我发现：每当我试图用文字或语言来说明一段音乐时，好象是说过了，但又好象说的都不令人满意";
        var num = text.length;
        var i =0;
        function show() {
            var shower = text.substr(0,i);
            document.getElementById("test").innerHTML = shower;
            i++;
            if(i + 1 >= num){
                clearInterval("done");
            }
        }
        var done=setInterval("show()",200);
    </script>
</div>

    <div class="container">
        <a href="client/musicServlet?action=page" class="btn_2">开始music之旅</a>
    </div>


</body>
</html>