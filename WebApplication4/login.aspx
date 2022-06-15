<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>Login Form Using HTML And CSS Only</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="container">
          <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Facebook-Login or Sign up</title>
    <!-- <link rel="stylesheet" href="style2.css"> -->
</head>
<body>
    <main>
        <div class="row">
            <div class="colm-logo">
                <img style="margin-left:55px" src="https://upload.wikimedia.org/wikipedia/en/4/47/VNRVJIETLogo.png" alt="Logo">
                <h2>Welcome to VNRVJIET here's the way where you can make your way easy</h2>
            </div>
            <div class="colm-form">
                <div class="form-container">
                  <asp:TextBox ID="username" runat="server" placeholder="Enter Username" OnTextChanged="username_TextChanged" ></asp:TextBox>
                  <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>            
                     <asp:Button CssClass="btn-login" Text="Login" runat="server" ID="login" OnClick="login_Click"   /> 
                    <a href="#">Forgotten password?</a>
                   <asp:Button CssClass="btn-new" Text="Create new Account" runat="server" ID="register" OnClick="register_Click"  />
                </div>
            </div>
        </div>
    </main>
    <footer>  
        <div class="footer-contents">
            <ol>
                <li>English (UK)</li>
                <li><a href="#">മലയാളം</a></li>
                <li><a href="#">தமிழ்</a></li>
                <li><a href="#">తెలుగు</a></li>
                <li><a href="#">বাংলা</a></li>
                <li><a href="#">اردو</a></li>
                <li><a href="#">हिन्दी</a></li>
                <li><a href="#">ಕನ್ನಡ</a></li>
                <li><a href="#">Español</a></li>
                <li><a href="#">Português (Brasil)</a></li>
                <li><a href="#">Français (France)</a></li>
                <li><button>+</button></li>

            </ol>
            
        </div>
    </footer>
</body>
</html>
           
        </div>
    </form>
</body>
</html>
