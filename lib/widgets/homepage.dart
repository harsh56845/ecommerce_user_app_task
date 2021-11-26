import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color = Color(0xFF707070);
    Color _color2 = Color(0xFFF3AA4E);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [       const SizedBox(height: 48,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Image.asset("assets/user/Rectangle 23.png")],
                  ),       const SizedBox(height: 18,),
                  Text('Eyevy',
                      style: TextStyle(
                        fontSize: 20,
                        color: _color,
                      )),
                      const SizedBox(height: 25,),
                  Text('Full Rim Rund, Cat-eyed Anti Glare Frame(48mm)',
                      style: TextStyle(
                         color: _color,
                        fontSize: 20,
                      )),       const SizedBox(height: 25,),
                  Row(
                    children: const [
                      Text(
                        "₹ 219",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                             const SizedBox(width: 15,),
                      Text(
                        "₹999",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,fontSize: 22
                        ),
                      ),   const SizedBox(width: 15,),
                      Text('78% off',
                          style: TextStyle(
                            color: Colors.green,fontSize: 22
                          ))
                    ],
                  ),
         
                ],
              ),
            ),const SizedBox(height: 45,),
                 ListTile(
          title: Row(
            children: <Widget>[
              Expanded(child: Container(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white
                  ),
                  onPressed: () {},child: Text("ADD TO CART",style: TextStyle(color: Colors.black),),),
              )),
 Expanded(child: Container(height: 50,
   child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: _color2
                  ),
                  onPressed: () {},child: Text("BUY NOW",style: TextStyle(color: Colors.white),),),
 )),
            ],
          ),
        )
          ],
        ),
      ),
    );
  }
}
