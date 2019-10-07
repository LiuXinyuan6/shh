<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 商品列表 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-refresh" onclick="javascript:window.location.href='/goods/list';"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-trash"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-plus" onclick="javascript:window.location.href='/goods/to_add';"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <div class="col-md-6">
                                当前第：${pageInfo.pageNum}页，总共：${pageInfo.pages}页，总共：${pageInfo.total}条记录
                            </div>
                            <div class="col-md-6">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li><a href="${pageContext.request.contextPath}/goods/list?pn=1">首页</a></li>
                                        <c:if test="${pageInfo.hasPreviousPage }">
                                            <li>
                                                <a href="${path}/goods/list?pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                                            <c:if test="${page_Num == pageInfo.pageNum }">
                                                <li class="active"><a href="#">${ page_Num}</a></li>
                                            </c:if>
                                            <c:if test="${page_Num != pageInfo.pageNum }">
                                                <li><a href="${pageContext.request.contextPath}/goods/list?pn=${ page_Num}">${ page_Num}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${pageInfo.hasNextPage }">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/goods/list?pn=${pageInfo.pageNum+1}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <li><a href="${pageContext.request.contextPath}/goods/list?pn=${pageInfo.pages}">末页</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <form style="margin:0px;display:inline;" class="form-inline" action="/goods/find" class="btn btn-default">
                                <div class="form-group">
                                    <input type="text" name="name"   class="form-control" id="exampleInputEmail2" placeholder="查询商品">
                                    <input type="submit" value="查询" class="btn btn-default">
                                </div>
                            </form>
                            <form style="margin:0px;display:inline;" class="form-inline" action="/goods/find_merchant" class="btn btn-default">
                                <div class="form-group">
                                    <input type="text" name="name_merchant"   class="form-control" id="exampleInputEmail2" placeholder="查询商家">
                                    <input type="submit" value="查询" class="btn btn-default">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
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
                            <th class="hidden-xs">生产地址</th>
                            <th class="hidden-xs">商家电话</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
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
                            <td>${goods.address}</td>
                            <td>${goods.phone}</td>
                            <td>
                                <a href="/goods/to_update?id_goods=${goods.id_goods}">编辑</a>
                                <a href="/goods/remove?id_goods=${goods.id_goods}">删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>