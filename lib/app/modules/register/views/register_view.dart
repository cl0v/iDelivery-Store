import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery_store/app/modules/register/controllers/register_controller.dart';

//TODO: Adicionar sistemas de erros(Fui pego no erro de conta ja criada)

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar'),
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(32),
        child: ListView(
          children: [
            Text(
              'Dados do usuário: ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            TextFormField(
              controller: controller.nameController,
              decoration: InputDecoration(hintText: "Nome"),
            ),
            TextFormField(
              controller: controller.cpfController,
              decoration: InputDecoration(hintText: "CPF"),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: controller.userPhoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(hintText: "Telefone Pessoal"),
            ),
            TextFormField(
              controller: controller.emailController,
              decoration: InputDecoration(hintText: "Email"),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: controller.passwordController,
              decoration: InputDecoration(hintText: "Senha"),
              obscureText: true,
            ),
            Divider(),
            Text(
              'Dados da loja: ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            ListTile(
              title: Text('Adicionar imagem da loja (1:1)'),
              leading: Icon(Icons.photo_library),
              onTap: controller.getImage,
            ),
            TextFormField(
              controller: controller.titleController,
              decoration: InputDecoration(hintText: "Titulo"),
            ),
            TextFormField(
              controller: controller.phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(hintText: "Telefone"),
            ),
            TextFormField(
              controller: controller.shipController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Valor frete"),
            ),
            Divider(),
            Text(
              'Endereço: ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            TextFormField(
              controller: controller.ruaController,
              decoration: InputDecoration(hintText: "Rua"),
            ),
            TextFormField(
              controller: controller.numeroController,
              decoration: InputDecoration(hintText: "Numero"),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: controller.bairroController,
              decoration: InputDecoration(hintText: "Bairro"),
            ),
            TextFormField(
              controller: controller.cepController,
              decoration: InputDecoration(hintText: "CEP"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
              onPressed: controller.register,
              child: Text("Confirmar"),
            ),
          ],
        ),
      ),
    );
  }
}
