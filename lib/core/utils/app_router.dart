import 'package:go_router/go_router.dart';
import 'package:hawa_application/features/driver/presentation/views/car_license_view.dart';
import 'package:hawa_application/features/driver/presentation/views/certificate_view.dart';
import 'package:hawa_application/features/driver/presentation/views/driver_registretion_view.dart';
import 'package:hawa_application/features/driver/presentation/views/driving_license_info.dart';
import 'package:hawa_application/features/driver/presentation/views/personal_info_view.dart';
import 'package:hawa_application/features/driver/presentation/views/residential_address.dart';
import 'package:hawa_application/features/driver/presentation/views/select_transport_for_driver_view.dart';
import 'package:hawa_application/features/home/presentation/views/OTP_view.dart';
import 'package:hawa_application/features/home/presentation/views/complete_your_profile_view.dart';
import 'package:hawa_application/features/home/presentation/views/create_password_view.dart';
import 'package:hawa_application/features/home/presentation/views/customer_login_or_signup_view.dart';
import 'package:hawa_application/features/home/presentation/views/driver_or_customer_view.dart';
import 'package:hawa_application/features/home/presentation/views/forget_password_view.dart';
import 'package:hawa_application/features/home/presentation/views/location_permission_view.dart';
import 'package:hawa_application/features/home/presentation/views/login_view.dart';
import 'package:hawa_application/features/home/presentation/views/set_new_password_view.dart';
import 'package:hawa_application/features/home/presentation/views/sign_up_view.dart';
import 'package:hawa_application/features/home/presentation/views/verify_number_view.dart';
import 'package:hawa_application/features/splash/presentation/views/splash_view_1.dart';
import 'package:hawa_application/features/splash/presentation/views/splash_view_2.dart';
import 'package:hawa_application/features/splash/presentation/views/splash_view_3.dart';


abstract class AppRouter {
  static const kSecondSplash = '/secondSplashView';
  static const kLocationPermissionView = '/LocationPermissionView';
  static const kDriverOrCustomerView = '/driverOrCustomerView';
  static const kCustomerLoginOrSignupView = '/customerLoginOrSignupView';
  static const kSignUpView = '/signUpView';
  static const kOtpView = '/otpView';
  static const kCreatePasswordView = '/createPasswordView';
  static const kCompleteYourProfileView = '/completeYourProfileView';
  static const kLoginView = '/loginView';
  static const kVerifyNumberView = '/verifyNumberView';
  static const kForgetPasswordView = '/forgetPasswordView';
  static const kSetNewPasswordView = '/setNewPasswordView';
  static const kSelectTransportForDriverView = '/selectTransportForDriverView';
  static const kDriverRegistretionView = '/driverRegistretionView';
  static const kPersonalInfoView = '/personalInfoView';
  static const kDrivingLicenseInfo = '/drivingLicenseInfo';
  static const kResidentialAddress = '/residentialAddress';
  static const kCertificateView = '/certificateView';
  static const kCarLicenseView = '/carLicenseView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView1(),
    ),
    GoRoute(
      path: '/secondSplashView',
      builder: (context, state) => const SplashView2(),
    ),
    GoRoute(
      path: '/thirdSplashView',
      builder: (context, state) => const SplashView3(),
    ),
    GoRoute(
      path: kLocationPermissionView,
      builder: (context, state) => LocationPermissionView(),
    ),
    GoRoute(
      path: kDriverOrCustomerView,
      builder: (context, state) => const DriverOrCustomerView(),
    ),
    GoRoute(
      path: kCustomerLoginOrSignupView,
      builder: (context, state) => const CustomerLoginOrSignupView(),
    ),
    GoRoute(
      path: kSignUpView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: kOtpView,
      builder: (context, state) => const OtpView(),
    ),
    GoRoute(
      path: kCreatePasswordView,
      builder: (context, state) => const CreatePasswordView(),
    ),
    GoRoute(
      path: kCompleteYourProfileView,
      builder: (context, state) => const CompleteYourProfileView(),
    ),
    GoRoute(
      path: kLoginView,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: kVerifyNumberView,
      builder: (context, state) => const VerifyNumberView(),
    ),
   GoRoute(
      path: kForgetPasswordView,
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
      path: kSetNewPasswordView,
      builder: (context, state) => const SetNewPasswordView(),
    ),
     GoRoute(
      path: kSelectTransportForDriverView,
      builder: (context, state) => const SelectTransportForDriverView(),
    ),
    GoRoute(
      path: kDriverRegistretionView,
      builder: (context, state) => const DriverRegistrationView(),
    ),
    GoRoute(
      path: kPersonalInfoView,
      builder: (context, state) => const PersonalInfoView(),
    ),
    GoRoute(
      path: kDrivingLicenseInfo,
      builder: (context, state) => const DrivingLicenseInfoView(),
    ),
     GoRoute(
      path: kResidentialAddress,
      builder: (context, state) => const ResidentialAddressInfoView(),
    ),
    GoRoute(
      path: kCertificateView,
      builder: (context, state) => const CertificateView(),
    ),
     GoRoute(
      path: kCarLicenseView,
      builder: (context, state) => const CarLicenseView(),
    ),
  ]);
}
