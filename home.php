<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="icon" href="path/to/favicon.ico">
    <title>Home Page</title>
</head>
<div>
    <nav class="navbar navbar-expand-lg navbar-light align-items-center bg-light">
        <img src="./images/logo.png" alt="" width="10%" height="20%">
        <h4 class="ms-2">Charm & Grace</h4>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav ms-4">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="visually-hidden">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
            </li>
            </ul>
        </div>
        <nav class="navbar navbar-collapse bg-light justify-content-center">
          <form class="right d-flex">
            <a href="">
              <button id="searchBtn" type="submit">
                <i class="fa fa-search"></i>
              </button>
            </a>
            <a href="signup.php">
              <button id="account" type="button">
                <i class="fa fa-user-circle-o"></i>
                <span id="yourAccount">Your Account</span>
              </button>
            </a>
            <a href="#">
              <button id="cart" type="button">
                <div class="d-flex align-items-center">
                  <i class="fa fa-shopping-cart me-2"></i>
                  <span>My Cart</span>
                </div>
                <small class="text-muted mt-1" id="cart-total">Total: $0.00</small>
              </button>
            </a>
          </form>
        </nav>
    </nav>

    <div class="card text-white">
        <img src="./images/banner.png" class="card-img" alt="Featured Image">
        <div class="card-img-overlay">
            <h5 class="card-title">Welcome to Charm & Grace</h5>
            <p class="card-text">Discover our exclusive collection of beauty products and cosmetics.</p>
            <p class="card-text">Experience luxury beauty at its finest.</p>
        </div>
    </div>

    <div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
    <div class="card h-100">
      <img src="./images/eyeshadows.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Highlighters, Blushers & Eyeshadows</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="./images/foundation.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Foundation MakeUp & Concealer</h5>
        <p class="card-text">This is a short card.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="./images/lipsticks.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Lipsticks</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="./images/mascara.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Mascara and Eyeliner</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="./images/contour.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Contour & Bronzer</h5>
        <p class="card-text">This is a short card.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="./images/skin&bodycare.webp" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">SkinCare & BodyCare</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="./images/primers.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Primer</h5>
        <p class="card-text">This is a short card.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="./images/makeup_application.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">MakeUp Brushes & Applications</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="./images/settingspray.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Setting Spray</h5>
        <p class="card-text">This is a short card.</p>
      </div>
    </div>
  </div>
</div>

<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./images/poster3.webp" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="./images/poster1.webp" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="./images/poster2.webp" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<footer class="bg-dark text-light pt-5 pb-4">
  <div class="container text-center text-md-start">
    <div class="row">
      <!-- Logo and About Section -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
        <h6 class="text-uppercase fw-bold mb-4">
          <i class="fa fa-star me-2"></i>Charm & Grace
        </h6>
        <p>Grace your glow with our exclusive range of beauty and cosmetic products. Where elegance meets innovation.</p>
      </div>

      <!-- Quick Links -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
        <h6 class="text-uppercase fw-bold mb-4">Quick Links</h6>
        <ul class="list-unstyled">
          <li><a href="#" class="text-light text-decoration-none">Home</a></li>
          <li><a href="#" class="text-light text-decoration-none">Features</a></li>
          <li><a href="#" class="text-light text-decoration-none">Pricing</a></li>
          <li><a href="#" class="text-light text-decoration-none">Shop</a></li>
        </ul>
      </div>

      <!-- Customer Care -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
        <h6 class="text-uppercase fw-bold mb-4">Customer Care</h6>
        <ul class="list-unstyled">
          <li><a href="#" class="text-light text-decoration-none">FAQs</a></li>
          <li><a href="#" class="text-light text-decoration-none">Shipping & Returns</a></li>
          <li><a href="#" class="text-light text-decoration-none">Privacy Policy</a></li>
          <li><a href="#" class="text-light text-decoration-none">Contact Us</a></li>
        </ul>
      </div>

      <!-- Contact Information -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
        <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
        <p><i class="fa fa-map-marker me-3"></i> 123 Glamour St, Beauty City</p>
        <p><i class="fa fa-envelope me-3"></i> support@charmandgrace.com</p>
        <p><i class="fa fa-phone me-3"></i> +1 234 567 890</p>
        <p><i class="fa fa-clock-o me-3"></i> Mon-Fri: 9AM - 6PM</p>
      </div>
    </div>

    <!-- Social Media Links -->
    <div class="row mt-4">
      <div class="col text-center">
        <a href="#" class="text-light me-3"><i class="fa fa-facebook fa-lg"></i></a>
        <a href="#" class="text-light me-3"><i class="fa fa-instagram fa-lg"></i></a>
        <a href="#" class="text-light me-3"><i class="fa fa-twitter fa-lg"></i></a>
        <a href="#" class="text-light"><i class="fa fa-youtube fa-lg"></i></a>
      </div>
    </div>

    <!-- Copyright -->
    <div class="row mt-4">
      <div class="col text-center">
        <p class="text-muted">© 2024 Charm & Grace. All Rights Reserved.</p>
      </div>
    </div>
  </div>
</footer>



</body>
</html>
