import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safePadding = MediaQuery.of(context).padding.top;
    const double paddingValue = 24;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height -
                  (paddingValue + safePadding),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hansel & Gretel',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Opéra graphique',
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          ?.copyWith(fontSize: 28),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                        // ignore: avoid_escaping_inner_quotes
                        'Bienvenue ! Cette application a été conçue pour vous permettre d\'écouter la musique en même temps que vous lisez le livret illustré de l\'opéra Hansel & Gretel. Vous y trouverez également des articles présentant l\'oeuvre et l\'enregistrement.'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                        // ignore: avoid_escaping_inner_quotes
                        'Pour accéder à l\'application, veuillez renseigner le mot de passe indiqué en 3e de couverture.'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Bonne écoute et bonne lecture !',
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const PasswordForm(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordForm extends StatefulWidget {
  const PasswordForm({Key? key}) : super(key: key);

  @override
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    myController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _requestFocus(){
  setState(() {
    FocusScope.of(context).requestFocus(_focusNode);
  });
}

  @override
  Widget build(BuildContext context) {
    final appRouter = AutoRouter.of(context);
    
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez renseigner le mot de passe';
              }
              if (value != 'hocuspocus') {
                return 'Mot de passe erroné';
              }
              return null;
            },
            onTap: _requestFocus,
            focusNode: _focusNode,
            controller: myController,
            cursorColor: Theme.of(context).accentColor,
            decoration: InputDecoration(
              
              hoverColor: Theme.of(context).accentColor,
              focusColor: Theme.of(context).accentColor,
              labelText: 'Mot de passe',
              labelStyle: TextStyle(color: _focusNode.hasFocus ? Theme.of(context).accentColor : Colors.black26),
              // enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
        borderSide:  BorderSide(color: Theme.of(context).accentColor ),

      ),
              border: const OutlineInputBorder(),
              
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _focusNode.unfocus();
              // FocusManager.instance.primaryFocus?.unfocus();
              appRouter.replace(const HomepageTabsRoute());
              }
            },
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).accentColor),
            child: const Text('Valider'),
          )
        ],
      ),
    );
  }
}
