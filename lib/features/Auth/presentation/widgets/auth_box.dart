import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/functions/routes.dart';
import '../../../User/domain/entities/users.dart';
import '../bloc/auth_bloc.dart';

class AuthBox<BlocT extends StateStreamable<BlocState>,
    BlocState extends FormBlocState<User, String>> extends StatelessWidget {
  final FormBloc<User, String> formBloc;
  final Widget page;
  final String buttonText;
  final String switchText;
  final int switchPageId;
  final VoidCallback submit;

  const AuthBox({
    super.key,
    required this.formBloc,
    required this.page,
    required this.buttonText,
    required this.switchText,
    required this.switchPageId,
    required this.submit,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(vertical: 60.0, horizontal: 24.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kBorderRadius,
                border: Border.all(
                  color: kBorderSide.color,
                  width: kBorderSide.width,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(34.0),
                child: Column(
                  children: <Widget>[
                    page,
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(width: double.infinity, child: _submitButton()),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        animateToPage(
                          context.read<AuthBloc>().pageController,
                          switchPageId,
                        );
                      },
                      child: Text(switchText),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget _submitButton() => BlocBuilder<BlocT, BlocState>(
        builder: (BuildContext context, BlocState state) => ElevatedButton(
          onPressed: state.isValid() ? submit : null,
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.disabled)) {
                    return kPrimaryColor.withOpacity(0.4);
                  }
                  return kPrimaryColor;
                }),
                foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) => Colors.white,
                ),
              ),
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      );
}
