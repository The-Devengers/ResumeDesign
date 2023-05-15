<%-- 
    Document   : ResumeForm
    Created on : May 13, 2023, 1:25:06 PM
    Author     : Leon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            body{
                background-color: lightsteelblue;
            }
            .small{
                font-size: 14px;
            }
            .form-control{
                background-color: lightgray;
                color: darkblue;
            }
            .form-control:focus{
                background-color: lightgray;
                color: darkblue;
                box-shadow: 1px 1px 1px royalblue inset, 0px 0px 4px darkblue; 
                -webkit-box-shadow: 0px 0px 4px royalblue inset, 0px 0px 4px darkblue;
            } 
            .range-cust::-webkit-slider-thumb {
                background: royalblue;
            }
            .range-cust::-moz-range-thumb {
                background: royalblue;
            }
            .range-cust::-ms-thumb {
                background: royalblue;
              }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
		<div class="col-12">
                        <h1 class="display-4">Create resume form</h1>
                        <hr>
			<form class="file-upload">
				<div class="row mb-5 gx-5">
					<div class="col-xxl-10">
						<div class="bg-secondary-soft px-4 py-5 rounded">
							<div class="row g-3">
								<h5 class="mb-4 mt-0">Personal information</h5>
								<div class="col-md-6">
									<label class="form-label">First Name</label>
									<input type="text" class="form-control" name="fname">
								</div>
								<div class="col-md-6">
									<label class="form-label">Last Name</label>
									<input type="text" class="form-control" name="lname">
								</div>
								<div class="col-md-6">
									<label class="form-label">Phone number</label>
									<input type="text" class="form-control" name="phonenum">
								</div>
								<div class="col-md-6">
									<label class="form-label">Email</label>
									<input type="email" class="form-control" name="email">
								</div>
                                                                <div class="col-md-6">
									<label class="form-label">Country</label>
									<input type="text" class="form-control" name="country">
								</div>
                                                                <div class="col-md-6">
									<label class="form-label">City</label>
									<input type="text" class="form-control" name="city">
								</div>
                                                                <div class="col-md-6">
									<label class="form-label">Profile summary</label>
                                                                        <p class="form-label text-secondary small">Write a brief summary of your previous work related to the current position you want to apply for, your best achievements, skills, qualities,...</p>
                                                                        <textarea class="form-control" name="summary" rows="5" cols="60"></textarea>
								</div>
                                                                <div class="col-md-6">
									<label class="form-label">Address</label>
									<input type="text" class="form-control" name="address">
								</div>
							</div> 
						</div>
					</div>
					<div class="col-xxl-6">
						<div class="bg-secondary-soft px-4 py-5 rounded">
							<div class="row g-3">
								<h5 class="mb-4 mt-0">Work experience</h5>
								<div class="col-md-6">
									<label class="form-label">Job title</label>
									<input type="text" class="form-control" name="job">
								</div>
								<div class="col-md-6">
									<label class="form-label">Employer</label>
									<input type="text" class="form-control" name="employer">
								</div>
                                                                <div class="col-md-6">
									<label class="form-label">Start date</label>
									<input type="date" class="form-control" name="jobstartdate">
								</div>
								<div class="col-md-6">
									<label class="form-label">End date</label>
									<input type="date" class="form-control" name="jobenddate">
								</div>
                                                                <div class="col-md-12">
									<label class="form-label">Description</label>
                                                                        <textarea class="form-control" name="summary" rows="5" cols="60"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xxl-6">
						<div class="bg-secondary-soft px-4 py-5 rounded">
							<div class="row g-3">
								<h5 class="mb-4 mt-0">Education</h5>
								<div class="col-md-6">
									<label class="form-label">School name</label>
									<input type="text" class="form-control" name="job">
								</div>
								<div class="col-md-6">
									<label class="form-label">Certificate</label>
									<input type="text" class="form-control" name="employer">
								</div>
                                                                <div class="col-md-6">
									<label class="form-label">Start date</label>
									<input type="date" class="form-control" name="schoolstartdate">
								</div>
								<div class="col-md-6">
									<label class="form-label">End date</label>
									<input type="date" class="form-control" name="schoolenddate">
								</div>
                                                                <div class="col-md-12">
									<label class="form-label">Description</label>
                                                                        <textarea class="form-control" name="summary" rows="5" cols="60"></textarea>
								</div>
							</div>
						</div>
					</div>
                                    <div class="col-xxl-6">
						<div class="bg-secondary-soft px-4 py-5 rounded">
							<div class="row g-3">
								<h5 class="mb-4 mt-0">Skills</h5>
								<div class="col-md-6">
									<label class="form-label">Skill name</label>
									<input type="text" class="form-control" name="job">
								</div>
								<div class="col-md-6">
									<label class="form-label">Experience level</label>
                                                                        <input type="range" class="form-range range-cust" min="1" max="5" step="1" name="level" onchange="updateTextInput(this.value);">
                                                                        <p id="textInput"></p>
								</div>
							</div>
						</div>
					</div>
                                    <div class="row mb-5 gx-5">
                                        <div class="col-xxl-6 mb-5 mb-xxl-0"><input type="submit" value="submit" class="btn btn-outline-primary"></div>
                                        <div class="col-xxl-6 mb-5 mb-xxl-0"><input type="reset" value="cancel" class="btn btn-outline-primary"></div>
                                    </div>
				</div>
			</form> 
		</div>
            </div>
	</div>
    </body>
    <script>
        function updateTextInput(val) {
            var level;
            switch (val){
                case "1":
                    level = "Novice";
                    break;
                case "2":
                    level = "Beginner";
                    break;
                case "3":
                    level = "Skillful";
                    break;
                case "4":
                    level = "Experienced";
                    break;
                case "5":
                    level = "Expert";
                    break;
            }
            document.getElementById('textInput').innerHTML = level;
        }
    </script>
</html>
