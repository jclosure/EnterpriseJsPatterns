<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
    <script src="../../jquery-datalink/jquery.js" type="text/javascript"></script>
    <script src="../../jquery-datalink/jquery.datalink.js" type="text/javascript"></script>
    <script id="asfd" type="text/javascript">


        //personDetail1
        $(document).ready(function () {

            var person = {};

            $("#personDetail").link(person, {
                firstName: "first-name",
                lastName: "last-name",
                region: "region",
                tier: "tier"
            });


            person.region = "APAC";


            $("#personTrigger").click(function () {
                var p = person;
                debugger;
                var d = p;
            });

        });


        //companyDetail1
        $(document).ready(function () {

            var company = {};

            $("#companyDetail").link(company);


            $("#companyTrigger").click(function () {
                var c = company;
                debugger;
                var d = c;
            });

        });
       

        
    
    </script>
</head>
<body>
    <div>
        <div id="personDetail">
            <form  action="" method="post">
            <label for="elite-tier">
                First Name</label>
            <input type="text" id="first-name" name="first-name" />
            <label for="elite-tier">
                Last Name</label>
            <input type="text" id="last-name" name="last-name" />
            <label for="elite-tier">
                Region</label>
            <select id="region" name="region">
                <option id="emea" title="Europe, Middle East, and Asia" value="EMEA">EMEA</option>
                <option id="apac" title="Asia Pacific" value="APAC">APAC</option>
                <option id="us" title="United States" value="US">US</option>
            </select>
            <label for="elite-tier">
                Elite</label>
            <input id="elite-tier" type="radio" name="tier" value="elite" />
            <label for="premier-tier">
                Premier</label>
            <input id="premier-tier" type="radio" name="tier" value="premier" />
            <label for="select-tier">
                Select</label>
            <input id="select-tier" type="radio" name="tier" value="select" />
            </form>
            <input type="button" id="personTrigger" name="trigger" style="height: 20px; width: 40px;" />
        </div>


        <div id="companyDetail">
            <form  action="" method="post">
            <label for="companyName">
                Company Name</label>
            <input type="text" id="Text1" name="companyName" />
            </form>
            <input type="button" id="companyTrigger" name="trigger" style="height: 20px; width: 40px;" />
        </div>
    </div>
</body>
</html>
