class AppLink{
  // https://www.omdbapi.com/?t=terminator&apikey=febfb7e5
  // static const String movie = "terminator";
  // static const String server = "https://www.omdbapi.com/?t=";
  // static const String apiKey = "&apikey=febfb7e5";
  // static const String test = "https://www.omdbapi.com/?t=terminator&apikey=febfb7e5";


//server
  static const String server = "http://192.168.1.4/ecommerce";

//image
  static const String imageStatic = "http://192.168.1.4/ecommerce/upload";
  static const String imageCategories = "$imageStatic/categories";
  static const String imageItems = "$imageStatic/items";

//test
  static const String test = "$server/test.php";

//auth
  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifyCodeSignup = "$server/auth/verifycode.php";
  static const String resend = "$server/auth/resend.php";

//forgetpassword
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword = "$server/forgetpassword/resetpassword.php";
  static const String verifyCodeForgetPassword = "$server/forgetpassword/verifycode.php";

//Home
  static const String homePage = "$server/home.php";


//Items
  static const String itemsPage = "$server/items/items.php";
  static const String productPage = "$server/product/product.php";

//Favorite
  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String deleteFromFavorite = "$server/favorite/deletefromfavorite.php";

  //Cart
  static const String cartAdd = "$server/cart/add.php";
  static const String cartRemove = "$server/cart/remove.php";
  static const String cartView = "$server/cart/view.php";
  static const String deleteFromCart = "$server/cart/deletefromcart.php";


  //orders
  static const String orderView = "$server/order/view.php";
  static const String orderAdd = "$server/order/add.php";
  static const String done = "$server/order/done.php";
  static const String myOrder = "$server/order/myorder.php";

  static const String adminViewOrder = "$server/order/myorderadmin.php";
  static const String showCustomer = "$server/order/showcustomer.php";


  static const String search = "$server/search/search.php";






}