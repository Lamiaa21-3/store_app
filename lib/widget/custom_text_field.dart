

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({this.hintText, this.onChanged,this.obscureText,this.input_type});
  String? hintText;
  Function(String)? onChanged;
  bool? obscureText;
  TextInputType? input_type;

  @override
  Widget build(BuildContext context) {
    return TextField(
       onChanged:onChanged,
         obscureText:obscureText??false,
         keyboardType: input_type,
        
        decoration: InputDecoration(
          hintText:hintText ,
        
         
          enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(
              color: Colors.black,
             
            ),
             borderRadius:BorderRadius.circular(10),

          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
              borderRadius:BorderRadius.circular(10),
          )
        ),
      
    );
  }
}











// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//    CustomTextField({  this.obscureText, this.onchanged,this.hint_Text });

   
//     String? hint_Text;
//   Function(String)?  onchanged;
  
//   bool? obscureText;

//   @override
//   Widget build(BuildContext context) {
  
//     return TextFormField(
//       obscureText: obscureText! ,
//       validator: (data){
//         if(data == null || data.isEmpty) 
//         {
//           return 'product name';
//         }
//         return null;
       
//       },
//       onChanged: onchanged,
//       decoration: InputDecoration(
//         hintText: hint_Text,
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(
//           ),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         border: OutlineInputBorder(
//           borderSide: BorderSide(),
//           borderRadius: BorderRadius.circular(8)
//         ),
//       ),
      
//     );
//   }
// }