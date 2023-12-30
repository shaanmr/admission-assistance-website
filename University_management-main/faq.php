


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admission Assistance</title>

    <link rel="stylesheet" href="css/style.css">

    <!-- Bootstrap Link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Bootstrap Link -->


    <!-- Font Awesome Cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!-- Font Awesome Cdn -->


    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <!-- Google Fonts -->
</head>
<body>
    





    <!-- Navbar Start -->
    <?php 
      include_once 'nav.php';
    ?>
    <!-- Navbar End -->


    <div class="faq-body">
    <div class="accordion">
    <div class="image-box">
      <img src="images/mainImg.png" alt="">
    </div>
    <div class="accordion-text">
      <div class="title">FAQ</div>
    <ul class="faq-text">
      <li>
        <div class="question-arrow">
          <span class="question">What is the purpose of this website?</span>
          <i class="bx bxs-chevron-down arrow"></i>
        </div>
        <p>Our website is designed to help students and prospective learners 
          find comprehensive information about universities and the majors
           they offer in their country. It's a one-stop platform for
            educational exploration.</p>
        <span class="line"></span>
      </li>
      <li>
        <div class="question-arrow">
          <span class="question">How accurate and up-to-date is the information on this website?</span>
          <i class="bx bxs-chevron-down arrow"></i>
        </div>
        <p>We strive to keep our information as accurate and up-to-date as possible. 
          We regularly verify and update data from official sources and 
          institutions to provide reliable information.</p>
        <span class="line"></span>
      </li>
      <li>
        <div class="question-arrow">
          <span class="question">Do you provide contact information for universities?</span>
          <i class="bx bxs-chevron-down arrow"></i>
        </div>
        <p>Yes, we offer contact details for universities. 
          You can find information like website links, phone numbers, 
          and email addresses to get in touch with them directly.</p>
        <span class="line"></span>
      </li>
      <li>
        <div class="question-arrow">
          <span class="question">Is there a cost for using this website?</span>
          <i class="bx bxs-chevron-down arrow"></i>
        </div>
        <p>>No, our website is completely free to use. 
          We believe that access to educational information 
          should be accessible to everyone.</p>
        <span class="line"></span>
      </li>
      <li>
        <div class="question-arrow">
          <span class="question">Can I compare universities and majors and put them to this website's wish list?</span>
          <i class="bx bxs-chevron-down arrow"></i>
        </div>
        <p>Yes, you can sign up for an account on our website to 
          compare universities and majors and add them to your wish list.
           This function assists you in making well-informed judgements.</p>
        <span class="line"></span>
      </li>
    </ul>
    </div>
  </div>
    </div>



    <!-- Footer Start -->
    <?php 
        include_once 'footer.php';
      ?>
    <!-- Footer End -->



    <script>
    let li = document.querySelectorAll(".faq-text li");
    for (var i = 0; i < li.length; i++) {
      li[i].addEventListener("click", (e)=>{
        let clickedLi;
        if(e.target.classList.contains("question-arrow")){
          clickedLi = e.target.parentElement;
        }else{
          clickedLi = e.target.parentElement.parentElement;
        }
       clickedLi.classList.toggle("showAnswer");
      });
    }
  </script>



    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>