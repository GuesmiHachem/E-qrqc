<%-- 
    Document   : d
    Created on : 22 oct. 2018, 18:39:46
    Author     : Hachem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="assets/__css.jsp" %>
        <style>
            /* ============================================================= */
            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            .topnav1 {
                overflow: hidden;
                background-color: #333;
            }

            .topnav1 a {
                float: left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .topnav1 a:hover {
                background-color: #ddd;
                color: black;
            }

            .active {
                background-color: #4CAF50;
                color: white;
            }

            .topnav1 .icon {
                display: none;
            }

            @media screen and (max-width: 600px) {
                .topnav1 a:not(:first-child) {display: none;}
                .topnav1 a.icon {
                    float: right;
                    display: block;
                }
            }

            @media screen and (max-width: 600px) {
                .topnav1.responsive {position: relative;}
                .topnav1.responsive .icon {
                    position: absolute;
                    right: 0;
                    top: 0;
                }
                .topnav1.responsive a {
                    float: none;
                    display: block;
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
    </head>
    <body  onload="startTime()" style="font-family: 'Roboto'" >

        <div class="w3-bar w3-black">
            <div class="w3-bar-item">
                <span class="w3-large w3-text-light-gray ">e-QRQC</span>
            </div>
            <div class="w3-bar-item">
                <i class="fa fa-calendar"></i>
                12/09/2018
            </div>
            <div class="w3-bar-item">
                <i class="ti-time"></i>
                <span id="time"></span> 
            </div>
            <div class="w3-bar-item">
                <i class="fa fa-phone-square"></i>
                55 302 695
            </div>
            <div class="w3-bar-item">
                <i class="fa fa-envelope"></i>
                guesmi.hachem@gmail.com 
            </div>

        </div>

        <div class="topnav1  w3-margin1" id="myTopnav">
            <a href="#home" class=" bg-info w3-medium ">
                <i class="fa fa-home w3-medium w3-text-light-gray "></i>
                Home
            </a>
            <a href="#contact" class="w3-medium">Contact</a>
            <a href="#about" class="w3-medium">About</a>
            <a href="#about" class="w3-medium">About</a>       
            <a href="#about" class="w3-medium w3-red w3-round w3-right">
                <i class="fa fa-power-off w3-text-white w3-medium"></i> 
            </a>    
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>

        <div class="container-fluid">
            <div class="row mb-2">

            </div>

            <div class="row">

                <div class="col-lg-4">
                    <div class="card bg-light mb-3" >
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <div class="ui small vertical menu">
                                <a class="active item">
                                    <div class="ui small teal label">1</div>
                                    Inbox
                                </a>
                                <a class="item">
                                    <div class="ui small label">51</div>
                                    Spam
                                </a>
                                <a class="item">
                                    <div class="ui small label">1</div>
                                    Updates
                                </a>
                                <div class="item">
                                    <div class="ui icon input">
                                        <input type="text" placeholder="Search mail...">
                                        <i class="search icon"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ui placeholder segment">
                        <div class="ui two column very relaxed stackable grid">
                            <div class="column">
                                <div class="ui form">
                                    <div class="field">
                                        <label>Username</label>
                                        <div class="ui left icon input">
                                            <input type="text" placeholder="Username">
                                            <i class="user icon"></i>
                                        </div>
                                    </div>
                                    <div class="field">
                                        <label>Password</label>
                                        <div class="ui left icon input">
                                            <input type="password">
                                            <i class="lock icon"></i>
                                        </div>
                                    </div>
                                    <div class="ui blue submit button">Login</div>
                                </div>
                            </div>
                            <div class="middle aligned column">
                                <div class="ui big button">
                                    <i class="signup icon"></i>
                                    Sign Up
                                </div>
                            </div>
                        </div>
                        <div class="ui vertical divider">
                            Or
                        </div>
                    </div>
                </div>

                <div class="col-lg-8">
                    <div class="card bg-light mb-3" >
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <div class="ui pointing menu">
                                <a class="item">
                                    Home
                                </a>
                                <a class="item active">
                                    Messages
                                </a>
                                <a class="item">
                                    Friends
                                </a>
                                <div class="right menu">
                                    <div class="item">
                                        <div class="ui transparent icon input">
                                            <input type="text" placeholder="Search...">
                                            <i class="search link icon"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ui segment">
                                <p></p>
                            </div>


                            <h5 class="card-title">Light card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                            <div class="ui inverted segment">
                                <button class="ui inverted button mb-2">Standard</button>
                                <button class="ui inverted primary button mb-2">Primary</button>
                                <button class="ui inverted secondary button mb-2">Secondary</button>
                                <button class="ui inverted red button mb-2">Red</button>
                                <button class="ui inverted orange button mb-2">Orange</button>
                                <button class="ui inverted yellow button mb-2">Yellow</button>
                                <button class="ui inverted olive button mb-2">Olive</button>
                                <button class="ui inverted green button mb-2">Green</button>
                                <button class="ui inverted teal button mb-2">Teal</button>
                                <button class="ui inverted blue button mb-2">Blue</button>
                                <button class="ui inverted violet button mb-2">Violet</button>
                                <button class="ui inverted purple button mb-2">Purple</button>
                                <button class="ui inverted pink button mb-2">Pink</button>
                                <button class="ui inverted brown button mb-2">Brown</button>
                                <button class="ui inverted grey button mb-2">Grey</button>
                                <button class="ui inverted black button mb-2">Black</button>
                            </div>

                            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="..." alt="First slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="..." alt="Second slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="..." alt="Third slide">
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                            <table id="example" class="table table-striped table-bordered " style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="w3-tiny">Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr>
                                    <tr>
                                        <td>Garrett Winters</td>
                                        <td>Accountant</td>
                                        <td>Tokyo</td>
                                        <td>63</td>
                                        <td>2011/07/25</td>
                                        <td>$170,750</td>
                                    </tr>
                                    <tr>
                                        <td>Ashton Cox</td>
                                        <td>Junior Technical Author</td>
                                        <td>San Francisco</td>
                                        <td>66</td>
                                        <td>2009/01/12</td>
                                        <td>$86,000</td>
                                    </tr>
                                    <tr>
                                        <td>Cedric Kelly</td>
                                        <td>Senior Javascript Developer</td>
                                        <td>Edinburgh</td>
                                        <td>22</td>
                                        <td>2012/03/29</td>
                                        <td>$433,060</td>
                                    </tr>
                                    <tr>
                                        <td>Airi Satou</td>
                                        <td>Accountant</td>
                                        <td>Tokyo</td>
                                        <td>33</td>
                                        <td>2008/11/28</td>
                                        <td>$162,700</td>
                                    </tr>
                                    <tr>
                                        <td>Brielle Williamson</td>
                                        <td>Integration Specialist</td>
                                        <td>New York</td>
                                        <td>61</td>
                                        <td>2012/12/02</td>
                                        <td>$372,000</td>
                                    </tr>
                                    <tr>
                                        <td>Herrod Chandler</td>
                                        <td>Sales Assistant</td>
                                        <td>San Francisco</td>
                                        <td>59</td>
                                        <td>2012/08/06</td>
                                        <td>$137,500</td>
                                    </tr>
                                    <tr>
                                        <td>Rhona Davidson</td>
                                        <td>Integration Specialist</td>
                                        <td>Tokyo</td>
                                        <td>55</td>
                                        <td>2010/10/14</td>
                                        <td>$327,900</td>
                                    </tr>
                                    <tr>
                                        <td>Colleen Hurst</td>
                                        <td>Javascript Developer</td>
                                        <td>San Francisco</td>
                                        <td>39</td>
                                        <td>2009/09/15</td>
                                        <td>$205,500</td>
                                    </tr>
                                    <tr>
                                        <td>Sonya Frost</td>
                                        <td>Software Engineer</td>
                                        <td>Edinburgh</td>
                                        <td>23</td>
                                        <td>2008/12/13</td>
                                        <td>$103,600</td>
                                    </tr>
                                    <tr>
                                        <td>Jena Gaines</td>
                                        <td>Office Manager</td>
                                        <td>London</td>
                                        <td>30</td>
                                        <td>2008/12/19</td>
                                        <td>$90,560</td>
                                    </tr>
                                    <tr>
                                        <td>Quinn Flynn</td>
                                        <td>Support Lead</td>
                                        <td>Edinburgh</td>
                                        <td>22</td>
                                        <td>2013/03/03</td>
                                        <td>$342,000</td>
                                    </tr>
                                    <tr>
                                        <td>Charde Marshall</td>
                                        <td>Regional Director</td>
                                        <td>San Francisco</td>
                                        <td>36</td>
                                        <td>2008/10/16</td>
                                        <td>$470,600</td>
                                    </tr>
                                    <tr>
                                        <td>Haley Kennedy</td>
                                        <td>Senior Marketing Designer</td>
                                        <td>London</td>
                                        <td>43</td>
                                        <td>2012/12/18</td>
                                        <td>$313,500</td>
                                    </tr>
                                    <tr>
                                        <td>Tatyana Fitzpatrick</td>
                                        <td>Regional Director</td>
                                        <td>London</td>
                                        <td>19</td>
                                        <td>2010/03/17</td>
                                        <td>$385,750</td>
                                    </tr>
                                    <tr>
                                        <td>Michael Silva</td>
                                        <td>Marketing Designer</td>
                                        <td>London</td>
                                        <td>66</td>
                                        <td>2012/11/27</td>
                                        <td>$198,500</td>
                                    </tr>
                                    <tr>
                                        <td>Paul Byrd</td>
                                        <td>Chief Financial Officer (CFO)</td>
                                        <td>New York</td>
                                        <td>64</td>
                                        <td>2010/06/09</td>
                                        <td>$725,000</td>
                                    </tr>
                                    <tr>
                                        <td>Gloria Little</td>
                                        <td>Systems Administrator</td>
                                        <td>New York</td>
                                        <td>59</td>
                                        <td>2009/04/10</td>
                                        <td>$237,500</td>
                                    </tr>
                                    <tr>
                                        <td>Bradley Greer</td>
                                        <td>Software Engineer</td>
                                        <td>London</td>
                                        <td>41</td>
                                        <td>2012/10/13</td>
                                        <td>$132,000</td>
                                    </tr>
                                    <tr>
                                        <td>Dai Rios</td>
                                        <td>Personnel Lead</td>
                                        <td>Edinburgh</td>
                                        <td>35</td>
                                        <td>2012/09/26</td>
                                        <td>$217,500</td>
                                    </tr>
                                    <tr>
                                        <td>Jenette Caldwell</td>
                                        <td>Development Lead</td>
                                        <td>New York</td>
                                        <td>30</td>
                                        <td>2011/09/03</td>
                                        <td>$345,000</td>
                                    </tr>
                                    <tr>
                                        <td>Yuri Berry</td>
                                        <td>Chief Marketing Officer (CMO)</td>
                                        <td>New York</td>
                                        <td>40</td>
                                        <td>2009/06/25</td>
                                        <td>$675,000</td>
                                    </tr>
                                    <tr>
                                        <td>Caesar Vance</td>
                                        <td>Pre-Sales Support</td>
                                        <td>New York</td>
                                        <td>21</td>
                                        <td>2011/12/12</td>
                                        <td>$106,450</td>
                                    </tr>
                                    <tr>
                                        <td>Doris Wilder</td>
                                        <td>Sales Assistant</td>
                                        <td>Sidney</td>
                                        <td>23</td>
                                        <td>2010/09/20</td>
                                        <td>$85,600</td>
                                    </tr>
                                    <tr>
                                        <td>Angelica Ramos</td>
                                        <td>Chief Executive Officer (CEO)</td>
                                        <td>London</td>
                                        <td>47</td>
                                        <td>2009/10/09</td>
                                        <td>$1,200,000</td>
                                    </tr>
                                    <tr>
                                        <td>Gavin Joyce</td>
                                        <td>Developer</td>
                                        <td>Edinburgh</td>
                                        <td>42</td>
                                        <td>2010/12/22</td>
                                        <td>$92,575</td>
                                    </tr>
                                    <tr>
                                        <td>Jennifer Chang</td>
                                        <td>Regional Director</td>
                                        <td>Singapore</td>
                                        <td>28</td>
                                        <td>2010/11/14</td>
                                        <td>$357,650</td>
                                    </tr>
                                    <tr>
                                        <td>Brenden Wagner</td>
                                        <td>Software Engineer</td>
                                        <td>San Francisco</td>
                                        <td>28</td>
                                        <td>2011/06/07</td>
                                        <td>$206,850</td>
                                    </tr>
                                    <tr>
                                        <td>Fiona Green</td>
                                        <td>Chief Operating Officer (COO)</td>
                                        <td>San Francisco</td>
                                        <td>48</td>
                                        <td>2010/03/11</td>
                                        <td>$850,000</td>
                                    </tr>
                                    <tr>
                                        <td>Shou Itou</td>
                                        <td>Regional Marketing</td>
                                        <td>Tokyo</td>
                                        <td>20</td>
                                        <td>2011/08/14</td>
                                        <td>$163,000</td>
                                    </tr>
                                    <tr>
                                        <td>Michelle House</td>
                                        <td>Integration Specialist</td>
                                        <td>Sidney</td>
                                        <td>37</td>
                                        <td>2011/06/02</td>
                                        <td>$95,400</td>
                                    </tr>
                                    <tr>
                                        <td>Suki Burks</td>
                                        <td>Developer</td>
                                        <td>London</td>
                                        <td>53</td>
                                        <td>2009/10/22</td>
                                        <td>$114,500</td>
                                    </tr>
                                    <tr>
                                        <td>Prescott Bartlett</td>
                                        <td>Technical Author</td>
                                        <td>London</td>
                                        <td>27</td>
                                        <td>2011/05/07</td>
                                        <td>$145,000</td>
                                    </tr>
                                    <tr>
                                        <td>Gavin Cortez</td>
                                        <td>Team Leader</td>
                                        <td>San Francisco</td>
                                        <td>22</td>
                                        <td>2008/10/26</td>
                                        <td>$235,500</td>
                                    </tr>
                                    <tr>
                                        <td>Martena Mccray</td>
                                        <td>Post-Sales support</td>
                                        <td>Edinburgh</td>
                                        <td>46</td>
                                        <td>2011/03/09</td>
                                        <td>$324,050</td>
                                    </tr>
                                    <tr>
                                        <td>Unity Butler</td>
                                        <td>Marketing Designer</td>
                                        <td>San Francisco</td>
                                        <td>47</td>
                                        <td>2009/12/09</td>
                                        <td>$85,675</td>
                                    </tr>
                                    <tr>
                                        <td>Howard Hatfield</td>
                                        <td>Office Manager</td>
                                        <td>San Francisco</td>
                                        <td>51</td>
                                        <td>2008/12/16</td>
                                        <td>$164,500</td>
                                    </tr>
                                    <tr>
                                        <td>Hope Fuentes</td>
                                        <td>Secretary</td>
                                        <td>San Francisco</td>
                                        <td>41</td>
                                        <td>2010/02/12</td>
                                        <td>$109,850</td>
                                    </tr>
                                    <tr>
                                        <td>Vivian Harrell</td>
                                        <td>Financial Controller</td>
                                        <td>San Francisco</td>
                                        <td>62</td>
                                        <td>2009/02/14</td>
                                        <td>$452,500</td>
                                    </tr>
                                    <tr>
                                        <td>Timothy Mooney</td>
                                        <td>Office Manager</td>
                                        <td>London</td>
                                        <td>37</td>
                                        <td>2008/12/11</td>
                                        <td>$136,200</td>
                                    </tr>
                                    <tr>
                                        <td>Jackson Bradshaw</td>
                                        <td>Director</td>
                                        <td>New York</td>
                                        <td>65</td>
                                        <td>2008/09/26</td>
                                        <td>$645,750</td>
                                    </tr>
                                    <tr>
                                        <td>Olivia Liang</td>
                                        <td>Support Engineer</td>
                                        <td>Singapore</td>
                                        <td>64</td>
                                        <td>2011/02/03</td>
                                        <td>$234,500</td>
                                    </tr>
                                    <tr>
                                        <td>Bruno Nash</td>
                                        <td>Software Engineer</td>
                                        <td>London</td>
                                        <td>38</td>
                                        <td>2011/05/03</td>
                                        <td>$163,500</td>
                                    </tr>
                                    <tr>
                                        <td>Sakura Yamamoto</td>
                                        <td>Support Engineer</td>
                                        <td>Tokyo</td>
                                        <td>37</td>
                                        <td>2009/08/19</td>
                                        <td>$139,575</td>
                                    </tr>
                                    <tr>
                                        <td>Thor Walton</td>
                                        <td>Developer</td>
                                        <td>New York</td>
                                        <td>61</td>
                                        <td>2013/08/11</td>
                                        <td>$98,540</td>
                                    </tr>
                                    <tr>
                                        <td>Finn Camacho</td>
                                        <td>Support Engineer</td>
                                        <td>San Francisco</td>
                                        <td>47</td>
                                        <td>2009/07/07</td>
                                        <td>$87,500</td>
                                    </tr>
                                    <tr>
                                        <td>Serge Baldwin</td>
                                        <td>Data Coordinator</td>
                                        <td>Singapore</td>
                                        <td>64</td>
                                        <td>2012/04/09</td>
                                        <td>$138,575</td>
                                    </tr>
                                    <tr>
                                        <td>Zenaida Frank</td>
                                        <td>Software Engineer</td>
                                        <td>New York</td>
                                        <td>63</td>
                                        <td>2010/01/04</td>
                                        <td>$125,250</td>
                                    </tr>
                                    <tr>
                                        <td>Zorita Serrano</td>
                                        <td>Software Engineer</td>
                                        <td>San Francisco</td>
                                        <td>56</td>
                                        <td>2012/06/01</td>
                                        <td>$115,000</td>
                                    </tr>
                                    <tr>
                                        <td>Jennifer Acosta</td>
                                        <td>Junior Javascript Developer</td>
                                        <td>Edinburgh</td>
                                        <td>43</td>
                                        <td>2013/02/01</td>
                                        <td>$75,650</td>
                                    </tr>
                                    <tr>
                                        <td>Cara Stevens</td>
                                        <td>Sales Assistant</td>
                                        <td>New York</td>
                                        <td>46</td>
                                        <td>2011/12/06</td>
                                        <td>$145,600</td>
                                    </tr>
                                    <tr>
                                        <td>Hermione Butler</td>
                                        <td>Regional Director</td>
                                        <td>London</td>
                                        <td>47</td>
                                        <td>2011/03/21</td>
                                        <td>$356,250</td>
                                    </tr>
                                    <tr>
                                        <td>Lael Greer</td>
                                        <td>Systems Administrator</td>
                                        <td>London</td>
                                        <td>21</td>
                                        <td>2009/02/27</td>
                                        <td>$103,500</td>
                                    </tr>
                                    <tr>
                                        <td>Jonas Alexander</td>
                                        <td>Developer</td>
                                        <td>San Francisco</td>
                                        <td>30</td>
                                        <td>2010/07/14</td>
                                        <td>$86,500</td>
                                    </tr>
                                    <tr>
                                        <td>Shad Decker</td>
                                        <td>Regional Director</td>
                                        <td>Edinburgh</td>
                                        <td>51</td>
                                        <td>2008/11/13</td>
                                        <td>$183,000</td>
                                    </tr>
                                    <tr>
                                        <td>Michael Bruce</td>
                                        <td>Javascript Developer</td>
                                        <td>Singapore</td>
                                        <td>29</td>
                                        <td>2011/06/27</td>
                                        <td>$183,000</td>
                                    </tr>
                                    <tr>
                                        <td>Donna Snider</td>
                                        <td>Customer Support</td>
                                        <td>New York</td>
                                        <td>27</td>
                                        <td>2011/01/25</td>
                                        <td>$112,000</td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="ui ordered steps w3-row">
                            <div class="completed step">
                                <div class="content">
                                    <div class="title">Shipping</div>
                                    <div class="description">Choose your shipping options</div>
                                </div>
                            </div>
                            <div class="completed step">
                                <div class="content">
                                    <div class="title">Billing</div>
                                    <div class="description">Enter billing information</div>
                                </div>
                            </div>
                            <div class="active step">
                                <div class="content">
                                    <div class="title">Confirm Order</div>
                                    <div class="description">Verify order details</div>
                                </div>
                            </div>
                        </div>

                        <div class="ui toggle checkbox">
                            <input type="checkbox" name="public">
                            <label>Subscribe to weekly newsletter</label>
                        </div>

                        <div class="ui selection dropdown">
                            <input type="hidden" name="gender">
                            <i class="dropdown icon"></i>
                            <div class="default text">Gender</div>
                            <div class="menu">
                                <div class="item" data-value="1">Male</div>
                                <div class="item" data-value="0">Female</div>
                            </div>
                        </div>
                        <br> <br> <br>
                        <div class="ui form">
                            <div class="field">
                                <label>Country</label>
                                <select class="ui search dropdown">
                                    <option value="">Select Country</option>
                                    <option value="AF">Afghanistan</option>
                                    <option value="AX">Åland Islands</option>
                                    <option value="AL">Albania</option>
                                    <option value="DZ">Algeria</option>
                                    <option value="AS">American Samoa</option>
                                    <option value="AD">Andorra</option>
                                    <option value="AO">Angola</option>
                                    <option value="AI">Anguilla</option>
                                    <option value="AQ">Antarctica</option>
                                    <option value="AG">Antigua and Barbuda</option>
                                    <option value="AR">Argentina</option>
                                    <option value="AM">Armenia</option>
                                    <option value="AW">Aruba</option>
                                    <option value="AU">Australia</option>
                                    <option value="AT">Austria</option>
                                    <option value="AZ">Azerbaijan</option>
                                    <option value="BS">Bahamas</option>
                                    <option value="BH">Bahrain</option>
                                    <option value="BD">Bangladesh</option>
                                    <option value="BB">Barbados</option>
                                    <option value="BY">Belarus</option>
                                    <option value="BE">Belgium</option>
                                    <option value="BZ">Belize</option>
                                    <option value="BJ">Benin</option>
                                    <option value="BM">Bermuda</option>
                                    <option value="BT">Bhutan</option>
                                    <option value="BO">Bolivia, Plurinational State of</option>
                                    <option value="BQ">Bonaire, Sint Eustatius and Saba</option>
                                    <option value="BA">Bosnia and Herzegovina</option>
                                    <option value="BW">Botswana</option>
                                    <option value="BV">Bouvet Island</option>
                                    <option value="BR">Brazil</option>
                                    <option value="IO">British Indian Ocean Territory</option>
                                    <option value="BN">Brunei Darussalam</option>
                                    <option value="BG">Bulgaria</option>
                                    <option value="BF">Burkina Faso</option>
                                    <option value="BI">Burundi</option>
                                    <option value="KH">Cambodia</option>
                                    <option value="CM">Cameroon</option>
                                    <option value="CA">Canada</option>
                                    <option value="CV">Cape Verde</option>
                                    <option value="KY">Cayman Islands</option>
                                    <option value="CF">Central African Republic</option>
                                    <option value="TD">Chad</option>
                                    <option value="CL">Chile</option>
                                    <option value="CN">China</option>
                                    <option value="CX">Christmas Island</option>
                                    <option value="CC">Cocos (Keeling) Islands</option>
                                    <option value="CO">Colombia</option>
                                    <option value="KM">Comoros</option>
                                    <option value="CG">Congo</option>
                                    <option value="CD">Congo, the Democratic Republic of the</option>
                                    <option value="CK">Cook Islands</option>
                                    <option value="CR">Costa Rica</option>
                                    <option value="CI">Côte d'Ivoire</option>
                                    <option value="HR">Croatia</option>
                                    <option value="CU">Cuba</option>
                                    <option value="CW">Curaçao</option>
                                    <option value="CY">Cyprus</option>
                                    <option value="CZ">Czech Republic</option>
                                    <option value="DK">Denmark</option>
                                    <option value="DJ">Djibouti</option>
                                    <option value="DM">Dominica</option>
                                    <option value="DO">Dominican Republic</option>
                                    <option value="EC">Ecuador</option>
                                    <option value="EG">Egypt</option>
                                    <option value="SV">El Salvador</option>
                                    <option value="GQ">Equatorial Guinea</option>
                                    <option value="ER">Eritrea</option>
                                    <option value="EE">Estonia</option>
                                    <option value="ET">Ethiopia</option>
                                    <option value="FK">Falkland Islands (Malvinas)</option>
                                    <option value="FO">Faroe Islands</option>
                                    <option value="FJ">Fiji</option>
                                    <option value="FI">Finland</option>
                                    <option value="FR">France</option>
                                    <option value="GF">French Guiana</option>
                                    <option value="PF">French Polynesia</option>
                                    <option value="TF">French Southern Territories</option>
                                    <option value="GA">Gabon</option>
                                    <option value="GM">Gambia</option>
                                    <option value="GE">Georgia</option>
                                    <option value="DE">Germany</option>
                                    <option value="GH">Ghana</option>
                                    <option value="GI">Gibraltar</option>
                                    <option value="GR">Greece</option>
                                    <option value="GL">Greenland</option>
                                    <option value="GD">Grenada</option>
                                    <option value="GP">Guadeloupe</option>
                                    <option value="GU">Guam</option>
                                    <option value="GT">Guatemala</option>
                                    <option value="GG">Guernsey</option>
                                    <option value="GN">Guinea</option>
                                    <option value="GW">Guinea-Bissau</option>
                                    <option value="GY">Guyana</option>
                                    <option value="HT">Haiti</option>
                                    <option value="HM">Heard Island and McDonald Islands</option>
                                    <option value="VA">Holy See (Vatican City State)</option>
                                    <option value="HN">Honduras</option>
                                    <option value="HK">Hong Kong</option>
                                    <option value="HU">Hungary</option>
                                    <option value="IS">Iceland</option>
                                    <option value="IN">India</option>
                                    <option value="ID">Indonesia</option>
                                    <option value="IR">Iran, Islamic Republic of</option>
                                    <option value="IQ">Iraq</option>
                                    <option value="IE">Ireland</option>
                                    <option value="IM">Isle of Man</option>
                                    <option value="IL">Israel</option>
                                    <option value="IT">Italy</option>
                                    <option value="JM">Jamaica</option>
                                    <option value="JP">Japan</option>
                                    <option value="JE">Jersey</option>
                                    <option value="JO">Jordan</option>
                                    <option value="KZ">Kazakhstan</option>
                                    <option value="KE">Kenya</option>
                                    <option value="KI">Kiribati</option>
                                    <option value="KP">Korea, Democratic People's Republic of</option>
                                    <option value="KR">Korea, Republic of</option>
                                    <option value="KW">Kuwait</option>
                                    <option value="KG">Kyrgyzstan</option>
                                    <option value="LA">Lao People's Democratic Republic</option>
                                    <option value="LV">Latvia</option>
                                    <option value="LB">Lebanon</option>
                                    <option value="LS">Lesotho</option>
                                    <option value="LR">Liberia</option>
                                    <option value="LY">Libya</option>
                                    <option value="LI">Liechtenstein</option>
                                    <option value="LT">Lithuania</option>
                                    <option value="LU">Luxembourg</option>
                                    <option value="MO">Macao</option>
                                    <option value="MK">Macedonia, the former Yugoslav Republic of</option>
                                    <option value="MG">Madagascar</option>
                                    <option value="MW">Malawi</option>
                                    <option value="MY">Malaysia</option>
                                    <option value="MV">Maldives</option>
                                    <option value="ML">Mali</option>
                                    <option value="MT">Malta</option>
                                    <option value="MH">Marshall Islands</option>
                                    <option value="MQ">Martinique</option>
                                    <option value="MR">Mauritania</option>
                                    <option value="MU">Mauritius</option>
                                    <option value="YT">Mayotte</option>
                                    <option value="MX">Mexico</option>
                                    <option value="FM">Micronesia, Federated States of</option>
                                    <option value="MD">Moldova, Republic of</option>
                                    <option value="MC">Monaco</option>
                                    <option value="MN">Mongolia</option>
                                    <option value="ME">Montenegro</option>
                                    <option value="MS">Montserrat</option>
                                    <option value="MA">Morocco</option>
                                    <option value="MZ">Mozambique</option>
                                    <option value="MM">Myanmar</option>
                                    <option value="NA">Namibia</option>
                                    <option value="NR">Nauru</option>
                                    <option value="NP">Nepal</option>
                                    <option value="NL">Netherlands</option>
                                    <option value="NC">New Caledonia</option>
                                    <option value="NZ">New Zealand</option>
                                    <option value="NI">Nicaragua</option>
                                    <option value="NE">Niger</option>
                                    <option value="NG">Nigeria</option>
                                    <option value="NU">Niue</option>
                                    <option value="NF">Norfolk Island</option>
                                    <option value="MP">Northern Mariana Islands</option>
                                    <option value="NO">Norway</option>
                                    <option value="OM">Oman</option>
                                    <option value="PK">Pakistan</option>
                                    <option value="PW">Palau</option>
                                    <option value="PS">Palestinian Territory, Occupied</option>
                                    <option value="PA">Panama</option>
                                    <option value="PG">Papua New Guinea</option>
                                    <option value="PY">Paraguay</option>
                                    <option value="PE">Peru</option>
                                    <option value="PH">Philippines</option>
                                    <option value="PN">Pitcairn</option>
                                    <option value="PL">Poland</option>
                                    <option value="PT">Portugal</option>
                                    <option value="PR">Puerto Rico</option>
                                    <option value="QA">Qatar</option>
                                    <option value="RE">Réunion</option>
                                    <option value="RO">Romania</option>
                                    <option value="RU">Russian Federation</option>
                                    <option value="RW">Rwanda</option>
                                    <option value="BL">Saint Barthélemy</option>
                                    <option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
                                    <option value="KN">Saint Kitts and Nevis</option>
                                    <option value="LC">Saint Lucia</option>
                                    <option value="MF">Saint Martin (French part)</option>
                                    <option value="PM">Saint Pierre and Miquelon</option>
                                    <option value="VC">Saint Vincent and the Grenadines</option>
                                    <option value="WS">Samoa</option>
                                    <option value="SM">San Marino</option>
                                    <option value="ST">Sao Tome and Principe</option>
                                    <option value="SA">Saudi Arabia</option>
                                    <option value="SN">Senegal</option>
                                    <option value="RS">Serbia</option>
                                    <option value="SC">Seychelles</option>
                                    <option value="SL">Sierra Leone</option>
                                    <option value="SG">Singapore</option>
                                    <option value="SX">Sint Maarten (Dutch part)</option>
                                    <option value="SK">Slovakia</option>
                                    <option value="SI">Slovenia</option>
                                    <option value="SB">Solomon Islands</option>
                                    <option value="SO">Somalia</option>
                                    <option value="ZA">South Africa</option>
                                    <option value="GS">South Georgia and the South Sandwich Islands</option>
                                    <option value="SS">South Sudan</option>
                                    <option value="ES">Spain</option>
                                    <option value="LK">Sri Lanka</option>
                                    <option value="SD">Sudan</option>
                                    <option value="SR">Suriname</option>
                                    <option value="SJ">Svalbard and Jan Mayen</option>
                                    <option value="SZ">Swaziland</option>
                                    <option value="SE">Sweden</option>
                                    <option value="CH">Switzerland</option>
                                    <option value="SY">Syrian Arab Republic</option>
                                    <option value="TW">Taiwan, Province of China</option>
                                    <option value="TJ">Tajikistan</option>
                                    <option value="TZ">Tanzania, United Republic of</option>
                                    <option value="TH">Thailand</option>
                                    <option value="TL">Timor-Leste</option>
                                    <option value="TG">Togo</option>
                                    <option value="TK">Tokelau</option>
                                    <option value="TO">Tonga</option>
                                    <option value="TT">Trinidad and Tobago</option>
                                    <option value="TN">Tunisia</option>
                                    <option value="TR">Turkey</option>
                                    <option value="TM">Turkmenistan</option>
                                    <option value="TC">Turks and Caicos Islands</option>
                                    <option value="TV">Tuvalu</option>
                                    <option value="UG">Uganda</option>
                                    <option value="UA">Ukraine</option>
                                    <option value="AE">United Arab Emirates</option>
                                    <option value="GB">United Kingdom</option>
                                    <option value="US">United States</option>
                                    <option value="UM">United States Minor Outlying Islands</option>
                                    <option value="UY">Uruguay</option>
                                    <option value="UZ">Uzbekistan</option>
                                    <option value="VU">Vanuatu</option>
                                    <option value="VE">Venezuela, Bolivarian Republic of</option>
                                    <option value="VN">Viet Nam</option>
                                    <option value="VG">Virgin Islands, British</option>
                                    <option value="VI">Virgin Islands, U.S.</option>
                                    <option value="WF">Wallis and Futuna</option>
                                    <option value="EH">Western Sahara</option>
                                    <option value="YE">Yemen</option>
                                    <option value="ZM">Zambia</option>
                                    <option value="ZW">Zimbabwe</option>
                                </select>
                            </div>
                        </div>
                        <br>
                        <div class="ui fluid multiple search selection dropdown">
                            <input type="hidden" name="country">
                            <i class="dropdown icon"></i>
                            <div class="default text">Select Country</div>
                            <div class="menu">
                                <div class="item" data-value="af"><i class="af flag"></i>Afghanistan</div>
                                <div class="item" data-value="ax"><i class="ax flag"></i>Aland Islands</div>
                                <div class="item" data-value="al"><i class="al flag"></i>Albania</div>
                                <div class="item" data-value="dz"><i class="dz flag"></i>Algeria</div>
                                <div class="item" data-value="as"><i class="as flag"></i>American Samoa</div>
                                <div class="item" data-value="ad"><i class="ad flag"></i>Andorra</div>
                                <div class="item" data-value="ao"><i class="ao flag"></i>Angola</div>
                                <div class="item" data-value="ai"><i class="ai flag"></i>Anguilla</div>
                                <div class="item" data-value="ag"><i class="ag flag"></i>Antigua</div>
                                <div class="item" data-value="ar"><i class="ar flag"></i>Argentina</div>
                                <div class="item" data-value="am"><i class="am flag"></i>Armenia</div>
                                <div class="item" data-value="aw"><i class="aw flag"></i>Aruba</div>
                                <div class="item" data-value="au"><i class="au flag"></i>Australia</div>
                                <div class="item" data-value="at"><i class="at flag"></i>Austria</div>
                                <div class="item" data-value="az"><i class="az flag"></i>Azerbaijan</div>
                                <div class="item" data-value="bs"><i class="bs flag"></i>Bahamas</div>
                                <div class="item" data-value="bh"><i class="bh flag"></i>Bahrain</div>
                                <div class="item" data-value="bd"><i class="bd flag"></i>Bangladesh</div>
                                <div class="item" data-value="bb"><i class="bb flag"></i>Barbados</div>
                                <div class="item" data-value="by"><i class="by flag"></i>Belarus</div>
                                <div class="item" data-value="be"><i class="be flag"></i>Belgium</div>
                                <div class="item" data-value="bz"><i class="bz flag"></i>Belize</div>
                                <div class="item" data-value="bj"><i class="bj flag"></i>Benin</div>
                                <div class="item" data-value="bm"><i class="bm flag"></i>Bermuda</div>
                                <div class="item" data-value="bt"><i class="bt flag"></i>Bhutan</div>
                                <div class="item" data-value="bo"><i class="bo flag"></i>Bolivia</div>
                                <div class="item" data-value="ba"><i class="ba flag"></i>Bosnia</div>
                                <div class="item" data-value="bw"><i class="bw flag"></i>Botswana</div>
                                <div class="item" data-value="bv"><i class="bv flag"></i>Bouvet Island</div>
                                <div class="item" data-value="br"><i class="br flag"></i>Brazil</div>
                                <div class="item" data-value="vg"><i class="vg flag"></i>British Virgin Islands</div>
                                <div class="item" data-value="bn"><i class="bn flag"></i>Brunei</div>
                                <div class="item" data-value="bg"><i class="bg flag"></i>Bulgaria</div>
                                <div class="item" data-value="bf"><i class="bf flag"></i>Burkina Faso</div>
                                <div class="item" data-value="mm"><i class="mm flag"></i>Burma</div>
                                <div class="item" data-value="bi"><i class="bi flag"></i>Burundi</div>
                                <div class="item" data-value="tc"><i class="tc flag"></i>Caicos Islands</div>
                                <div class="item" data-value="kh"><i class="kh flag"></i>Cambodia</div>
                                <div class="item" data-value="cm"><i class="cm flag"></i>Cameroon</div>
                                <div class="item" data-value="ca"><i class="ca flag"></i>Canada</div>
                                <div class="item" data-value="cv"><i class="cv flag"></i>Cape Verde</div>
                                <div class="item" data-value="ky"><i class="ky flag"></i>Cayman Islands</div>
                                <div class="item" data-value="cf"><i class="cf flag"></i>Central African Republic</div>
                                <div class="item" data-value="td"><i class="td flag"></i>Chad</div>
                                <div class="item" data-value="cl"><i class="cl flag"></i>Chile</div>
                                <div class="item" data-value="cn"><i class="cn flag"></i>China</div>
                                <div class="item" data-value="cx"><i class="cx flag"></i>Christmas Island</div>
                                <div class="item" data-value="cc"><i class="cc flag"></i>Cocos Islands</div>
                                <div class="item" data-value="co"><i class="co flag"></i>Colombia</div>
                                <div class="item" data-value="km"><i class="km flag"></i>Comoros</div>
                                <div class="item" data-value="cg"><i class="cg flag"></i>Congo Brazzaville</div>
                                <div class="item" data-value="cd"><i class="cd flag"></i>Congo</div>
                                <div class="item" data-value="ck"><i class="ck flag"></i>Cook Islands</div>
                                <div class="item" data-value="cr"><i class="cr flag"></i>Costa Rica</div>
                                <div class="item" data-value="ci"><i class="ci flag"></i>Cote Divoire</div>
                                <div class="item" data-value="hr"><i class="hr flag"></i>Croatia</div>
                                <div class="item" data-value="cu"><i class="cu flag"></i>Cuba</div>
                                <div class="item" data-value="cy"><i class="cy flag"></i>Cyprus</div>
                                <div class="item" data-value="cz"><i class="cz flag"></i>Czech Republic</div>
                                <div class="item" data-value="dk"><i class="dk flag"></i>Denmark</div>
                                <div class="item" data-value="dj"><i class="dj flag"></i>Djibouti</div>
                                <div class="item" data-value="dm"><i class="dm flag"></i>Dominica</div>
                                <div class="item" data-value="do"><i class="do flag"></i>Dominican Republic</div>
                                <div class="item" data-value="ec"><i class="ec flag"></i>Ecuador</div>
                                <div class="item" data-value="eg"><i class="eg flag"></i>Egypt</div>
                                <div class="item" data-value="sv"><i class="sv flag"></i>El Salvador</div>
                                <div class="item" data-value="gb"><i class="gb flag"></i>England</div>
                                <div class="item" data-value="gq"><i class="gq flag"></i>Equatorial Guinea</div>
                                <div class="item" data-value="er"><i class="er flag"></i>Eritrea</div>
                                <div class="item" data-value="ee"><i class="ee flag"></i>Estonia</div>
                                <div class="item" data-value="et"><i class="et flag"></i>Ethiopia</div>
                                <div class="item" data-value="eu"><i class="eu flag"></i>European Union</div>
                                <div class="item" data-value="fk"><i class="fk flag"></i>Falkland Islands</div>
                                <div class="item" data-value="fo"><i class="fo flag"></i>Faroe Islands</div>
                                <div class="item" data-value="fj"><i class="fj flag"></i>Fiji</div>
                                <div class="item" data-value="fi"><i class="fi flag"></i>Finland</div>
                                <div class="item" data-value="fr"><i class="fr flag"></i>France</div>
                                <div class="item" data-value="gf"><i class="gf flag"></i>French Guiana</div>
                                <div class="item" data-value="pf"><i class="pf flag"></i>French Polynesia</div>
                                <div class="item" data-value="tf"><i class="tf flag"></i>French Territories</div>
                                <div class="item" data-value="ga"><i class="ga flag"></i>Gabon</div>
                                <div class="item" data-value="gm"><i class="gm flag"></i>Gambia</div>
                                <div class="item" data-value="ge"><i class="ge flag"></i>Georgia</div>
                                <div class="item" data-value="de"><i class="de flag"></i>Germany</div>
                                <div class="item" data-value="gh"><i class="gh flag"></i>Ghana</div>
                                <div class="item" data-value="gi"><i class="gi flag"></i>Gibraltar</div>
                                <div class="item" data-value="gr"><i class="gr flag"></i>Greece</div>
                                <div class="item" data-value="gl"><i class="gl flag"></i>Greenland</div>
                                <div class="item" data-value="gd"><i class="gd flag"></i>Grenada</div>
                                <div class="item" data-value="gp"><i class="gp flag"></i>Guadeloupe</div>
                                <div class="item" data-value="gu"><i class="gu flag"></i>Guam</div>
                                <div class="item" data-value="gt"><i class="gt flag"></i>Guatemala</div>
                                <div class="item" data-value="gw"><i class="gw flag"></i>Guinea-Bissau</div>
                                <div class="item" data-value="gn"><i class="gn flag"></i>Guinea</div>
                                <div class="item" data-value="gy"><i class="gy flag"></i>Guyana</div>
                                <div class="item" data-value="ht"><i class="ht flag"></i>Haiti</div>
                                <div class="item" data-value="hm"><i class="hm flag"></i>Heard Island</div>
                                <div class="item" data-value="hn"><i class="hn flag"></i>Honduras</div>
                                <div class="item" data-value="hk"><i class="hk flag"></i>Hong Kong</div>
                                <div class="item" data-value="hu"><i class="hu flag"></i>Hungary</div>
                                <div class="item" data-value="is"><i class="is flag"></i>Iceland</div>
                                <div class="item" data-value="in"><i class="in flag"></i>India</div>
                                <div class="item" data-value="io"><i class="io flag"></i>Indian Ocean Territory</div>
                                <div class="item" data-value="id"><i class="id flag"></i>Indonesia</div>
                                <div class="item" data-value="ir"><i class="ir flag"></i>Iran</div>
                                <div class="item" data-value="iq"><i class="iq flag"></i>Iraq</div>
                                <div class="item" data-value="ie"><i class="ie flag"></i>Ireland</div>
                                <div class="item" data-value="il"><i class="il flag"></i>Israel</div>
                                <div class="item" data-value="it"><i class="it flag"></i>Italy</div>
                                <div class="item" data-value="jm"><i class="jm flag"></i>Jamaica</div>
                                <div class="item" data-value="jp"><i class="jp flag"></i>Japan</div>
                                <div class="item" data-value="jo"><i class="jo flag"></i>Jordan</div>
                                <div class="item" data-value="kz"><i class="kz flag"></i>Kazakhstan</div>
                                <div class="item" data-value="ke"><i class="ke flag"></i>Kenya</div>
                                <div class="item" data-value="ki"><i class="ki flag"></i>Kiribati</div>
                                <div class="item" data-value="kw"><i class="kw flag"></i>Kuwait</div>
                                <div class="item" data-value="kg"><i class="kg flag"></i>Kyrgyzstan</div>
                                <div class="item" data-value="la"><i class="la flag"></i>Laos</div>
                                <div class="item" data-value="lv"><i class="lv flag"></i>Latvia</div>
                                <div class="item" data-value="lb"><i class="lb flag"></i>Lebanon</div>
                                <div class="item" data-value="ls"><i class="ls flag"></i>Lesotho</div>
                                <div class="item" data-value="lr"><i class="lr flag"></i>Liberia</div>
                                <div class="item" data-value="ly"><i class="ly flag"></i>Libya</div>
                                <div class="item" data-value="li"><i class="li flag"></i>Liechtenstein</div>
                                <div class="item" data-value="lt"><i class="lt flag"></i>Lithuania</div>
                                <div class="item" data-value="lu"><i class="lu flag"></i>Luxembourg</div>
                                <div class="item" data-value="mo"><i class="mo flag"></i>Macau</div>
                                <div class="item" data-value="mk"><i class="mk flag"></i>Macedonia</div>
                                <div class="item" data-value="mg"><i class="mg flag"></i>Madagascar</div>
                                <div class="item" data-value="mw"><i class="mw flag"></i>Malawi</div>
                                <div class="item" data-value="my"><i class="my flag"></i>Malaysia</div>
                                <div class="item" data-value="mv"><i class="mv flag"></i>Maldives</div>
                                <div class="item" data-value="ml"><i class="ml flag"></i>Mali</div>
                                <div class="item" data-value="mt"><i class="mt flag"></i>Malta</div>
                                <div class="item" data-value="mh"><i class="mh flag"></i>Marshall Islands</div>
                                <div class="item" data-value="mq"><i class="mq flag"></i>Martinique</div>
                                <div class="item" data-value="mr"><i class="mr flag"></i>Mauritania</div>
                                <div class="item" data-value="mu"><i class="mu flag"></i>Mauritius</div>
                                <div class="item" data-value="yt"><i class="yt flag"></i>Mayotte</div>
                                <div class="item" data-value="mx"><i class="mx flag"></i>Mexico</div>
                                <div class="item" data-value="fm"><i class="fm flag"></i>Micronesia</div>
                                <div class="item" data-value="md"><i class="md flag"></i>Moldova</div>
                                <div class="item" data-value="mc"><i class="mc flag"></i>Monaco</div>
                                <div class="item" data-value="mn"><i class="mn flag"></i>Mongolia</div>
                                <div class="item" data-value="me"><i class="me flag"></i>Montenegro</div>
                                <div class="item" data-value="ms"><i class="ms flag"></i>Montserrat</div>
                                <div class="item" data-value="ma"><i class="ma flag"></i>Morocco</div>
                                <div class="item" data-value="mz"><i class="mz flag"></i>Mozambique</div>
                                <div class="item" data-value="na"><i class="na flag"></i>Namibia</div>
                                <div class="item" data-value="nr"><i class="nr flag"></i>Nauru</div>
                                <div class="item" data-value="np"><i class="np flag"></i>Nepal</div>
                                <div class="item" data-value="an"><i class="an flag"></i>Netherlands Antilles</div>
                                <div class="item" data-value="nl"><i class="nl flag"></i>Netherlands</div>
                                <div class="item" data-value="nc"><i class="nc flag"></i>New Caledonia</div>
                                <div class="item" data-value="pg"><i class="pg flag"></i>New Guinea</div>
                                <div class="item" data-value="nz"><i class="nz flag"></i>New Zealand</div>
                                <div class="item" data-value="ni"><i class="ni flag"></i>Nicaragua</div>
                                <div class="item" data-value="ne"><i class="ne flag"></i>Niger</div>
                                <div class="item" data-value="ng"><i class="ng flag"></i>Nigeria</div>
                                <div class="item" data-value="nu"><i class="nu flag"></i>Niue</div>
                                <div class="item" data-value="nf"><i class="nf flag"></i>Norfolk Island</div>
                                <div class="item" data-value="kp"><i class="kp flag"></i>North Korea</div>
                                <div class="item" data-value="mp"><i class="mp flag"></i>Northern Mariana Islands</div>
                                <div class="item" data-value="no"><i class="no flag"></i>Norway</div>
                                <div class="item" data-value="om"><i class="om flag"></i>Oman</div>
                                <div class="item" data-value="pk"><i class="pk flag"></i>Pakistan</div>
                                <div class="item" data-value="pw"><i class="pw flag"></i>Palau</div>
                                <div class="item" data-value="ps"><i class="ps flag"></i>Palestine</div>
                                <div class="item" data-value="pa"><i class="pa flag"></i>Panama</div>
                                <div class="item" data-value="py"><i class="py flag"></i>Paraguay</div>
                                <div class="item" data-value="pe"><i class="pe flag"></i>Peru</div>
                                <div class="item" data-value="ph"><i class="ph flag"></i>Philippines</div>
                                <div class="item" data-value="pn"><i class="pn flag"></i>Pitcairn Islands</div>
                                <div class="item" data-value="pl"><i class="pl flag"></i>Poland</div>
                                <div class="item" data-value="pt"><i class="pt flag"></i>Portugal</div>
                                <div class="item" data-value="pr"><i class="pr flag"></i>Puerto Rico</div>
                                <div class="item" data-value="qa"><i class="qa flag"></i>Qatar</div>
                                <div class="item" data-value="re"><i class="re flag"></i>Reunion</div>
                                <div class="item" data-value="ro"><i class="ro flag"></i>Romania</div>
                                <div class="item" data-value="ru"><i class="ru flag"></i>Russia</div>
                                <div class="item" data-value="rw"><i class="rw flag"></i>Rwanda</div>
                                <div class="item" data-value="sh"><i class="sh flag"></i>Saint Helena</div>
                                <div class="item" data-value="kn"><i class="kn flag"></i>Saint Kitts and Nevis</div>
                                <div class="item" data-value="lc"><i class="lc flag"></i>Saint Lucia</div>
                                <div class="item" data-value="pm"><i class="pm flag"></i>Saint Pierre</div>
                                <div class="item" data-value="vc"><i class="vc flag"></i>Saint Vincent</div>
                                <div class="item" data-value="ws"><i class="ws flag"></i>Samoa</div>
                                <div class="item" data-value="sm"><i class="sm flag"></i>San Marino</div>
                                <div class="item" data-value="gs"><i class="gs flag"></i>Sandwich Islands</div>
                                <div class="item" data-value="st"><i class="st flag"></i>Sao Tome</div>
                                <div class="item" data-value="sa"><i class="sa flag"></i>Saudi Arabia</div>
                                <div class="item" data-value="sn"><i class="sn flag"></i>Senegal</div>
                                <div class="item" data-value="cs"><i class="cs flag"></i>Serbia</div>
                                <div class="item" data-value="rs"><i class="rs flag"></i>Serbia</div>
                                <div class="item" data-value="sc"><i class="sc flag"></i>Seychelles</div>
                                <div class="item" data-value="sl"><i class="sl flag"></i>Sierra Leone</div>
                                <div class="item" data-value="sg"><i class="sg flag"></i>Singapore</div>
                                <div class="item" data-value="sk"><i class="sk flag"></i>Slovakia</div>
                                <div class="item" data-value="si"><i class="si flag"></i>Slovenia</div>
                                <div class="item" data-value="sb"><i class="sb flag"></i>Solomon Islands</div>
                                <div class="item" data-value="so"><i class="so flag"></i>Somalia</div>
                                <div class="item" data-value="za"><i class="za flag"></i>South Africa</div>
                                <div class="item" data-value="kr"><i class="kr flag"></i>South Korea</div>
                                <div class="item" data-value="es"><i class="es flag"></i>Spain</div>
                                <div class="item" data-value="lk"><i class="lk flag"></i>Sri Lanka</div>
                                <div class="item" data-value="sd"><i class="sd flag"></i>Sudan</div>
                                <div class="item" data-value="sr"><i class="sr flag"></i>Suriname</div>
                                <div class="item" data-value="sj"><i class="sj flag"></i>Svalbard</div>
                                <div class="item" data-value="sz"><i class="sz flag"></i>Swaziland</div>
                                <div class="item" data-value="se"><i class="se flag"></i>Sweden</div>
                                <div class="item" data-value="ch"><i class="ch flag"></i>Switzerland</div>
                                <div class="item" data-value="sy"><i class="sy flag"></i>Syria</div>
                                <div class="item" data-value="tw"><i class="tw flag"></i>Taiwan</div>
                                <div class="item" data-value="tj"><i class="tj flag"></i>Tajikistan</div>
                                <div class="item" data-value="tz"><i class="tz flag"></i>Tanzania</div>
                                <div class="item" data-value="th"><i class="th flag"></i>Thailand</div>
                                <div class="item" data-value="tl"><i class="tl flag"></i>Timorleste</div>
                                <div class="item" data-value="tg"><i class="tg flag"></i>Togo</div>
                                <div class="item" data-value="tk"><i class="tk flag"></i>Tokelau</div>
                                <div class="item" data-value="to"><i class="to flag"></i>Tonga</div>
                                <div class="item" data-value="tt"><i class="tt flag"></i>Trinidad</div>
                                <div class="item" data-value="tn"><i class="tn flag"></i>Tunisia</div>
                                <div class="item" data-value="tr"><i class="tr flag"></i>Turkey</div>
                                <div class="item" data-value="tm"><i class="tm flag"></i>Turkmenistan</div>
                                <div class="item" data-value="tv"><i class="tv flag"></i>Tuvalu</div>
                                <div class="item" data-value="ug"><i class="ug flag"></i>Uganda</div>
                                <div class="item" data-value="ua"><i class="ua flag"></i>Ukraine</div>
                                <div class="item" data-value="ae"><i class="ae flag"></i>United Arab Emirates</div>
                                <div class="item" data-value="us"><i class="us flag"></i>United States</div>
                                <div class="item" data-value="uy"><i class="uy flag"></i>Uruguay</div>
                                <div class="item" data-value="um"><i class="um flag"></i>Us Minor Islands</div>
                                <div class="item" data-value="vi"><i class="vi flag"></i>Us Virgin Islands</div>
                                <div class="item" data-value="uz"><i class="uz flag"></i>Uzbekistan</div>
                                <div class="item" data-value="vu"><i class="vu flag"></i>Vanuatu</div>
                                <div class="item" data-value="va"><i class="va flag"></i>Vatican City</div>
                                <div class="item" data-value="ve"><i class="ve flag"></i>Venezuela</div>
                                <div class="item" data-value="vn"><i class="vn flag"></i>Vietnam</div>
                                <div class="item" data-value="wf"><i class="wf flag"></i>Wallis and Futuna</div>
                                <div class="item" data-value="eh"><i class="eh flag"></i>Western Sahara</div>
                                <div class="item" data-value="ye"><i class="ye flag"></i>Yemen</div>
                                <div class="item" data-value="zm"><i class="zm flag"></i>Zambia</div>
                                <div class="item" data-value="zw"><i class="zw flag"></i>Zimbabwe</div>
                            </div>
                        </div>
                        <br>
                        <br>
                        <select class="ui dropdown">
                            <option value="">Gender</option>
                            <option value="1">Male</option>
                            <option value="0">Female</option>
                        </select>
                        <br>
                        <div class="ui fluid search selection dropdown">
                            <input type="hidden" name="country">
                            <i class="dropdown icon"></i>
                            <div class="default text">Select Country</div>
                            <div class="menu">
                                <div class="item" data-value="af"><i class="af flag"></i>Afghanistan</div>
                                <div class="item" data-value="ax"><i class="ax flag"></i>Aland Islands</div>
                                <div class="item" data-value="al"><i class="al flag"></i>Albania</div>
                                <div class="item" data-value="dz"><i class="dz flag"></i>Algeria</div>
                                <div class="item" data-value="as"><i class="as flag"></i>American Samoa</div>
                                <div class="item" data-value="ad"><i class="ad flag"></i>Andorra</div>
                                <div class="item" data-value="ao"><i class="ao flag"></i>Angola</div>
                                <div class="item" data-value="ai"><i class="ai flag"></i>Anguilla</div>
                                <div class="item" data-value="ag"><i class="ag flag"></i>Antigua</div>
                                <div class="item" data-value="ar"><i class="ar flag"></i>Argentina</div>
                                <div class="item" data-value="am"><i class="am flag"></i>Armenia</div>
                                <div class="item" data-value="aw"><i class="aw flag"></i>Aruba</div>
                                <div class="item" data-value="au"><i class="au flag"></i>Australia</div>
                                <div class="item" data-value="at"><i class="at flag"></i>Austria</div>
                                <div class="item" data-value="az"><i class="az flag"></i>Azerbaijan</div>
                                <div class="item" data-value="bs"><i class="bs flag"></i>Bahamas</div>
                                <div class="item" data-value="bh"><i class="bh flag"></i>Bahrain</div>
                                <div class="item" data-value="bd"><i class="bd flag"></i>Bangladesh</div>
                                <div class="item" data-value="bb"><i class="bb flag"></i>Barbados</div>
                                <div class="item" data-value="by"><i class="by flag"></i>Belarus</div>
                                <div class="item" data-value="be"><i class="be flag"></i>Belgium</div>
                                <div class="item" data-value="bz"><i class="bz flag"></i>Belize</div>
                                <div class="item" data-value="bj"><i class="bj flag"></i>Benin</div>
                                <div class="item" data-value="bm"><i class="bm flag"></i>Bermuda</div>
                                <div class="item" data-value="bt"><i class="bt flag"></i>Bhutan</div>
                                <div class="item" data-value="bo"><i class="bo flag"></i>Bolivia</div>
                                <div class="item" data-value="ba"><i class="ba flag"></i>Bosnia</div>
                                <div class="item" data-value="bw"><i class="bw flag"></i>Botswana</div>
                                <div class="item" data-value="bv"><i class="bv flag"></i>Bouvet Island</div>
                                <div class="item" data-value="br"><i class="br flag"></i>Brazil</div>
                                <div class="item" data-value="vg"><i class="vg flag"></i>British Virgin Islands</div>
                                <div class="item" data-value="bn"><i class="bn flag"></i>Brunei</div>
                                <div class="item" data-value="bg"><i class="bg flag"></i>Bulgaria</div>
                                <div class="item" data-value="bf"><i class="bf flag"></i>Burkina Faso</div>
                                <div class="item" data-value="mm"><i class="mm flag"></i>Burma</div>
                                <div class="item" data-value="bi"><i class="bi flag"></i>Burundi</div>
                                <div class="item" data-value="tc"><i class="tc flag"></i>Caicos Islands</div>
                                <div class="item" data-value="kh"><i class="kh flag"></i>Cambodia</div>
                                <div class="item" data-value="cm"><i class="cm flag"></i>Cameroon</div>
                                <div class="item" data-value="ca"><i class="ca flag"></i>Canada</div>
                                <div class="item" data-value="cv"><i class="cv flag"></i>Cape Verde</div>
                                <div class="item" data-value="ky"><i class="ky flag"></i>Cayman Islands</div>
                                <div class="item" data-value="cf"><i class="cf flag"></i>Central African Republic</div>
                                <div class="item" data-value="td"><i class="td flag"></i>Chad</div>
                                <div class="item" data-value="cl"><i class="cl flag"></i>Chile</div>
                                <div class="item" data-value="cn"><i class="cn flag"></i>China</div>
                                <div class="item" data-value="cx"><i class="cx flag"></i>Christmas Island</div>
                                <div class="item" data-value="cc"><i class="cc flag"></i>Cocos Islands</div>
                                <div class="item" data-value="co"><i class="co flag"></i>Colombia</div>
                                <div class="item" data-value="km"><i class="km flag"></i>Comoros</div>
                                <div class="item" data-value="cg"><i class="cg flag"></i>Congo Brazzaville</div>
                                <div class="item" data-value="cd"><i class="cd flag"></i>Congo</div>
                                <div class="item" data-value="ck"><i class="ck flag"></i>Cook Islands</div>
                                <div class="item" data-value="cr"><i class="cr flag"></i>Costa Rica</div>
                                <div class="item" data-value="ci"><i class="ci flag"></i>Cote Divoire</div>
                                <div class="item" data-value="hr"><i class="hr flag"></i>Croatia</div>
                                <div class="item" data-value="cu"><i class="cu flag"></i>Cuba</div>
                                <div class="item" data-value="cy"><i class="cy flag"></i>Cyprus</div>
                                <div class="item" data-value="cz"><i class="cz flag"></i>Czech Republic</div>
                                <div class="item" data-value="dk"><i class="dk flag"></i>Denmark</div>
                                <div class="item" data-value="dj"><i class="dj flag"></i>Djibouti</div>
                                <div class="item" data-value="dm"><i class="dm flag"></i>Dominica</div>
                                <div class="item" data-value="do"><i class="do flag"></i>Dominican Republic</div>
                                <div class="item" data-value="ec"><i class="ec flag"></i>Ecuador</div>
                                <div class="item" data-value="eg"><i class="eg flag"></i>Egypt</div>
                                <div class="item" data-value="sv"><i class="sv flag"></i>El Salvador</div>
                                <div class="item" data-value="gb"><i class="gb flag"></i>England</div>
                                <div class="item" data-value="gq"><i class="gq flag"></i>Equatorial Guinea</div>
                                <div class="item" data-value="er"><i class="er flag"></i>Eritrea</div>
                                <div class="item" data-value="ee"><i class="ee flag"></i>Estonia</div>
                                <div class="item" data-value="et"><i class="et flag"></i>Ethiopia</div>
                                <div class="item" data-value="eu"><i class="eu flag"></i>European Union</div>
                                <div class="item" data-value="fk"><i class="fk flag"></i>Falkland Islands</div>
                                <div class="item" data-value="fo"><i class="fo flag"></i>Faroe Islands</div>
                                <div class="item" data-value="fj"><i class="fj flag"></i>Fiji</div>
                                <div class="item" data-value="fi"><i class="fi flag"></i>Finland</div>
                                <div class="item" data-value="fr"><i class="fr flag"></i>France</div>
                                <div class="item" data-value="gf"><i class="gf flag"></i>French Guiana</div>
                                <div class="item" data-value="pf"><i class="pf flag"></i>French Polynesia</div>
                                <div class="item" data-value="tf"><i class="tf flag"></i>French Territories</div>
                                <div class="item" data-value="ga"><i class="ga flag"></i>Gabon</div>
                                <div class="item" data-value="gm"><i class="gm flag"></i>Gambia</div>
                                <div class="item" data-value="ge"><i class="ge flag"></i>Georgia</div>
                                <div class="item" data-value="de"><i class="de flag"></i>Germany</div>
                                <div class="item" data-value="gh"><i class="gh flag"></i>Ghana</div>
                                <div class="item" data-value="gi"><i class="gi flag"></i>Gibraltar</div>
                                <div class="item" data-value="gr"><i class="gr flag"></i>Greece</div>
                                <div class="item" data-value="gl"><i class="gl flag"></i>Greenland</div>
                                <div class="item" data-value="gd"><i class="gd flag"></i>Grenada</div>
                                <div class="item" data-value="gp"><i class="gp flag"></i>Guadeloupe</div>
                                <div class="item" data-value="gu"><i class="gu flag"></i>Guam</div>
                                <div class="item" data-value="gt"><i class="gt flag"></i>Guatemala</div>
                                <div class="item" data-value="gw"><i class="gw flag"></i>Guinea-Bissau</div>
                                <div class="item" data-value="gn"><i class="gn flag"></i>Guinea</div>
                                <div class="item" data-value="gy"><i class="gy flag"></i>Guyana</div>
                                <div class="item" data-value="ht"><i class="ht flag"></i>Haiti</div>
                                <div class="item" data-value="hm"><i class="hm flag"></i>Heard Island</div>
                                <div class="item" data-value="hn"><i class="hn flag"></i>Honduras</div>
                                <div class="item" data-value="hk"><i class="hk flag"></i>Hong Kong</div>
                                <div class="item" data-value="hu"><i class="hu flag"></i>Hungary</div>
                                <div class="item" data-value="is"><i class="is flag"></i>Iceland</div>
                                <div class="item" data-value="in"><i class="in flag"></i>India</div>
                                <div class="item" data-value="io"><i class="io flag"></i>Indian Ocean Territory</div>
                                <div class="item" data-value="id"><i class="id flag"></i>Indonesia</div>
                                <div class="item" data-value="ir"><i class="ir flag"></i>Iran</div>
                                <div class="item" data-value="iq"><i class="iq flag"></i>Iraq</div>
                                <div class="item" data-value="ie"><i class="ie flag"></i>Ireland</div>
                                <div class="item" data-value="il"><i class="il flag"></i>Israel</div>
                                <div class="item" data-value="it"><i class="it flag"></i>Italy</div>
                                <div class="item" data-value="jm"><i class="jm flag"></i>Jamaica</div>
                                <div class="item" data-value="jp"><i class="jp flag"></i>Japan</div>
                                <div class="item" data-value="jo"><i class="jo flag"></i>Jordan</div>
                                <div class="item" data-value="kz"><i class="kz flag"></i>Kazakhstan</div>
                                <div class="item" data-value="ke"><i class="ke flag"></i>Kenya</div>
                                <div class="item" data-value="ki"><i class="ki flag"></i>Kiribati</div>
                                <div class="item" data-value="kw"><i class="kw flag"></i>Kuwait</div>
                                <div class="item" data-value="kg"><i class="kg flag"></i>Kyrgyzstan</div>
                                <div class="item" data-value="la"><i class="la flag"></i>Laos</div>
                                <div class="item" data-value="lv"><i class="lv flag"></i>Latvia</div>
                                <div class="item" data-value="lb"><i class="lb flag"></i>Lebanon</div>
                                <div class="item" data-value="ls"><i class="ls flag"></i>Lesotho</div>
                                <div class="item" data-value="lr"><i class="lr flag"></i>Liberia</div>
                                <div class="item" data-value="ly"><i class="ly flag"></i>Libya</div>
                                <div class="item" data-value="li"><i class="li flag"></i>Liechtenstein</div>
                                <div class="item" data-value="lt"><i class="lt flag"></i>Lithuania</div>
                                <div class="item" data-value="lu"><i class="lu flag"></i>Luxembourg</div>
                                <div class="item" data-value="mo"><i class="mo flag"></i>Macau</div>
                                <div class="item" data-value="mk"><i class="mk flag"></i>Macedonia</div>
                                <div class="item" data-value="mg"><i class="mg flag"></i>Madagascar</div>
                                <div class="item" data-value="mw"><i class="mw flag"></i>Malawi</div>
                                <div class="item" data-value="my"><i class="my flag"></i>Malaysia</div>
                                <div class="item" data-value="mv"><i class="mv flag"></i>Maldives</div>
                                <div class="item" data-value="ml"><i class="ml flag"></i>Mali</div>
                                <div class="item" data-value="mt"><i class="mt flag"></i>Malta</div>
                                <div class="item" data-value="mh"><i class="mh flag"></i>Marshall Islands</div>
                                <div class="item" data-value="mq"><i class="mq flag"></i>Martinique</div>
                                <div class="item" data-value="mr"><i class="mr flag"></i>Mauritania</div>
                                <div class="item" data-value="mu"><i class="mu flag"></i>Mauritius</div>
                                <div class="item" data-value="yt"><i class="yt flag"></i>Mayotte</div>
                                <div class="item" data-value="mx"><i class="mx flag"></i>Mexico</div>
                                <div class="item" data-value="fm"><i class="fm flag"></i>Micronesia</div>
                                <div class="item" data-value="md"><i class="md flag"></i>Moldova</div>
                                <div class="item" data-value="mc"><i class="mc flag"></i>Monaco</div>
                                <div class="item" data-value="mn"><i class="mn flag"></i>Mongolia</div>
                                <div class="item" data-value="me"><i class="me flag"></i>Montenegro</div>
                                <div class="item" data-value="ms"><i class="ms flag"></i>Montserrat</div>
                                <div class="item" data-value="ma"><i class="ma flag"></i>Morocco</div>
                                <div class="item" data-value="mz"><i class="mz flag"></i>Mozambique</div>
                                <div class="item" data-value="na"><i class="na flag"></i>Namibia</div>
                                <div class="item" data-value="nr"><i class="nr flag"></i>Nauru</div>
                                <div class="item" data-value="np"><i class="np flag"></i>Nepal</div>
                                <div class="item" data-value="an"><i class="an flag"></i>Netherlands Antilles</div>
                                <div class="item" data-value="nl"><i class="nl flag"></i>Netherlands</div>
                                <div class="item" data-value="nc"><i class="nc flag"></i>New Caledonia</div>
                                <div class="item" data-value="pg"><i class="pg flag"></i>New Guinea</div>
                                <div class="item" data-value="nz"><i class="nz flag"></i>New Zealand</div>
                                <div class="item" data-value="ni"><i class="ni flag"></i>Nicaragua</div>
                                <div class="item" data-value="ne"><i class="ne flag"></i>Niger</div>
                                <div class="item" data-value="ng"><i class="ng flag"></i>Nigeria</div>
                                <div class="item" data-value="nu"><i class="nu flag"></i>Niue</div>
                                <div class="item" data-value="nf"><i class="nf flag"></i>Norfolk Island</div>
                                <div class="item" data-value="kp"><i class="kp flag"></i>North Korea</div>
                                <div class="item" data-value="mp"><i class="mp flag"></i>Northern Mariana Islands</div>
                                <div class="item" data-value="no"><i class="no flag"></i>Norway</div>
                                <div class="item" data-value="om"><i class="om flag"></i>Oman</div>
                                <div class="item" data-value="pk"><i class="pk flag"></i>Pakistan</div>
                                <div class="item" data-value="pw"><i class="pw flag"></i>Palau</div>
                                <div class="item" data-value="ps"><i class="ps flag"></i>Palestine</div>
                                <div class="item" data-value="pa"><i class="pa flag"></i>Panama</div>
                                <div class="item" data-value="py"><i class="py flag"></i>Paraguay</div>
                                <div class="item" data-value="pe"><i class="pe flag"></i>Peru</div>
                                <div class="item" data-value="ph"><i class="ph flag"></i>Philippines</div>
                                <div class="item" data-value="pn"><i class="pn flag"></i>Pitcairn Islands</div>
                                <div class="item" data-value="pl"><i class="pl flag"></i>Poland</div>
                                <div class="item" data-value="pt"><i class="pt flag"></i>Portugal</div>
                                <div class="item" data-value="pr"><i class="pr flag"></i>Puerto Rico</div>
                                <div class="item" data-value="qa"><i class="qa flag"></i>Qatar</div>
                                <div class="item" data-value="re"><i class="re flag"></i>Reunion</div>
                                <div class="item" data-value="ro"><i class="ro flag"></i>Romania</div>
                                <div class="item" data-value="ru"><i class="ru flag"></i>Russia</div>
                                <div class="item" data-value="rw"><i class="rw flag"></i>Rwanda</div>
                                <div class="item" data-value="sh"><i class="sh flag"></i>Saint Helena</div>
                                <div class="item" data-value="kn"><i class="kn flag"></i>Saint Kitts and Nevis</div>
                                <div class="item" data-value="lc"><i class="lc flag"></i>Saint Lucia</div>
                                <div class="item" data-value="pm"><i class="pm flag"></i>Saint Pierre</div>
                                <div class="item" data-value="vc"><i class="vc flag"></i>Saint Vincent</div>
                                <div class="item" data-value="ws"><i class="ws flag"></i>Samoa</div>
                                <div class="item" data-value="sm"><i class="sm flag"></i>San Marino</div>
                                <div class="item" data-value="gs"><i class="gs flag"></i>Sandwich Islands</div>
                                <div class="item" data-value="st"><i class="st flag"></i>Sao Tome</div>
                                <div class="item" data-value="sa"><i class="sa flag"></i>Saudi Arabia</div>
                                <div class="item" data-value="sn"><i class="sn flag"></i>Senegal</div>
                                <div class="item" data-value="cs"><i class="cs flag"></i>Serbia</div>
                                <div class="item" data-value="rs"><i class="rs flag"></i>Serbia</div>
                                <div class="item" data-value="sc"><i class="sc flag"></i>Seychelles</div>
                                <div class="item" data-value="sl"><i class="sl flag"></i>Sierra Leone</div>
                                <div class="item" data-value="sg"><i class="sg flag"></i>Singapore</div>
                                <div class="item" data-value="sk"><i class="sk flag"></i>Slovakia</div>
                                <div class="item" data-value="si"><i class="si flag"></i>Slovenia</div>
                                <div class="item" data-value="sb"><i class="sb flag"></i>Solomon Islands</div>
                                <div class="item" data-value="so"><i class="so flag"></i>Somalia</div>
                                <div class="item" data-value="za"><i class="za flag"></i>South Africa</div>
                                <div class="item" data-value="kr"><i class="kr flag"></i>South Korea</div>
                                <div class="item" data-value="es"><i class="es flag"></i>Spain</div>
                                <div class="item" data-value="lk"><i class="lk flag"></i>Sri Lanka</div>
                                <div class="item" data-value="sd"><i class="sd flag"></i>Sudan</div>
                                <div class="item" data-value="sr"><i class="sr flag"></i>Suriname</div>
                                <div class="item" data-value="sj"><i class="sj flag"></i>Svalbard</div>
                                <div class="item" data-value="sz"><i class="sz flag"></i>Swaziland</div>
                                <div class="item" data-value="se"><i class="se flag"></i>Sweden</div>
                                <div class="item" data-value="ch"><i class="ch flag"></i>Switzerland</div>
                                <div class="item" data-value="sy"><i class="sy flag"></i>Syria</div>
                                <div class="item" data-value="tw"><i class="tw flag"></i>Taiwan</div>
                                <div class="item" data-value="tj"><i class="tj flag"></i>Tajikistan</div>
                                <div class="item" data-value="tz"><i class="tz flag"></i>Tanzania</div>
                                <div class="item" data-value="th"><i class="th flag"></i>Thailand</div>
                                <div class="item" data-value="tl"><i class="tl flag"></i>Timorleste</div>
                                <div class="item" data-value="tg"><i class="tg flag"></i>Togo</div>
                                <div class="item" data-value="tk"><i class="tk flag"></i>Tokelau</div>
                                <div class="item" data-value="to"><i class="to flag"></i>Tonga</div>
                                <div class="item" data-value="tt"><i class="tt flag"></i>Trinidad</div>
                                <div class="item" data-value="tn"><i class="tn flag"></i>Tunisia</div>
                                <div class="item" data-value="tr"><i class="tr flag"></i>Turkey</div>
                                <div class="item" data-value="tm"><i class="tm flag"></i>Turkmenistan</div>
                                <div class="item" data-value="tv"><i class="tv flag"></i>Tuvalu</div>
                                <div class="item" data-value="ug"><i class="ug flag"></i>Uganda</div>
                                <div class="item" data-value="ua"><i class="ua flag"></i>Ukraine</div>
                                <div class="item" data-value="ae"><i class="ae flag"></i>United Arab Emirates</div>
                                <div class="item" data-value="us"><i class="us flag"></i>United States</div>
                                <div class="item" data-value="uy"><i class="uy flag"></i>Uruguay</div>
                                <div class="item" data-value="um"><i class="um flag"></i>Us Minor Islands</div>
                                <div class="item" data-value="vi"><i class="vi flag"></i>Us Virgin Islands</div>
                                <div class="item" data-value="uz"><i class="uz flag"></i>Uzbekistan</div>
                                <div class="item" data-value="vu"><i class="vu flag"></i>Vanuatu</div>
                                <div class="item" data-value="va"><i class="va flag"></i>Vatican City</div>
                                <div class="item" data-value="ve"><i class="ve flag"></i>Venezuela</div>
                                <div class="item" data-value="vn"><i class="vn flag"></i>Vietnam</div>
                                <div class="item" data-value="wf"><i class="wf flag"></i>Wallis and Futuna</div>
                                <div class="item" data-value="eh"><i class="eh flag"></i>Western Sahara</div>
                                <div class="item" data-value="ye"><i class="ye flag"></i>Yemen</div>
                                <div class="item" data-value="zm"><i class="zm flag"></i>Zambia</div>
                                <div class="item" data-value="zw"><i class="zw flag"></i>Zimbabwe</div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>



        <%@include file="assets/__js.jsp" %>
        <script>
            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav1") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav1";
                }
            }

            $(document).ready(function () {
                var table = $('#example').DataTable({
                    responsive: true,
                    select: true

                });
                $('select.dropdown')
                        .dropdown()
                        ;

            });

        </script>
        <script>
            function startTime() {
                var today = new Date();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();
                m = checkTime(m);
                s = checkTime(s);
                document.getElementById('time').innerHTML =
                        h + ":" + m + ":" + s;
                var t = setTimeout(startTime, 500);
            }
            function checkTime(i) {
                if (i < 10) {
                    i = "0" + i
                }
                ;  // add zero in front of numbers < 10
                return i;
            }
        </script>
    </body>
</html>
