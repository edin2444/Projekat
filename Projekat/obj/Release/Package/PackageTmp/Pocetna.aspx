<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Projekat.Pocetna" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veb sajt</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style type="text/css">
        .h1{
            text-align: center;
            color: white;
        }
        body{
            background-repeat:repeat-y;
            background-attachment:fixed;
            background-size: cover;
            box-shadow:inset 0 0 0 2000px rgba(0,0,255, 0.7);
        }
        .nav {
  background-color: blue;
  overflow: hidden;
}
.nav a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.nav a:hover {
  background-color: white;
  color: blue;
}
.nav a.active {
  background-color: white;
  color: blue;
}
.nav .icon {
  display: none;
}
@media screen and (max-width: 600px) {
  .nav a:not(:first-child) {display: none;}
  .nav a.icon {
    float: right;
    display: block;
  }
} 
@media screen and (max-width: 600px) {
  .nav.responsive {position: relative;}
  .nav.responsive a.icon {
    position: absolute;
    right: 0;
    top: 0;
  }
.nav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
@media screen and(max-width:800px){
  .h3{
    text-align: center;
  } 
  .p{
    text-align: center;
  }
  img{
    vertical-align: middle;
  } 
}
  </style>
</head>
<body style="background-image:url(Slike/jamie-clark-nfsmw510-wb-lg.jpg)">
    <div class="nav" id="navigacija" runat="server">
        <a href="Default.aspx" class="active">Home</a>
        <a href="Contact.aspx">Contact</a>
        <a href="About.aspx">About</a>
        <a href="javascript:void(0)" class="icon" onclick="otvorime()">
            <i class="fa fa-bars"></i>
        </a>
        </div>
    <h1 style="font-size: 100px;" class="h1">
        ARE YOU READY TO REIGNITE THE PURSUIT?
    </h1>

    <h1 style="font-size: 50px;color: white;">
        THE DEFINITIVE NEED FOR SPEED IS BACK!
    </h1>
    <div style="background-color: white;">
    <p style="font-size: 30px;text-align:left;">Buckle up,hit the gas and hold on  tight:the best-selling NFS of all time is back,bigger and better than ever!</p>
    <p style="font-size: 30px;text-align:center; line-height:3cm">But wait:What's technically BETTER than before?</p>
    <h3 style="margin-left: 6cm;" class="h3">Better Graphics</h3>
    <p style="margin-left: 6cm; font-size: 30px;" class="p">Because of the brand-new "World" engine(that was builded entirely<img src="Slike/MV5BNTYwNjY3ZWEtZTFmYy00YTljLTk2ZTUtZGFjZTZhZGE2M2NlXkEyXkFqcGdeQXVyNzMzMjE5NjI@._V1_.jpg"  alt="Nfsmw(2005)"  style="width: 350px;height: 200px;float: right;"><img src="Slike/nfsmwdemo.jpg" alt="nfsmwr(2023,yep,it's coming soon :) )" style="width: 350px;height: 200px;;float:right;"><br> in Unity),and with the use of High Dynamic Range 
        and Physically Based Rendering,you get much more natural and realistic graphics.</p>
    <h3 style="margin-left: 6cm; line-height: 2cm;"class="h3">Smoother Gameplay</h3>
    <p style="margin-left: 6cm; font-size: 30px;" class="p">With the new,smoother,more stunt-oriented gameplay,adrenaline<img src="Slike/gameplay 2.jpg" alt="Cops" style="width: 350px;height: 200px; float: right;"><img src="Slike/Asphalt-9-Legends-Lancer-1024x576.jpg" alt="Shokwave" style="width: 350px;height: 200px; float: right;"><br></p><p style="margin-left: 6cm; font-size: 30px;"> will pump in your veins!Perform flat spins and fill your Nitrous.<br></p><p style="margin-left: 6cm; font-size: 30px;">Then leave your opponents in dust with Shokwave.And yeah,cops are back!</p>
    <h3 style="margin-left: 6cm; line-height:2cm ;" class="h3">Tons Of New Content</h3>
    <p style="margin-left: 6cm; font-size: 30px;" class="p">With constant montly updates,expect always new,fresh content.From new<img src="Slike/low-poly-racing-pack-unitypackage.jpg" alt="lambo" style="width: 350px;height: 200px;float: right;"><a href="https://www.youtube.com/watch?v=K6eks03y7jI"><img src="Slike/maxresdefault.jpg" alt="Hurricane" style="width:350px;height:200px;float:right;"></a><br clear="all"><img src="Slike/neki stunt nmp.jpg" alt="golf" style="width: 350px;height: 200px;float: right;"><img src="Slike/ode.jpg" alt="ode BMW :("style="width: 350px;height: 200px;float:right;">OST(featuring Hurricane from Serbia :D ),new cars and new stories to new races and challenges,there's always something new to discover.</p>
    <p style="background-color: white; font-size: 30px; text-align: center; line-height: 3cm;">And get ready,we're just getting revved up!</p>
  </div>
  <h3 style="color: white; text-align: center;">SO,YOU HAVE WHAT IT TAKES TO BECOME THE MOST WANTED?</h3>
  <h3 style="color: white; text-align: center;">GET IT NOW AND BECOME NOTORIOUS...AGAIN!</h3>
  <div class="form-group text-center">
    <a href="Selekcija.aspx">
  <button type="button" class="btn btn-success btn-lg">Download Now</button>
    </a>
  </div>
    <script>
        function otvorime() {
  var x = document.getElementById("navigacija");
  if (x.className === "nav") {
    x.className += " responsive";
  } else {
    x.className = "nav";
  }
}
    </script>
</body>
</html>
