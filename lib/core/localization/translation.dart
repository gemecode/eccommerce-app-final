import 'package:get/get.dart';

class MyTranslation extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    "ar" : {
      //language page
      "1" : "إختر اللغة",
      "2" : "عربي",
      "3" : "إنجليزي",


      //login page
      "4" : "تسجيل الدخول",
      "5" : "قم بتسجيل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو \n تابع باستخدام وسائل التواصل الاجتماعي",
      "6" : "أدخل بريدك الإلكتروني",
      "7" : "ادخل كلمةالسر",
      "8" : "نسيت كلمة المرور",
      "9" : "تسجيل الدخول",
      "10" : "ليس لديك حساب ؟ ",
      "11" : "إنشاء حساب",
      "12" : "أنا مشرف",
      "13" : "أنا مستخدم",

      //forget password
      "14" : "نسيت كلمة المرور",
      "15" : "تفقد البريد الإلكتروني",
      "16" : "الرجاء إدخال عنوان بريدك الإلكتروني للحصول على \n رمز التحقق",
      "17" : "البريد إلكتروني",
      "18" : "ابحث عن الحساب",

      //verify password
      "19" : "رمز التحقق",
      "20" : "التحقق من الكود",
      "21" : "الرجاء إدخال رمز التحقق المرسل إلى ",

      //reset password
      "22" : "إعادة تعيين كلمة المرور",
      "23" : "كلمة سر جديدة",
      "24" : "الرجاء إدخال كلمة مرور جديدة",
      "25" : "كلمة المرور",
      "26" : "تأكيد كلمة المرور",
      "27" : "تأكيد",
      "28" : "الرجوع الى ",
      "29" : "صفحة الدخول",

      //success reset password
      "30" : "تمت العملية بنجاح",
      "31" : "تهانينا",
      "32" : "تم تغيير كلمة المرو بنجاج",
      "33" : "الرجوع الى صفحة الدخول",

      //signup page
      "34" : "إنشاء حساب",
      "35" : "قم بإنشاء حساب باستخدام بريدك الإلكتروني وكلمة المرور أو \n تابع باستخدام وسائل التواصل الاجتماعي",
      "36" : "اسم المستخدم",
      "37" : "البريد الإلكتروني",
      "38" : "رقم الهاتف",
      "39" : "كلمة المرور",
      "40" : "تأكيد كلمة المرور",
      "41" : "إنشاء حساب",
      "42" : " هل لديك حساب ؟ ",
      "43" : "  تسجيل الدخول  ",


      //verify password signup
      "44" : "رمز التحقق",
      "45" : "التحقق من الكود",
      "46" : "الرجاء إدخال رمز التحقق المرسل إلى ",
      "47" : "إعادة إرسال رمز التحقق",


      //success signup
      "48" : "تمت العملية بنجاح",
      "49" : "تهانينا",
      "50" : "تم انشاء الحساب بنجاح",
      "51" : "الرجوع الى صفحة الدخول",





      //home page
      "70" : "ابحث عن منتج",
      "71" : "عروض الشتاء",
      "72" : "خصومات حتى 20%",
      "73" : "فئات",
      "74" : "منتج لك",
      "75" : "عروض",

      "76" : "الصفحة الرئيسية",
      "77" : "حسابي الشخصي",

      //profile
      "78" : "طلباتي",
      "79" : "مركز المساعدة",
      "80" : "دعم الدردشة",
      "81" : "الإعدادات",
      "82" : "عدد : ",
      "83" : "السعر الكلي : ",
      "84" : "تخفيض : ",
      "85" : "أضف الى العربة",
      "86" : "شراء",
      "87" : "طلبك",
      "88" : "انقر",
      "89" : "انقر فوق زر الشراء \n لحجز الطلب ، \n وسوف نتصل بك على البريد الإلكتروني \n المسجل أو رقم الهاتف",


      "90" : "لوحة تحكم المسؤول",
      "91" : "أضف منتج",
      "92" : "تحرير المنتج",
      "93" : "عرض الطلبات",
      "94" : "الطلبات",
      "95" : "معلومات العميل",


      //drawer
      "100" : "تسجيل الخروج",
      "101" : "اللغة",










      //warnings
      "199" : "تنبيه",
      "200" : "البريد الإلكتروني أو كلمة المرور غير صحيحة",
      "201" : "رقم الهاتف أو البريد الإلكتروني موجود بالفعل",
      "202" : "رمز التحقق غير صحيح",
      "203" : "البريد الإلكتروني غير موجود",
      "204" : "حاول مره أخرى",

      "205" : "إشعار",
      "206" : "تم اضافة المنتج الى المفضله",
      "207" : "تم حذف المنتج من المفضله",

      "208" : "تنبيه",
      "209" : "هل تريد الخروج من التطبيق",
      "210" : "تأكيد",
      "211" : "الغاء",

      "212" : "بريد أو كلمة مرور المشرف غير صحيحين",

