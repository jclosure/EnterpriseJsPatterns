<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <script src="../../Scripts/jquery-1.4.3.js" type="text/javascript"></script>
    <script src="../../Scripts/prototypal.js" type="text/javascript"></script>
    <%--<script src="../../Scripts/require-jquery.js" type="text/javascript"></script>--%>
    <script src="../../Scripts/Sofea/SharedSofeaController.js" type="text/javascript"></script>

    <script type="text/javascript">
        //require(["prototypal.js"], function () {        });
        var controller;
        $(document).ready(function () {
            debugger;
            controller = new SofeaController().init();
        });

    </script>

</head>
<body>
    <div>
    
    </div>
</body>
</html>
