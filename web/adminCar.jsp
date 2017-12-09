<%@ page import="java.util.List" %>
<%@ page import="bean.User" %>
<%@ page import="bean.UserSearch" %>
<%@ page import="bean.CarAvailability" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<header>
    <title>租车信息管理--HAPPY CHRISTMAS</title>
</header>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
        <%@include file="templates/adminNavbar.jsp" %>
    </header>

    <!-- DASHBOARD ORDERS SECTION -->
    <section class="clearfix bg-dark dashboardOrders">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="dashboardPageTitle text-center">
                        <h2><b>HC</b>车辆信息管理</h2>
                    </div>
                    <div class="dashboardBoxBg mb30">
                        <form action="/CarAvailabilityController" method="POST" class="row"
                              id="carAvailabilitySearchForm">
                            <input type="hidden" name="command" value="ADMIN_CAR_AVAILABILITY"/>
                            <div class="profileIntro">
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="carId">车辆ID</label><!--!!!!--1--!!!!-->
                                    <input type="text" class="form-control" id="carId" placeholder="Car ID"
                                           name="car_id">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="carOwner">车辆提供者</label><!--!!!!--2--!!!!-->
                                    <input type="text" class="form-control" id="carOwner" placeholder="Car Owner"
                                           name="car_owner">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="carBrand">车辆品牌</label><!--!!!!--3--!!!!-->
                                    <div class="contactSelect">
                                        <select id="carBrand" class="select-drop" name="car_brand" size="1"
                                                multiple="false">
                                            <option value="all">所有品牌</option>
                                            <option value="宝马">宝马</option>
                                            <option value="奔驰">奔驰</option>
                                            <option value="长安">长安</option>
                                            <option value="别克">别克</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="carType">车系</label><!--!!!!--4--!!!!-->
                                    <div class="contactSelect">
                                        <select id="carType" class="select-drop" name="car_type" size="1"
                                                multiple="false">
                                            <option value="all">所有车系</option>
                                            <option value="5系">5系</option>
                                            <option value="7系">7系</option>
                                            <option value="X5">X5</option>
                                            <option value="C级">C级</option>
                                            <option value="CX70">CX70</option>
                                            <option value="GL8">GL8</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="carSeat">车座</label><!--!!!!--5--!!!!-->
                                    <div class="contactSelect">
                                        <select id="carSeat" class="select-drop" name="car_seat" size="1"
                                                multiple="false">
                                            <option value="all">不限</option>
                                            <option value="4">4座</option>
                                            <option value="5">5座</option>
                                            <option value="7">7座</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="carStatus">车辆状态</label><!--!!!!--6--!!!!-->
                                    <div class="contactSelect">
                                        <select id="carStatus" class="select-drop" name="car_status" size="1"
                                                multiple="false">
                                            <option value="all">不限</option>
                                            <option value="1">可使用</option>
                                            <option value="0">已过期</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateStart">开始时间</label><!--!!!!--7--!!!!-->
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input id="dateStart" type="text" class="form-control"
                                                   placeholder="mm/dd/yyyy" name="date_start">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateEnd">结束时间</label><!--!!!!--8--!!!!-->
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input id="dateEnd" type="text" class="form-control"
                                                   placeholder="mm/dd/yyyy" name="date_end">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="carPrice">价格</label><!--!!!!--9--!!!!-->
                                    <div class="contactSelect">
                                        <select id="carPrice" class="select-drop" name="car_price" size="1"
                                                multiple="false">
                                            <option value="all">不限</option>
                                            <option value="1">从高到低</option>
                                            <option value="2">从低到高</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12"
                                     style="padding-top: 2.3%; margin-bottom: 0px; padding-bottom: 0px;">
                                    <button type="submit" class="btn btn-primary btn-lg">&nbsp;&nbsp;<i
                                            class="fa fa-search" aria-hidden="true"></i>搜索&nbsp;&nbsp;
                                    </button>
                                    <button type="reset" class="btn btn-primary btn-lg">&nbsp;&nbsp;<i
                                            class="fa fa-circle-o" aria-hidden="true"></i>清空&nbsp;&nbsp;
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <p style="height: 0px; padding-top: 10px; padding-left: 2%">共搜索到了<span>8</span>条记录</p>
                <div class="col-xs-12">
                    <div class="table-responsive bgAdd" data-pattern="priority-columns">
                        <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                               cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>车辆ID</th>
                                <th data-priority="3">车辆提供者</th>
                                <th data-priority="3">品牌</th>
                                <th data-priority="3">车系</th>
                                <th data-priority="3">车座</th>
                                <th data-priority="3">金额/天</th>
                                <th data-priority="4">开始时间</th>
                                <th data-priority="4">结束时间</th>
                                <th data-priority="3">车辆状态</th>
                                <th data-priority="2">操作</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>车辆ID</th>
                                <th>车辆提供者</th>
                                <th>品牌</th>
                                <th>车系</th>
                                <th>车座</th>
                                <th>金额/天</th>
                                <th>开始时间</th>
                                <th>结束时间</th>
                                <th>车辆状态</th>
                                <th>操作</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <%--<tr>--%>
                            <%--<td>1</td>--%>
                            <%--<td>Tiger Nixon</td>--%>
                            <%--&lt;%&ndash;跳转到用户管理界面&ndash;%&gt;--%>
                            <%--<td>BMW</td>--%>
                            <%--<td>3系</td>--%>
                            <%--<td>¥102</td>--%>
                            <%--<td>12/12/2017</td>--%>
                            <%--<td>15/12/2017</td>--%>
                            <%--<td><span class="label label-success">可使用</span></td>--%>
                            <%--<td>--%>
                            <%--<div class="btn-group">--%>
                            <%--<button type="button" class="btn btn-primary">修改</button>--%>
                            <%--<button type="button" class="btn btn-primary">删除</button>--%>
                            <%--</div>--%>
                            <%--</td>--%>
                            <%--</tr>--%>

                            <%
                                Boolean empty = (Boolean) request.getAttribute("empty");
                                if (empty == null) {
                                    empty = true;
                                }
                                if (!empty) {
                                    List<CarAvailability> result = (List<CarAvailability>) request.getAttribute("car_available_list");
                                    for (CarAvailability item : result) {%>
                            <tr>
                                <td><%=item.getCarId()%>
                                </td>
                                <td><%=item.getCarOwner()%>
                                </td>
                                <%--跳转到用户管理界面--%>
                                <td><%=item.getCarBrand()%>
                                </td>
                                <td><%=item.getCarType()%>
                                </td>
                                <td><%=item.getCarSeat()%>
                                </td>
                                <td><%=item.getCarPriceDaily()%>
                                </td>
                                <td>
                                    <%
                                        if (item.getCarDateStart() == null) {
                                            out.print("无最后下单时间");
                                        } else {
                                            out.print(item.getCarDateStart());
                                        }
                                    %>
                                </td>
                                <td>
                                    <%
                                        if (item.getCarDateEnd() == null) {
                                            out.print("无最后下单时间");
                                        } else {
                                            out.print(item.getCarDateEnd());
                                        }
                                    %>
                                </td>
                                <%
                                    switch (item.getCarStatus()) {
                                        case 0:%>
                                <td><span class="label label-danger">已过期</span></td>
                                <%
                                        break;
                                    case 1:%>
                                <td><span class="label label-success">可使用</span></td>
                                <%
                                            break;
                                    }
                                %>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">修改</button>
                                        <button type="button" class="btn btn-primary">删除</button>
                                    </div>
                                </td>
                            </tr>

                            <%
                                    }
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<%@include file="/templates/loginModal.jsp" %>
<%@include file="/templates/footers.jsp" %>


</body>
</html>