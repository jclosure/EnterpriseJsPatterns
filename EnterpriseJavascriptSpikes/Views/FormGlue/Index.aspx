<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<html>
<head>
    <title>...</title>
    <script src="../../jquery-datalink/jquery.js" type="text/javascript"></script>
    <script src="../../jquery-tmpl/jquery.tmpl.js" type="text/javascript"></script>
    <script src="../../jquery-datalink/jquery.datalink.js" type="text/javascript"></script>
    <script type="text/javascript">

        //companyDetail1
        $(document).ready(function () {

            var company = { companyName: '', companyPhone: '234 243234 23342' };


            $("#companyDetail")
                    .tmpl(company)
                    .link(company)
                    .appendTo("#renderTarget")
                    .find("#saveCompany").click(function (evt) {
                        debugger;
                        evt.preventDefault();
                        $.ajax({
                            url: "/company/save",
                            data: company,
                            type: "POST",
                            success: function (data) {
                                //evaluate and update screen
                                debugger;
                                alert("success");
                            },
                            error: function (err, ex, blah) {
                                debugger;
                                alert(err);
                            }
                        });
                    });


        });

    </script>
    
</head>
<body>
    
    <div id="templates">
        <div id="companyDetail" class="company" style="display: none">
            <form action="" method="post">
            <label for="companyName">
                Company Name</label>
            <input type="text" id="companyName" name="companyName" value="${companyName}" />
            <label for="companyPhone">
                Company Phone</label>
            <input type="text" id="companyPhone" name="companyPhone" value="${companyPhone}" />
            <br />
            <input type="button" id="saveCompany" name="saveCompany" style="height: 20px; width: 40px;" />
            </form>
        </div>
    </div>
    <div id="renderTarget">
    </div>
</body>
</html>
