<%--
  Created by IntelliJ IDEA.
  User: hieudh
  Date: 4/8/14
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    <title></title>
</head>
<body>
<h2>CUSTOMER</h2>
<hr>
<div class="box" id="box1">
    <img src="images/QSoft.gif">
</div>
<div class="box" id="box2">
    <table style="width: 500px">
        <tr>
            <td>
                QSoft Vietnam corp.
            </td>
        </tr>
        <tr>
            <td>
                62 Tran Thai Tong Str. Cau Giay Dist., Hanoi, Vietnam
            </td>
        </tr>
    </table>
    <table style="width: 500px">
        <tr>
            <td>
                Tel:+84 4 666 999 - Ext: 331
            </td>
            <td>
                Fax: +84 4 666 999
            </td>
        </tr>
        <tr>
            <td>
                Nguyen Toan Cau
            </td>
            <td>
                <button>Add Contact</button>
            </td>
        </tr>
        <tr>
            <td>
                Tel: +84 904 866 696
            </td>
            <td>
                Email: caunt@qsoftvietnam.com
            </td>
        </tr>
    </table>
</div>
Order line
<table id="equip">
    <tr>
        <th>
            Product
        </th>
        <th>
            Description
        </th>
        <th>
            Price
        </th>
    </tr>
    <tr>
        <td>
            30482339
        </td>
        <td>
            30482339, Crowd, C5-Serial, year-1980
        </td>
        <td>
            $6500
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <b id="total">Total</b>
        </td>
        <td>
            $6500
        </td>
    </tr>
</table>
</body>
</html>
