<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>易购商城</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/index.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script>
        function find()
        {
            $.ajax({
                type: "POST",
                url: "/ugoods/find",
                data: {name_goods:$("#exampleInputEmail2").val()},
                dataType: "json",
                success: function(data){
                    $('#tbody').empty();   //清空tbody里面的所有内容
                    $('#fenye').empty();
                    var html = "";
                        for (var i=0;i<data.length;i++)
                        {
                            html=html+"<tr>";
                            html=html+"<td>";
                            html=html+"</td>";
                            html=html+"<td>";
                            html=html+data[i].id_goods;
                            html=html+"</td>";
                            html=html+"<td>";
                            html=html+data[i].name_goods;
                            html=html+"</td>";
                            html=html+"<td>";
                            html=html+data[i].price_goods;
                            html=html+"</td>";
                            html=html+"<td>";
                            html=html+data[i].type_goods;
                            html=html+"</td>";
                            html=html+"<td>";
                            html=html+data[i].name;
                            html=html+"</td>";
                            html=html+"</tr>";
                        }
                        $("#tbody").html(html);
                },
                error:function () {
                    $('#tbody').empty();   //清空tbody里面的所有内容
                    $('#fenye').empty();
                    $("#fenye").html("未查询到相关数据");
                }
            });
        }

        $('#shouye').click(function () {
            alert("hhhhh");
        });

    </script>
</head>
<body>

<!-- 右下角按钮 -->
<!-- <button class="btn btn-default btn_right_bottom">写</button> -->
<!-- 图片轮播 -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
        <li data-target="#carousel-example-generic" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="img/ic_p4.jpg">
            <p class="carousel-caption">
                易购——您的购物专家
            </p>
        </div>
        <div class="item">
            <img src="img/ic_p5.jpg">
            <p class="carousel-caption">
                易购——您的购物专家
            </p>
        </div>
        <div class="item">
            <img src="img/ic_p6.jpg">
            <p class="carousel-caption">
                易购——您的购物专家
            </p>
        </div>
        <div class="item">
            <img src="img/ic_p7.jpg">
            <p class="carousel-caption">
                易购——您的购物专家
            </p>
        </div>
        <div class="item">
            <img src="img/ic_p8.jpg">
            <p class="carousel-caption">
                易购——您的购物专家
            </p>
        </div>
        <div class="item">
            <img src="img/ic_p9.jpg">
            <p class="carousel-caption">
                易购——您的购物专家
            </p>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- 功能模块 -->
<div class="row div_function">
    <div class="col-xs-4">
        <div class="panel panel-default" id="pFunc1">
            <div class="panel-body">
                <strong>店铺</strong>
                <a  title="狂点我有惊喜喔"><img class="iv_function" src="img/ic_store.svg"></a>
            </div>
        </div>
    </div>
    <div class="col-xs-4">
        <div class="panel panel-default"  id="pFunc2">
            <div class="panel-body">
                <strong>购物车</strong>
                <a href="/ugoods/order_nolist?id_user=${user.id}" title="喜欢的宝贝都在这里啦"><img class="iv_function" src="img/ic_remeber.svg"></a>
            </div>
        </div>
    </div>
    <div class="col-xs-4">
        <div class="panel panel-default"  id="pFunc3">
            <div class="panel-body">
                <strong>个人中心</strong>
                <a href="/self" title="悄悄地打开悄悄地走"><img class="iv_function" src="img/ic_personal.svg"></a>
            </div>
        </div>
    </div>
</div>
<!-- 技术日记 -->
<div class="container div_divider">
    <!-- 分割线 -->
    <hr class="hr_1">Bigname Technology World !<hr class="hr_2">
    <div class="row">
        <!-- 文章列表 -->
        <div class="col-xs-9">
            <div class="list-group div_article">
                <!-- 子头栏 -->
                <a  class="list-group-item active item_article_first">
                    <div style="padding-left: 20px" >
                            <div class="form-group form-inline btn btn-default" id="find">
                                <label for="exampleInputEmail2">e购百宝箱</label>
                                <input type="text" name="name_goods"   class="form-control" id="exampleInputEmail2">