      "213" : "تم اضافة المنتج الى العربة",
      "214" : "تم حذف المنتج من العربة",



      //validator
      "230" : "اسم مستخدم غير صالح",
      "231" : "بريد إلكتروني غير صالح",
      "232" : "رقم هاتف غير صالح",
      "233" : "لا يمكن أن تكون كلمة المرور فارغة",
      "234" : "لا يمكن أن تكون كلمة المرور أقل من ",
      "235" : "لا يمكن أن تكون كلمة المرور أكبر من ",
      "236" : "تأكيد كلمة المرور لا يمكن أن يكون فارغًا",
      "237" : "تأكيد كلمة المرور لا يمكن أن يكون أقل من ",
      "238" : "تأكيد كلمة المرور لا يمكن أن يكون أكبر من ",
      "239" : "ليس نفس كلمة المرور",


      "500" : "ج.م"
    },

   //////////////////////////////////////////////////////
  //////////////////////////////////////////////////////

    "en" : {
      //language page
      "1" : "Choose Language",
      "2" : "Arabic",
      "3" : "English",

      //login page
      "4" : "Sign In",
      "5" : "Sign In With Your Email And Password Or \nContinue With Social Media",
      "6" : "Enter your email",
      "7" : "Enter your password",
      "8" : "Forget Password",
      "9" : "Login",
      "10" : "Don't have an account ? ",
      "11" : "Sign Up",
      "12" : "i'm an admin",
      "13" : "i'm a user",

      //forget password
      "14" : "Forget Password",
      "15" : "Check Email",
      "16" : "Please Enter Your Email Address To Receive A \nVerification Code ",
      "17" : "Email",
      "18" : "Check",

      //verify password
      "19" : "Verification Code",
      "20" : "Check Code",
      "21" : "Please Enter The Digit Code Sent To ",

      //reset password
      "22" : "Reset Password",
      "23" : "New Password",
      "24" : "Please Enter New Password",
      "25" : "Password",
      "26" : "Confirm Password",
      "27" : "Save",
      "28" : "back to",
      "29" : "Log in",

      //success reset password
      "30" : "Success",
      "31" : "Congratulations",
      "32" : "Password changed successfully",
      "33" : "Go To Login",


      //signup page
      "34" : "Sign Up",
      "35" : "Sign Up With Your Email And Password Or \nContinue With Social Media",
      "36" : "Username",
      "37" : "Email",
      "38" : "Phone",
      "39" : "Password",
      "40" : "Confirm Password",
      "41" : "Sign up",
      "42" : " Already have an account ? ",
      "43" : "  Log in  ",



      //verify password signup
      "44" : "Verification Code",
      "45" : "Check Code",
      "46" : "Please Enter The Digit Code Sent To ",
      "47" : "Resend verify code ",


      //success signup
      "48" : "Success",
      "49" : "Congratulations",
      "50" : "Successfully registered",
      "51" : "Go To Login",

      //admin page














      //home page
      "70" : "Find Product",
      "71" : "A Winter Surprise",
      "72" : "Cashback 20%",
      "73" : "Categories",
      "74" : "Product for you",
      "75" : "Offers",


      "76" : "Home",
      "77" : "Profile",

      "78" : "My Orders",
      "79" : "Help Center",
      "80" : "Chat Support",
      "81" : "Settings",
      "82" : "Count : ",
      "83" : "Total Price : ",
      "84" : "Discount : ",
      "85" : "Add To Cart",
      "86" : "Purchase",
      "87" : "Your Order",
      "88" : "Click",
      "89" : "Click the purchase button to\n reserve the order,\n and we will contact you on the registered \n email or phone number",


      "90" : "Admin Control Panel",
      "91" : "Add Product",
      "92" : "Edit Product",
      "93" : "View Orders",
      "94" : "ORDERS",
      "95" : "CUSTOMER INFO",

      //drawer
      "100" : "Logout",
      "101" : "Language",











      //warnings
      "199" : "Warning",
      "200" : "Email Or Password Not Correct",
      "201" : "Phone Number Or Email Already Exists",
      "202" : "Verify Code Note Correct",
      "203" : "Email Not Found",
      "204" : "Try Again",

      "205" : "notification",
      "206" : "The product has been added to your favourites",
      "207" : "The product has been removed from your favourites",

      "208" : "Confirmation",
      "209" : "Do you want to exit the application",
      "210" : "Confirm",
      "211" : "Cancel",


      "212" : "Incorrect admin email or password",

      "213" : "The product has been added to your cart",
      "214" : "The product has been removed from your cart",



      //validator
      "230" : "not valid username",
      "231" : "not valid email",
      "232" : "not valid phone",
      "233" : "Password can't be empty",
      "234" : "Password can't be less than ",
      "235" : "Password can't be larger than ",
      "236" : "confirm password can't be empty",
      "237" : "confirm password can't be less than ",
      "238" : "confirm password can't be larger than ",
      "239" : "not same password",



      "500" : "EGP"

    },
  };

}