<html lang = "en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv=""X-UA-Compatible" content=""IE=edge,chrome=1" />
    <meta name="viewport" content ="width=device-width", initial=-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Markazi+Text:wght@400..700&display=swap" rel="stylesheet">
    <title> Feed </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        /* Custom styles for the navbar */
        .navbar {
            background-color: #8F001A; /* Hex color 8F001A */
            padding: 20px; /* Increased padding */
        }

        .navbar-brand img {
            width: 50px; /* Adjust the width for a larger logo */
            height: 50px; /* Adjust the height for a larger logo */
            object-fit: contain; /* Maintain aspect ratio */
        }
        
        
        .navbar-toggler {
            border-color: white; /* Set the border color of the toggler button to white */
        }

        .navbar-brand {
            color: white !important; /* Change text color for better visibility */
            font-size: 24px; /* Increase font size for better visibility */
            font-weight: bold; /* Make the text bold for better visibility */
        }

        .navbar-nav .nav-link {
            color: #8F001A !important; /* Change text color for better visibility */
            margin-right: 15px; /* Adjust margin-right for spacing between nav links */
        }

        .navbar-nav .nav-link:hover {
            color: #80746C !important; /* Change text color on hover */
        }

        /* Custom styles for the cards */
        .card {
            border-radius: 15px; /* Set border-radius for rounded corners */
            overflow: hidden; /* Ensure rounded corners apply to image */
        }

        .card-img-top {
            border-top-left-radius: 15px; /* Set top-left corner radius for the image */
            border-top-right-radius: 15px; /* Set top-right corner radius for the image */
        }

    </style>
</head>
<body>
<div class= = "box-area">

    <!-- <header>
        <div class = "wrapper">
            <div class = "wrapper">
             <a href = "#" >  </a>
        </div>
            <nav>
                <a href="#"> My Feed  </a>
                <a href="#"> Active Groups </a>
                <a href="#"> Profile </a>
            </nav>
            <img src="gee-gee.png" alt="Gee Gee"width="100" height="90">
        
        </div>
    </header> -->

    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="#">
            <img src="gee-gee.png" class="d-inline-block align-top" alt="Your Study App Logo">
            
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link btn btn-light" href="#">My Feed</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-light" href="#">Active Groups</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-light" href="#">Profile</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>

    </nav>

    <!-- Headers -->
    <div class="container mt-4">
        <h1>Search results for ITI</h1>
        <p>2 results</p>
    </div>

    <div class="container mt-4">
        <!-- Study Session 1-3 -->
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="assets/crx.jpeg" class="card-img-top img-fluid" alt="Study Location 1">
                    <div class="card-body">
                        <h5 class="card-title">ITI1121</h5>
                        <p class="card-text">Location: CRX420</p>
                        <p class="card-text">Time: 13:00</p>
                    </div>
                </div>
            </div>
    
    
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="assets/starbucks.jpg" class="card-img-top img-fluid" alt="Study Location 3">
                    <div class="card-body">
                        <h5 class="card-title">ITI1120</h5>
                        <p class="card-text">Location: Starbucks</p>
                        <p class="card-text">Time: 3:00</p>
                    </div>
                </div>
            </div>
        </div>
    
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


</body>

</html>