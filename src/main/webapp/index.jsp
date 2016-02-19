<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf8">
    <title>brillianICM - Development Konsole</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="js/frameworks/jquery-2.0.0.min.js"></script>
    <script type="text/javascript" src="js/frameworks/bootstrap.min.js"></script>
    <style type="text/css">
        .heart {
            color: #E74C3C;
        }
        
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #2c3e50;
            font-size: 15px;
            text-align: right;
            color: white;
        }
        
        body {
            margin-bottom: 80px;
        }
        
        .container .text-margin {
            margin: 10px 5px;
        }
        
        .card {
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        }
        
        .card {
            margin-top: 10px;
            box-sizing: border-box;
            border-radius: 2px;
            background-clip: padding-box;
        }
        
        .card .card-image {
            position: relative;
            overflow: hidden;
            background-color: #27ae60;
            z-index: -2;
            padding: 30px;
        }
        
        .card .card-image img {
            border-radius: 2px 2px 0 0;
            background-clip: padding-box;
            position: relative;
            z-index: -1;
        }
        
        .card .card-image span.card-title {
            position: absolute;
            bottom: 0;
            left: 0;
            padding: 16px;
        }
        
        .card .card-content {
            padding: 16px;
            border-radius: 0 0 2px 2px;
            background-clip: padding-box;
            box-sizing: border-box;
        }
        
        .card .card-content p {
            margin: 0;
            color: inherit;
        }
        
        .card .card-content span.card-title {
            line-height: 48px;
        }
        
        #server-indicator {
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="page-header">
            <h1>Development Console <small>brillianICM 2016</small></h1>
            <span class="label label-default" id="server-indicator">Loading...</span></p>
            <!--
            <div class="row">
            <div class="col-md-4 col-xs-6">
                <p>54.69.221.194 (Development Server)</p>
                <p>54.69.221.194 (Staging Server)</p>
                <p>54.69.221.194 (Production Server)</p></div>
                <div class="col-md-2 col-xs-5">
                <p><span class="label label-warning">Warning</span></p>
                <p><span class="label label-danger">Stopped</span></p>
                <p><span class="label label-success">Running</span></p></div>
            <div class="col-md-6 col-xs-1"></div>
            </div>
            -->

        </div>
        <div class="row">
            <!-- Card Projects -->
            <a href="contentquery.jsp">
                <div class="col-md-2 col-sm-3 col-xs-4">
                    <div class="card">
                        <div class="card-image">
                            <img class="img-responsive" src="logo/node.png">
                        </div>
                        <div class="card-content">
                            <p>Content Explorer</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="uploadfile.jsp">
                <div class="col-md-2 col-sm-3 col-xs-4">
                    <div class="card">
                        <div class="card-image">
                            <img class="img-responsive" src="logo/upload.png">
                        </div>
                        <div class="card-content">
                            <p>Upload XML File</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="uploadimage.jsp">
                <div class="col-md-2 col-sm-3 col-xs-4">
                    <div class="card">
                        <div class="card-image">
                            <img class="img-responsive" src="logo/picture.png">
                        </div>
                        <div class="card-content">
                            <p>Upload Image</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="uploadvideo.jsp">
                <div class="col-md-2 col-sm-3 col-xs-4">
                    <div class="card">
                        <div class="card-image">
                            <img class="img-responsive" src="logo/video.png">
                        </div>
                        <div class="card-content">
                            <p>Upload Video</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="viewfile.jsp">
                <div class="col-md-2 col-sm-3 col-xs-4">
                    <div class="card">
                        <div class="card-image">
                            <img class="img-responsive" src="logo/xml.png">
                        </div>
                        <div class="card-content">
                            <p>File Viewer</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="https://github.com/cheyer/brillianicm/blob/master/src/main/java/org/dhbw/imbit11/masterfile.xml" target="_blank">
                <div class="col-md-2 col-sm-3 col-xs-4">
                    <div class="card">
                        <div class="card-image">
                            <img class="img-responsive" src="logo/xml.png">
                        </div>
                        <div class="card-content">
                            <p>XML Tree</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="row">
            <a href="https://www.dropbox.com/s/vy3537b9ifjzsg2/brillianICM%20Doku%20Gesamt_final.pdf?dl=0" target="_blank">
                <div class="col-md-2 col-sm-3 col-xs-4">
                    <div class="card">
                        <div class="card-image">
                            <img class="img-responsive" src="logo/doc.png">
                        </div>
                        <div class="card-content">
                            <p>Documentation</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="<%out.print(application.getContextPath());%>/Main">
                <div class="col-md-2 col-sm-3 col-xs-4">
                    <div class="card">
                        <div class="card-image">
                            <img class="img-responsive" src="logo/run.png">
                        </div>
                        <div class="card-content">
                            <p>Start App</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <!-- obsolete
				<a href="http://ec2-54-213-27-83.us-west-2.compute.amazonaws.com/apidocs">JavaDoc</a>
				<a href="http://ec2-54-213-27-83.us-west-2.compute.amazonaws.com/phpmyadmin/">PHPmyAdmin</a>
				<a href="/manager">Tomcat Manager</a>
                <a href="http://ec2-54-213-27-83.us-west-2.compute.amazonaws.com/catalina.out">Tomcat Logfile</a>

			-->
    </div>

    <footer class="footer">
        <div class="container">
            <p class="text-margin">brillianICM 2016 - Development Console - {{version}} - 19.02.2016 - developed with <span class="heart">♥</span> in Mannheim</p>
        </div>
    </footer>
    <script>
        $(document).ready(function () {
            function checkServerStatus(url) {
                var online = false;
                var script = document.body.appendChild(document.createElement("script"));
                script.onload = function () {
                    console.log(url + " is online");
                    $('#server-indicator').removeClass('label-default');
                    $('#server-indicator').addClass('label-success');
                    $('#server-indicator').html("Running");
                };
                script.onerror = function () {
                    console.log(url + " is offline");
                    $('#server-indicator').removeClass('label-default');
                    $('#server-indicator').addClass('label-danger');
                    $('#server-indicator').html("Error");
                };
                script.src = url;
                return online;
            }

            var prodServer = "https://www.brillianicm.com/";
            setTimeout(checkServerStatus(prodServer), 1500);
        });
    </script>
</body>

</html>