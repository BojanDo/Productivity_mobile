import 'package:flutter/material.dart';

import '../../core/config/colors.dart';
import '../../core/config/constants.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    super.key,
    required this.title,
    required this.child,
    this.onCancel,
    this.onFilter,
    this.filterButtonTitle = 'Filter',
    this.showBackButton = true,
  });

  final bool showBackButton;
  final String title;
  final Widget child;
  final VoidCallback? onCancel;
  final VoidCallback? onFilter;
  final String filterButtonTitle;

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  if (showBackButton)
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_new,color: Theme.of(context).colorScheme.onSecondary,),
                      onPressed: onCancel,
                    ),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(color: Theme.of(context).colorScheme.onSecondary,fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  if (showBackButton)
                    const SizedBox(width: 48), // To balance spacing
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: child,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0), // Bottom margin
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: onCancel,
                    child: Text(
                      'Cancel',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                    ),
                  ),
                  const SizedBox(width: 12), // Space between buttons
                  ElevatedButton(
                    onPressed: onFilter,
                    style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                          padding:
                              const WidgetStatePropertyAll<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                          ),
                          backgroundColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.disabled)) {
                                return kPrimaryColor.withOpacity(0.4);
                              }
                              return kPrimaryColor;
                            },
                          ),
                          foregroundColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) => Colors.white,
                          ),
                        ),
                    child: Text(filterButtonTitle),
                  ),
                ],
              ),
            ),
          ],
        ),
  );
}
