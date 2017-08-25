    <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Account_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script type="text/javascript">
    $('#preview').hide(); // 初始化時，設定圖片不顯示

    function setPreview(input) {
        $('#preview').show(); // 設定顯示圖片

        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#preview')
                .attr('src', e.target.result)
                
            //.maxHeight(30) // 設定圖片最大高度

           // .maxWidth('40px'); // 設定圖片最大寬度

        };
    reader.readAsDataURL(input.files[0]);
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img id="preview" src="#"  width="40px"/>
<input type="file" id="upload" name="upload" onchange="setPreview(this);"/>
    </div>
        <asp:Image ID="Image1" runat="server" />
    </form>
</body>
</html>
