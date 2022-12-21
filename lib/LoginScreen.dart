import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.wallpapersden.com/image/download/night-mountains-summer-illustration_a2plamaUmZqaraWkpJRnbmhnrWduaGc.jpg"
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SIGN UP',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFFe5e5e5),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                    ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          disabledBorder:OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black45
                              ),
                              borderRadius:BorderRadius.circular(10)

                          ),
                          enabledBorder:OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70
                              ),
                              borderRadius:BorderRadius.circular(10)

                          ),
                          focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red
                        ),
                        borderRadius:BorderRadius.circular(10)

                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.redAccent,
                        ),
                        labelText: 'Email Address',
                          labelStyle: TextStyle(
                            color: Colors.black45
                          ),

                      ),

                    ),
                    SizedBox(
                      height: 30.0,
                    ),

                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        disabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45
                            ),
                            borderRadius:BorderRadius.circular(10)

                        ),
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70
                            ),
                            borderRadius:BorderRadius.circular(10)

                        ),
                        focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red
                            ),
                            borderRadius:BorderRadius.circular(10)

                        ),

                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.redAccent,
                        ),
                        suffix: Icon(
                          Icons.remove_red_eye ,
                          color: Colors.white70,
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.black45
                        ),

                      ),

                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(

                      width: double.infinity,
                      color: Color(0xFFab4747),
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          'Login' ,
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Roboto'
                          ),
                        ),
                        style:ButtonStyle(
                          shape:MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),

                          )),

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t Have an Account ?',
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        TextButton(onPressed: (){}, child: Text(
                         'Register Now',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent
                          ),
                        ),)
                      ],
                    ),



                  ],
                ),
              ),
            ),
          ),
        ) ,
    );
  }
}
