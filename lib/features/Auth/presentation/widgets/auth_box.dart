import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/functions/routes.dart';
import '../../../User/domain/entities/users.dart';
import '../bloc/auth_bloc.dart';
import 'box.dart';

class AuthBox<BlocT extends StateStreamable<BlocState>,
    BlocState extends FormBlocState<User, String>> extends StatelessWidget {
  final FormBloc<User, String> formBloc;
  final Widget page;
  final String buttonText;
  final String switchText;
  final String? useOfflineText;
  final int switchPageId;
  final int? useOfflinePageId;
  final VoidCallback submit;

  const AuthBox({
    super.key,
    required this.formBloc,
    required this.page,
    required this.buttonText,
    required this.switchText,
    required this.switchPageId,
    required this.submit,
    this.useOfflineText,
    this.useOfflinePageId,
  });

  @override
  Widget build(BuildContext context) => Box(
          child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
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
              child: Text(
                switchText,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSecondary),
              ),
            ),
            const SizedBox(height: 16),
            if (useOfflineText != null && useOfflinePageId != null)
              GestureDetector(
                onTap: () {
                  animateToPage(
                    context.read<AuthBloc>().pageController,
                    useOfflinePageId!,
                  );
                },
                child: Text(
                  useOfflineText!,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
          ],
        ),
      ));

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
