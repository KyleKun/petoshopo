import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:petoshopo/model/customer.dart';
import 'package:toast/toast.dart';


//class Signin extends StatelessWidget {

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  var namecliente = TextEditingController();
  var clienteTelephone = TextEditingController();
  var petName = TextEditingController();
  var petBread = TextEditingController();

  var urlImagem = "";

  bool fotoPet = true;

  List<String> imagens = ["https://images.unsplash.com/photo-1575425186775-b8de9a427e67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjc5NjV9&auto=format&fit=crop&w=634&q=80","https://images.unsplash.com/photo-1573865526739-10659fec78a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80","https://images.unsplash.com/photo-1552944249-481c99e23e97?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80","https://images.unsplash.com/photo-1568307970720-a8c50b644a7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80","https://images.unsplash.com/photo-1566624790190-511a09f6ddbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80","https://images.unsplash.com/photo-1566245856371-d9467fb7aeb8?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80"];

  var myBoxDados = Hive.box("dadosCustomers");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [1,1],
                  colors: [
                    Color(0xFF00C853),
                    Color(0xFF77F745)
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
             )
              ),
              child:
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  SizedBox(height: 30),
                  Visibility(
                    visible: fotoPet,
                    child: GestureDetector(
                      onTap: (){
                        
                        setState(() {
                          var random = Random();
                          int img = random.nextInt(imagens.length);
                          urlImagem = imagens[img];
                          fotoPet = false;
                        });
                      },
                      child: Align(
                    alignment: Alignment.center,
                      child: Icon(Icons.pets,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                    ),
                  ),
                  Visibility(
                    visible: !fotoPet,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          var random = Random();
                          int img = random.nextInt(imagens.length);
                          urlImagem = imagens[img];
                          fotoPet = false;
                        });
                      },
                      onLongPress: (){ 
                        setState(() {
                          fotoPet = true;
                          urlImagem = "";
                        });
                      },
                      child:Align(
                    alignment: Alignment.center,
                      child: CircleAvatar(
                      radius: 42,
                      backgroundImage: NetworkImage(urlImagem),
                      ),
                  )
                       ,
                    ),
                  ),
                  Text("Click na imagem para adicionar/remover"),
                  Spacer(),

                  Align(
                    alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 22,
                          right: 32,
                          left: 32
                        ),
                        child: Text('Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Quicksand"
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ), 

              Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 42),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                      top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: TextField(
                      controller: namecliente,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.person,
                            color: Colors.grey,
                        ),
                          hintText: 'Name',
                          labelStyle: TextStyle(
                        fontFamily: "Quicksand",
                ),
                      ),
                    ),
                  ),

                Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: clienteTelephone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.phone,
                          color: Colors.grey,
                        ),
                        hintText: 'Telephone',
                        labelStyle: TextStyle(
                        fontFamily: "Quicksand",
                ),
                      ),
                    ),
                  ),
                   Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      controller: petName,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.pets,
                          color: Colors.grey,
                        ),
                        hintText: 'Pet name',
                        labelStyle: TextStyle(
                        fontFamily: "Quicksand",
                ),
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      controller: petBread,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.pets,
                          color: Colors.grey,
                        ),
                        hintText: 'Pet breed',
                        labelStyle: TextStyle(
                        fontFamily: "Quicksand",
                ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 20),

                  GestureDetector(
                    child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        stops: [0.1,1],
                        colors: [
                    Color(0xFF00C853),
                    Color(0xFF77F745)
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      )
                    ),
                    child: Center(
                      child: FlatButton(
                      child: Text('Sign in'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Quicksand"
                        ),
                      ), onPressed: () {
                        iniciarProcessoCadastro();
                      }
              )
            )
           ),
           onTap: (){
             //iniciarProcessoCadastro();
           },
                  ),
          ],
        ),
      ),
          ]
        ),
        ))
    );
  }

  void iniciarProcessoCadastro(){
    String name = namecliente.text;
    String telephone = clienteTelephone.text;
    String namePet = petName.text;
    String breedPet = petBread.text;

    bool verificar = verificarCampos(name, telephone, namePet, breedPet);
    
    if(verificar == true){
      Customer customer = Customer();

      print(configurarMaskTelephone(telephone));

      customer.name = name;
      customer.telephone = telephone;
      customer.petName = namePet;
      customer.petBreed = breedPet;
      customer.maskTelephone = configurarMaskTelephone(telephone);
      customer.urlImage = urlImagem ?? "";

      myBoxDados.add(customer);

      namecliente.text = "";
      clienteTelephone.text = "";
      petName.text = "";
      petBread.text = "";

    }

    }

    String configurarMaskTelephone(String telephone){
      String numberMask = "";

      for(int i = 0; i < telephone.length; i++){

        if(i == 0){
          numberMask = numberMask + "(";
        }

        if(i == 2){
          numberMask = numberMask + ") ";
        }

        if(i == telephone.length - 4){
          numberMask = numberMask + "-";
        }

        numberMask = numberMask + telephone[i];

      }
      return numberMask;
    }
    
      bool verificarCampos(String name, String telephone, String namePet, String breedPet) {

        if(name.isNotEmpty){
          if(telephone.isNotEmpty){
            if(namePet.isNotEmpty){
              if(breedPet.isNotEmpty){
                if(telephone.length == 11){
                  return true;
                }else{
                  msg("Seu numero está incompleto");
                }
              }else{
                msg("O campo breedPet é obrigatorio");
              }
            }else{
              msg("O campo petName é obrigatorio");
            }
          }else{
            msg("O campo telephone é obrigatorio");
          }
        }else{
          msg("O campo name é obrigatorio");
        }

        return false;        
      }

      void msg(String text){
        Toast.show(text, context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
      }

}