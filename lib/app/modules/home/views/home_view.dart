import 'package:e_regle/app/data/composants/mainButton.dart';
import 'package:e_regle/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_regle/app/data/composants/colors.dart'; // Assurez-vous que le chemin est correct
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logo.png',
                      width: 200,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'SANTE-FASO',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Suivez votre cycle en toute simplicité. Avec notre application, vous pouvez facilement suivre et gérer votre cycle menstruel. Recevez des rappels et des notifications pour ne jamais oublier vos dates importantes. L\'application vous permet également de suivre vos symptômes, votre humeur et d\'obtenir des conseils personnalisés. Grâce à des graphiques clairs et des prévisions, vous avez une vue d\'ensemble complète de votre santé. Notre interface est intuitive et simple à utiliser, vous permettant de rester à l\'écoute de votre corps. Profitez également de conseils bien-être et de ressources pour mieux comprendre votre cycle. Que vous soyez en phase de règles ou d\'ovulation, vous serez toujours informée. Commencez dès maintenant et gérez votre cycle en toute sérénité.',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Mainbutton.mainButton(
              title: "Commencer",
              onPressed: () {
                Get.toNamed(Routes.MAIN_HOME);
              },
            ),
          ),
        ],
      ),
    );
  }
}
