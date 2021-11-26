import 'package:flutter/material.dart';

class Login extends StatefulWidget {
   Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();  
   bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFF707070);
    Color _color2 = const Color(0xFFF3AA4E);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Padding(
               padding: const EdgeInsets.only(left: 10),
                child: Text('Login in to get started',style: TextStyle(color: _color,fontSize: 20),),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Experience the all  App!',style: TextStyle(color: _color,fontSize: 20),),
              ),  const SizedBox(height: 30,),

               Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
                 children: [
                   Form(  
      key: _formKey,  
      child: Column(  
  
        children: <Widget>[  
          TextFormField(  
            decoration: InputDecoration(
              prefixIcon: Tab(
        
                    icon: Image.asset("assets/user/email-24px.png")),
              hintText: 'E-mail ID',
              hintStyle: TextStyle(
                    
                   
              ),
             
            ),
            validator: (value) {  
              if (value!.isEmpty) {  
                    return 'Please enter some text';  
              }  
              return null;  
            },  
          ),  const SizedBox(height: 20,),
           TextFormField(  obscureText: _isObscure,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });},),
              prefixIcon: Tab(
        
                    icon: Image.asset("assets/user/Icon ionic-ios-lock.png")),
              hintText: 'Password',
              hintStyle: TextStyle(
                    
                   
              ),
             
            ),
            validator: (value) {  
              if (value!.isEmpty) {  
                    return 'Please enter some text';  
              }  
              return null;  
            },  
          ),   const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Use Mobile Number',style: TextStyle(color: _color2,fontSize: 16),),],)
        ],  
      ),  
    ),],),
              

    
                 ],
               
    ),Container(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: _color2),
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));}, child: Text('Login')),)
            ],
          ),
        ),
      ),
    );
  }
}