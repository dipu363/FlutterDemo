
import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: dreamBlue,
          border: Border.all(
            color: dreamBlue
          ),
          borderRadius: BorderRadius.circular(6)


      ),
      
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(

            backgroundColor: dreamBlue,
            elevation: 0
          ),
          onPressed: onTap,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: generalWhite,fontSize: 16 ,letterSpacing: .1,fontFamily: 'SFProDisplay'),
          )),
    );
  }
}
