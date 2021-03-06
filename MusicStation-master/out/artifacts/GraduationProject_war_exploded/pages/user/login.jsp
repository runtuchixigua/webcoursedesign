<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>音悦Music登录页面</title>

    <%--静态包含，base标签，CSS样式，jquery样式--%>
    <%@include file="/pages/common/head.jsp" %>

    <script type="text/javascript">

        $(function () {

            $("#lqogin_header").click(function () {
                window.location.href = "index.jsp";
            });

        })

    </script>
</head>
<body>


<div class="login_banner">



    <div id="content">
        <div class="login_form">
            <div class="login_box">
                <div class="tit">
                    <h1>GoGoMusic用户</h1>
                    <a href="pages/user/register.jsp">立即注册</a>
                </div>
                <div class="msg_cont">
                    <b></b>
                    <span class="errorMsg">
                        ${ empty requestScope.msg ? "请输入用户名和密码":requestScope.msg}
                    </span>
                </div>
                <div class="form">
                    <form action="userServlet" method="post">
                        <input type="hidden" name="action" value="login">
                        <label>用户名称：</label>
                        <input class="itxt" type="text" placeholder="请输入用户名"
                               autocomplete="off" tabindex="1" name="username"
                               value="${ empty requestScope.username ? cookie.username.value:requestScope.username}"/>
                        <br/>
                        <br/>
                        <label>用户密码：</label>
                        <input class="itxt" type="password" placeholder="请输入密码"
                               autocomplete="off" tabindex="1" name="password"
                               value="${requestScope.password}"/>
                        <br/>
                        <br/>
                        <input type="submit" value="登录" id="sub_btn"/>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>

<%--静态包含，页脚信息--%>
<%@include file="/pages/common/footer.jsp" %>

</body>
</html>