<%-- 
    Document   : header
    Created on : 23 oct. 2018, 10:43:53
    Author     : Hachem
--%>
<style>
    body {margin:0;font-family:Arial}

    .topnav {
        overflow: hidden;
        background-color: #333;
    }

    .topnav a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    .active {
        background-color: #4CAF50;
        color: white;
    }

    .topnav .icon {
        display: none;
    }

    .dropdown1 {
        float: left;
        overflow: hidden;
    }

    .dropdown1 .dropbtn1 {
        font-size: 17px;    
        border: none;
        outline: none;
        color: white;
        padding: 14px 16px;
        background-color: inherit;
        font-family: inherit;
        margin: 0;
    }

    .dropdown-content1 {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content1 a {
        float: none;
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
    }

    .topnav a:hover, .dropdown1:hover .dropbtn1 {
        background-color: #555;
        color: white;
    }

    .dropdown-content1 a:hover {
        background-color: #ddd;
        color: black;
    }

    .dropdown1:hover .dropdown-content1 {
        display: block;
    }

    @media screen and (max-width: 600px) {
        .topnav a:not(:first-child), .dropdown1 .dropbtn1 {
            display: none;
        }
        .topnav a.icon {
            float: right;
            display: block;
        }
    }

    @media screen and (max-width: 600px) {
        .topnav.responsive {position: relative;}
        .topnav.responsive .icon {
            position: absolute;
            right: 0;
            top: 0;
        }
        .topnav.responsive a {
            float: none;
            display: block;
            text-align: left;
        }
        .topnav.responsive .dropdown1 {float: none;}
        .topnav.responsive .dropdown-content1 {position: relative;}
        .topnav.responsive .dropdown1 .dropbtn1 {
            display: block;
            width: 100%;
            text-align: left;
        }
    }
    /* ============================================================= */
    /* width */
    ::-webkit-scrollbar {
        width: 10px;
    }

    /* Track */
    ::-webkit-scrollbar-track {
        background: #f1f1f1; 
    }

    /* Handle */
    ::-webkit-scrollbar-thumb {
        background: #888; 
    }

    /* Handle on hover */
    ::-webkit-scrollbar-thumb:hover {
        background: #555; 
    }
    /* ============================================================= */

</style>
<div class="topnav  w3-margin1" id="myTopnav">
    <a href="#home" class=" bg-info w3-medium ">
        <i class="fa fa-home w3-medium w3-text-light-gray "></i>
        Home
    </a>
    <a href="#contact" class="w3-medium">QRQC</a>
    <a href="#about" class="w3-medium">Plan d'action</a>
    <a href="#about" class="w3-medium">Notifications</a>  
    <div class="dropdown1">
        <button class="dropbtn1 w3-medium">Guesmi Hachem 
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content1">
            <a href="#" class="w3-medium">Mon Profile</a>
            <a href="#" class="w3-medium">Editer mon Profile</a>
        </div>
    </div> 
    <a href="#about" class="w3-medium w3-red  w3-right">
        <i class="fa fa-power-off w3-text-white w3-medium"></i> 
    </a>   
    <a href="#" class="icon" onclick="myFunction();">
        <i class="fa fa-bars"></i>
    </a>
</div>

