<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 编辑商品信息 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="/merchant/goodsUpdate" modelAttribute="goods"  id="admin-form" name="addForm">
                <div class="panel-body bg-light">
                    <div class="section-divider mt20 mb40">
                        <span> 基本信息 </span>
                    </div>
                    <div class="section row">
                        <div class="col-md-6">
                            <label for="id_goods" class="field prepend-icon" title="商品编号">
                                <form:input path="id_goods" cssClass="gui-input" placeholder="商品编号..." readonly="true" />
                                <label for="id_goods" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>
                        <div class="col-md-6">
                            <label for="name_goods" class="field prepend-icon" title="商品名称">
                                <form:input path="name_goods" class="gui-input" placeholder="商品名称..."/>
                                <label for="name_goods" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>
                        <div class="col-md-6">
                            <label for="price_goods" class="field prepend-icon" title="商品价格">
                                <form:input path="price_goods" class="gui-input" placeholder="商品价格..."/>
                                <label for="price_goods" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>
                        <div class="col-md-6">
                            <label for="type_goods" class="field prepend-icon" title="商品类型">
                                <form:input path="type_goods" class="gui-input" placeholder="商品类型..."/>
                                <label for="type_goods" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> 保存 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                    </form:form>
                </div>
            </div>
        </div>
</section>

<jsp:include page="bottom.jsp"/>