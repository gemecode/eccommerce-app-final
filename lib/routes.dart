import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/middleware/mymiddleware.dart';
import 'package:final_project/view/screen/admin/admin_home.dart';
import 'package:final_project/view/screen/admin/show_customer.dart';
import 'package:final_project/view/screen/admin/view_orders.dart';
import 'package:final_project/view/screen/auth/login_screen.dart';
import 'package:final_project/view/screen/auth/signup_screen.dart';
import 'package:final_project/view/screen/auth/successsignup_screen.dart';
import 'package:final_project/view/screen/auth/verifycodesignup_screen.dart';
import 'package:final_project/view/screen/forgetpasswoed/forgetpassword_screen.dart';
import 'package:final_project/view/screen/forgetpasswoed/resetpassword_screen.dart';
import 'package:final_project/view/screen/forgetpasswoed/successresetpassword_screen.dart';
import 'package:final_project/view/screen/forgetpasswoed/verifycodepassword_screen.dart';
import 'package:final_project/view/screen/language.dart';
import 'package:final_project/view/screen/user/home_screen.dart';
import 'package:final_project/view/screen/user/items_page.dart';
import 'package:final_project/view/screen/user/mycart.dart';
import 'package:final_project/view/screen/user/myfavorite.dart';
import 'package:final_project/view/screen/user/myorder.dart';
import 'package:final_project/view/screen/user/myorders.dart';
import 'package:final_project/view/screen/user/product_details.dart';
import 'package:final_project/view/screen/user/search_screen.dart';
import 'package:get/get.dart';


List<GetPage<dynamic>>? routes =[

  GetPage(name: "/", page: ()=> const Language(), middlewares: [
    MyMiddleWare()
  ]),


  // GetPage(name: "/", page: ()=> const ProductDetails(),),
  // GetPage(name: "/", page: ()=> const Language(),),
  // GetPage(name: "/", page: ()=> const TestView(),),
  // GetPage(name: "/", page: ()=> const Test(),),



  //Auth
  GetPage(name: AppRoute.login, page: ()=> const LoginScreen()),
  GetPage(name: AppRoute.signUp, page: ()=> const SignupScreen()),
  GetPage(name: AppRoute.forgetPassword, page: ()=>  const ForgetPasswordScreen()),
  GetPage(name: AppRoute.resetPassword, page: ()=> const ResetPasswordScreen()),
  GetPage(name: AppRoute.successResetPassword, page: ()=> const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUpPassword, page: ()=> const SuccessSignUp()),
  GetPage(name: AppRoute.verifyCode, page: ()=> const VerifyCodeScreen()),
  GetPage(name: AppRoute.verifyCodeSignUp, page: ()=> const VerifyCodeSignUpScreen()),

  //login
  GetPage(name: AppRoute.adminScreen, page: ()=> const AdminScreen()),
  GetPage(name: AppRoute.homePage, page: ()=> const HomeScreen()),
  GetPage(name: AppRoute.itemsPage, page: ()=> const ItemsPage()),
  GetPage(name: AppRoute.productDetails, page: ()=> const ProductDetails()),
  GetPage(name: AppRoute.myFavorite, page: ()=> const MyFavorite()),
  GetPage(name: AppRoute.myCart, page: ()=> const MyCart()),
  GetPage(name: AppRoute.myOrder, page: ()=>  MyOrder()),
  GetPage(name: AppRoute.ordersScreen, page: ()=>  const OrdersScreen()),
  GetPage(name: AppRoute.adminOrdersScreen, page: ()=>  const AdminOrdersScreen()),
  GetPage(name: AppRoute.showCustomer, page: ()=>  const ShowCustomer()),
  GetPage(name: AppRoute.searchScreen, page: ()=>  const SearchScreen()),
];



// AddProduct.id:(context)=>  AddProduct(),
// EditProduct.id:(context)=>  EditProduct(),
// CartScreen.id:(context)=>  CartScreen(),