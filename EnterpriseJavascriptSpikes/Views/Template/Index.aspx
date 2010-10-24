<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<html>
    <head>
        <title>...</title>
        <script src="../../jquery-datalink/jquery.js" type="text/javascript"></script>
      <%--  <script src="../../jquery-datalink/jquery.tmpl.js" type="text/javascript"></script>--%>
        <script src="../../jquery-tmpl/jquery.tmpl.js" type="text/javascript"></script>
       <%-- <script src="../../jquery-tmpl/jquery.tmplPlus.js" type="text/javascript"></script>--%>
        <script type="text/javascript">

            //companyDetail1
            $(document).ready(function () {

                var company = { companyName: 'ABC ASDF', companyPhone: '234 243234 23342' };
                
                //$.tmpl($("#companyDetail"), company).appendTo("#renderTarget");
                $("#companyDetail").tmpl(company).appendTo("#renderTarget");
                //$.templates.company = $.tmpl($("#companyDetail").html());

                $("#companyTrigger").click(function () {
                    var c = company;
                    debugger;

                });

                
            });


        </script>

        <script type="text/javascript">
        //<![CDATA[
            document.getElementsByTagName('html')[0].className = 'jsOn';
        //]]>
        </script>
    </head>
    <body>
        <p class="YesScript">
            Hello World! JavaScript is enabled.
        </p>


         <div id="companyDetail" class="company">
            <form  action="" method="post">
            <label for="companyName">
                Company Name</label>
            <input type="text" id="companyName" name="companyName" value = "${companyName}" />
           
            <input type="button" id="companyTrigger" name="trigger" style="height: 20px; width: 40px;" />
             <label for="companyPhone">
                Company Phone</label>
            <input type="text" id="Text1" name="companyPhone" value="${companyPhone}" />
            </form>
            <input type="button" id="Button1" name="trigger" style="height: 20px; width: 40px;" />
        </div>

        <div id="renderTarget"></div>


        <!--
        <code>
            <LABEL for=companyName>Company Name</LABEL> <INPUT id=Text1 class=commpany value=ABC name=companyName ASDF> 
        </code>
        -->

    </body>
</html>