<%--                                <input type="submit" value="查询" class="btn btn-default">--%>
                                <button type="submit" onclick="find()">查询</button>
                            </div>
                    </div>
                </a>
                <!-- 文章列表 -->
                <div class="list-group-item item_article">
                    <div class="panel-body pn">
                        <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                            <thead>
                            <tr class="">
                                <th class="text-center hidden-xs">Select</th>
                                <th class="hidden-xs">商品编号</th>
                                <th class="hidden-xs">商品名称</th>
                                <th class="hidden-xs">商品价格</th>
                                <th class="hidden-xs">商品类型</th>
                                <th class="hidden-xs">商品生产商</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            <c:forEach items="${goodsList}" var="goods">
                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>${goods.id_goods}</td>
                                    <td>${goods.name_goods}</td>
                                    <td>${goods.price_goods}</td>
                                    <td>${goods.type_goods}</td>
                                    <td>${goods.name}</td>
                                    <td>
                                        <a href="/ugoods/to_buy?id_goods=${goods.id_goods}" id="buy">购买</a>
                                        <a href="/ugoods/to_add?id_goods=${goods.id_goods}">添加至购物车</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <!-- 分页信息 -->
                        <div class="row" id="fenye">
                            <!-- 分页文字信息，其中分页信息都封装在pageInfo中 -->
                            <div class="col-md-6">
                                当前第：${pageInfo.pageNum}页，总共：${pageInfo.pages}页，总共：${pageInfo.total}条记录
                            </div>
                            <!-- 分页条 -->
                            <div class="col-md-6">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li><a href="${pageContext.request.contextPath}/ugoods/list?pn=1">首页</a></li>
                                        <c:if test="${pageInfo.hasPreviousPage }">
                                            <li>
                                                <a href="${path}/ugoods/list?pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                                            <c:if test="${page_Num == pageInfo.pageNum }">
                                                <li class="active"><a href="#">${ page_Num}</a></li>
                                            </c:if>
                                            <c:if test="${page_Num != pageInfo.pageNum }">
                                                <li><a href="${pageContext.request.contextPath}/ugoods/list?pn=${ page_Num}">${ page_Num}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${pageInfo.hasNextPage }">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/ugoods/list?pn=${pageInfo.pageNum+1}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <li><a href="${pageContext.request.contextPath}/ugoods/list?pn=${pageInfo.pages}">末页</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- 右侧 -->
        <div class="col-xs-3 div_record">
            <!-- 用户信息 -->
            <div class="jumbotron div_userinfo">
                <img class="iv_user_head img-circle" src="img/ic_p5.jpg">
                <div style="display: inline-block; margin-left: 12px;font-size: 18px;">
                    <c:if test="${user!=null}">
                        ${user.name},欢迎您！
                    </c:if>
                    <c:if test="${user==null}">
                        易购商城，请登录！
                    </c:if>
                </div>
            </div>
            <!-- 随手记录 -->
            <div style="display: flex;">
                <div style="flex: 1"><hr></div>
                <div style="text-align: center;line-height: 48px;color: #34374C">易购--记录您的美好心情</div>
                <div style="flex: 1"><hr></div>
            </div>
            <c:if test="${user==null}">
                <span>易购商城，成立于2019年7月30日，主要经营日常生活用品，零食等等，所有商品货真价实，如果您满意，请给予我们鼓励，如果不满意，也可以向我们提出您宝贵的意见喔~</span>
                <div class="div_save">
                    <a href="/to_login" title="欢迎您的光临" class="btn btn-primary btn_save_record">登录</a>
                </div>
            </c:if>
            <c:if test="${user!=null}">
                <div>易购ID：${user.id}</div>
                <div>用户名：${user.name}</div>
                <div>会员身份：${user.card}</div>
                <div>联系方式：${user.phone}</div>
                <div>常用住址：${user.address}</div>
                <div class="div_save">
                    <a href="/quit" title="欢迎下次光临" class="btn btn-primary btn_save_record">退出登录</a>
                </div>
            </c:if>
            <hr>
            <!-- 小功能列表 -->
            <div class="row div_little_func">
<%--                <div class="col-xs-4">--%>
<%--                    <button class="btn btn-default btn-cricle btn_login" data-toggle="modal" data-target="#loginModal">登</button>--%>
<%--                </div>--%>
                <div class="col-xs-4">
                    <a href="/to_register" title="欢迎您的注册" class="btn btn-default btn-cricle btn_stay">❀</a>
                </div>
                <div class="col-xs-4">
                    <a href="/to_register" title="欢迎您的注册" class="btn btn-default btn-cricle btn_stay">注</a>
                </div>
                <div class="col-xs-4">
                    <a href="/to_register" title="欢迎您的注册" class="btn btn-default btn-cricle btn_write">册</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 登录模态框 -->
    <div class="modal fade bs-example-modal-sm" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title" id="myModalLabel" style="text-align: center;">登录</div>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" style="padding: 12px;">
                        <div class="form-group">
                            <input type="text" class="form-control" id="inputEmail3" placeholder="账户名">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="inputPassword3" placeholder="密码">
                        </div>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <a href="/login" title="欢迎您的光临" class="btn btn-primary" name="id" style="width: 100%">Login</a>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.3.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<script src="js/init.js" type="text/script"></script>
<script src="js/util.js"></script>
</body>
</html>