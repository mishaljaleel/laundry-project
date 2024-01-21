<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="laundry.adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css"/>

    <style>
        .main
        {
            display:flex;
            height:99.5vh;
            
        }
        .mainchild
        {
            
     
            
        }
        body{
            margin:0;
        }
                #wrapper {
          padding-left: 250px;
          -webkit-transition: all 0.5s ease;
          -moz-transition: all 0.5s ease;
          -o-transition: all 0.5s ease;
          transition: all 0.5s ease;
        }

        #wrapper.toggled {
          padding-left: 0px;
        }


        #sidebar-wrapper {
  
  
                position: fixed;
  
                            left: 250px;
  
                            width: 250px;
  
                            height: 100%;
  
                            margin-left: -250px;
  
                            overflow-y: scroll;

                  overflow-x: hidden;
                            background: #000;
  
                -webkit-transition: all 0.5s ease;
          -moz-transition: all 0.5s ease;
          -o-transition: all 0.5s ease;
          transition: all 0.5s ease;
    
        }


        #wrapper.toggled #sidebar-wrapper {width: 0px;
        }


        #page-content-wrapper {
          width: auto;
          position: absolute;
          padding: 50px;
        }


        #wrapper.toggled #page-content-wrapper {
          position: absolute;
          margin-right: -250px;
          width:100%;
        }




        /* Sidebar Styles */


        .sidebar-nav {
          position: absolute;
          top: 0;
          width: 250px;
          margin: 0;
          padding: 0;
          list-style: none;
        }


        .sidebar-nav li {
          text-indent: 20px;
          line-height: 60px;
        }


        .sidebar-nav li a {
          display: block;
          text-decoration: none;
          color: #999999;
        }


        .sidebar-nav li a:hover {
          text-decoration: none;
          color: #fff;
          background: rgba(255, 255, 255, 0.2);
        }


        .sidebar-nav li a:active, .sidebar-nav li a:focus {
          text-decoration: none;
        }


        .sidebar-nav>.sidebar-brand {
          height: 65px;
          font-size: 18px;
          line-height: 60px;
        }

        .sidebar-nav>.sidebar-brand a {
          color: #999999;
        }


        .sidebar-nav>.sidebar-brand a:hover {
          color: #fff;
          background: none;
        }

        iframe
        {
            overflow:hidden;
        }

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
     <div class="mainchild" style="width:15%;">
         <div id="wrapper">
  <!-- Sidebar -->
  <div id="sidebar-wrapper">
      <ul class="sidebar-nav">
          
          <li>
              <a href="adminhome.aspx">Home</a>
          </li>
          <li>
              <a href="add items.aspx" target="iframe_a">Add New Items</a>
          </li>
          <li>
              <a href="changedata.aspx" target="iframe_a">Change Data</a>
          </li>
          <li>
              <a href="admin_bikes_view.aspx" target="iframe_a">Show all bikes</a>
          </li>
          <li>
              <a href="#">Payment</a>
          </li>
          
          <li>
              <a href="#">About</a>
          </li>
          <li>
              <a href="#">Contact</a>
          </li>
  </ul>
  </div>
  </div>
     </div>
     <div class="mainchild" style="width:85%; ">
         <iframe name="iframe_a" style="width:100%;height:99.5%; " >

         </iframe>
     </div>
 </div>
    </form>
</body>
</html>
