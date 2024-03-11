import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "package:rent_onway/common/styles/text_string.dart";
import "package:rent_onway/utils/constants/sizes.dart";

class ThLoginForm extends StatelessWidget {
  const ThLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ThSize.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: Thtexts.email),
            ),
            const SizedBox(height: ThSize.spaceBtwInputField),
        
            //Password
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),
              labelText: Thtexts.password, 
              suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: ThSize.spaceBtwInputField /2),
        
          //Remember me and forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                Checkbox(value: true, onChanged: (value){}),
                const Text(Thtexts.rememberMe),
                ],
              ),
              //Forget Password
          TextButton(onPressed: (){}, child:const Text (Thtexts.forgetPassword) ),
            ],
          ),
        
          const SizedBox(height: ThSize.spaceBtwSections,),
        
          //sign in button
         SizedBox(width: double.infinity,child:  ElevatedButton(onPressed: (){}, child: const Text(Thtexts.signIn))),
         const SizedBox(height: ThSize.spaceBtwItems),
        
          //Create Acc button
          SizedBox(width: double.infinity,child:  OutlinedButton(onPressed: (){}, child: const Text(Thtexts.createAccount))),
                
          ],
          ),
      ),
    );
  }
}

