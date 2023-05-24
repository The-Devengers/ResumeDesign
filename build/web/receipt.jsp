
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <title>WebStylePress</title>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
            />
        <link rel="stylesheet" href="custom.css" />
        <link rel="stylesheet" href="custom2.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
        <style>
            #receipt-wrap {
                width: 100%;
                overflow: hidden;
                padding: 10px;
            }

            .receipt-main {
                max-width: 780px;
                margin: 0 auto;
            }

            .receipt-main img {
                max-width: 100%;
                height: auto;
            }

            .receipt-right p {
                margin-bottom: 0;
            }

            .receipt-right h5 {
                margin-top: 0;
            }
        </style>
    </head>
    <body>
        <div class="mx-3">
            <button class="btn-outline-primary" id="btn-print">Print</button>
        </div>
        
        <div class="container receipt-wrap" id="receipt-wrap">
            <div class="row justify-content-md-center">
                <div class="receipt-main col-xs-10 col-sm-10 col-md-6">
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="receipt-left">
                                <% String profile = (String) request.getAttribute("image");
                                    String phonenum = (String) request.getAttribute("phonenum");
                                    String fname = (String) request.getAttribute("fname");
                                    String lname = (String) request.getAttribute("lname");
                                    String email = (String) request.getAttribute("email");
                                    String country = (String) request.getAttribute("country");
                                    String city = (String) request.getAttribute("city");
                                    String summary = (String) request.getAttribute("summary");
                                    String address = (String) request.getAttribute("address");
                                    String job = (String) request.getAttribute("job");
                                    String employer = (String) request.getAttribute("employer");
                                    String jobstartdate = (String) request.getAttribute("jobstartdate");
                                    String jobenddate = (String) request.getAttribute("jobenddate");
                                    String jobDescription = (String) request.getAttribute("jobDescription");
                                    String major = (String) request.getAttribute("major");
                                    String school = (String) request.getAttribute("school");
                                    String schoolstartdate = (String) request.getAttribute("schoolstartdate");
                                    String schoolenddate = (String) request.getAttribute("schoolenddate");
                                    String eduDescription = (String) request.getAttribute("eduDescription");
                                    String skill = (String) request.getAttribute("skill");
                                    String level = (String) request.getAttribute("level");
                                    String softSkill = (String) request.getAttribute("softskill");
                                %>

                                <img

                                    alt="Profile Image"
                                    src="http://localhost:8080<%= profile%>"
                                    style="object-fit: contain; height: 100px;"
                                    />
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                            <div class="receipt-right">
                                <h5><%= fname + " " + lname%></h5>
                                <p><%= phonenum%><i class="fa fa-phone"></i></p>
                                <p><%= email%><i class="fa fa-envelope-o"></i></p>
                                <p><%= address + ", " + city + ", " + country%><i class="fa fa-location-arrow"></i></p>
                            </div>
                        </div>
                    </div>

                    <br />

                    <div class="row" style="width: 800px;">
                        <div class="col-sm-8 col-lg-8" >
                            <div class="receipt-right">
                                <h5>Summary</h5>
                                <p><%= summary%></p>
                            </div>
                        </div>
                    </div>

                    <br

                        <div>
                    <table class="table table-bordered">
                        <tbody>
                            <tr class="bg-primary text-light">
                                <td><b>SKILLS</b></td>
                                <td><b>SOFT SKILLS</b></td>
                            </tr>
                            <tr>
                                <td><%= skill%></td>
                                <td><%= softSkill%></td>
                            </tr>

                            <tr class="bg-primary text-light py-1">
                                <td><b>WORK EXPERIENCE</b></td>
                            </tr>

                            <tr>
                                <td><b><%= job + " - " + employer%></b></td>
                                <td><i><%= jobstartdate + " - " + jobenddate%></i></td>
                            </tr>

                            <tr>
                                <td>Description: <%= jobDescription%></td>
                            </tr>


                            <tr class="bg-primary text-light py-1">
                                <td><b>EDUCATION</b></td>
                            </tr>

                            <tr>
                                <td><b><%= major + " - " + school%></b></td>
                                <td><i><%= schoolstartdate + " - " + schoolenddate%></i></td>
                            </tr>

                            <tr>
                                <td>Description: <%= eduDescription%></td>
                            </tr>

                        </tbody>
                    </table>
                </div>

                <!--                    <div class="row">
                                        <div class="col-xs-8 col-sm-8 col-md-8 text-left">
                                            <div class="receipt-right">
                                                <p><b>Date :</b> 15 Nov 2022</p>
                                                <h5 style="color: rgb(140, 140, 140)"
                                                    >Thank you for your business!</h5
                                                >
                                            </div>
                                        </div>
                                    </div>-->
            </div>
        </div>
    </div>

    <script>
        const printButton = document.getElementById("btn-print");
        printButton.addEventListener("click", () => {
            const element = document.getElementById("receipt-wrap");

            // Create HTML to PDF options
            const options = {
                margin: 10,
                filename: "resume.pdf",
                image: {type: "jpeg", quality: 0.98},
                html2canvas: {scale: 2},
                jsPDF: {unit: "mm", format: "a4", orientation: "portrait"}
            };

            // Generate PDF from HTML element
            html2pdf().set(options).from(element).save();
        });
    </script>
</body>
</html>
