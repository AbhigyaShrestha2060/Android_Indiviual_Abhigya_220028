import 'package:Guitar_Shop/controllers/auth_controller.dart';
import 'package:Guitar_Shop/views/home_screen/home.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen>{
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  //text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight*0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Join the $appname".text.fontFamily(bold).white.size(18).make(),
                15.heightBox,

                Obx(()=>
                Column(
                    children: [
                      customTextField(hint: nameHint, title: name, controller: nameController, isPass: false),
                      customTextField(hint: emailHint, title: email, controller: emailController, isPass: false),
                      customTextField(hint: passwordHint, title: password, controller: passwordController, isPass: true),
                      customTextField(hint: passwordHint, title: retypePassword, controller: passwordRetypeController, isPass: true),


                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.blue,
                            checkColor: Colors.white,
                              value: isCheck,
                              onChanged: (newValue){
                              setState(() {
                                isCheck = newValue;

                              });
                              }
                          ),
                          10.widthBox,
                          Expanded(
                            child: RichText(text: const TextSpan(
                                children: [
                                  TextSpan(text: "I agree to the ",
                                      style: TextStyle(
                                    fontFamily: regular,
                                    color: fontGrey,
                                  )),
                                  TextSpan(
                                    text: termsAndCond,
                                    style: TextStyle(
                                      fontFamily: regular,
                                      color: Colors.blue,
                                    )),
                                  TextSpan(
                                      text: "&",
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: fontGrey,
                                      )),
                                  TextSpan(
                                      text: privacyPolicy,
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: Colors.blue,
                                      )),

                            ])),
                          )
                        ],
                      ),
                      5.heightBox,
                      controller.isloading.value? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(redColor),

          ):
                      // ourButton().box.width(context.screenWidth - 50).make(),
                      ourButton(
                          color: isCheck==true? blue:lightGrey,
                          title: signup,
                          textColor: whiteColor,
                          onPress: () async{
                            if(isCheck !=false){
                              controller.isloading(true);
                              try {
                                await controller.signupMethod(
                                    context: context,
                                    email: emailController.text,
                                    password: passwordController.text).then((value) {
                                      return controller.storeUserData(
                                        email: emailController.text,
                                        password: passwordController.text,
                                        name: nameController.text
                                      );
                                }).then((value) {
                                  VxToast.show(context, msg: loggedin);
                                  Get.offAll(() => Home());
                                });
                              }catch (e){
                                auth.signOut();
                                VxToast.show(context, msg: e.toString());
                                controller.isloading(false);

                              }
                            }
                          })
                          .box
                          .width(context.screenWidth -50)
                          .make(),
                      10.heightBox,
                      //wrapped into gesture detector of velocity x
                      RichText(
                          text:const TextSpan(
                            children:[
                              TextSpan(
                                text: alreadyHaveAccount,
                                style: TextStyle(fontFamily: bold, color: fontGrey),
                          ),
                          TextSpan(
                              text: login,
                              style: TextStyle(fontFamily: bold, color: blue),
                          )
                        ],
                      ),
                      ).
                      onTap(() {
                        Get.back();
                      })

                    ],
                  ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),
                )
              ],
            ),
          ),
        ));
  }
}
