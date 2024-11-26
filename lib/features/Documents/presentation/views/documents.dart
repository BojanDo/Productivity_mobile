import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../domain/entities/documents.dart';
import '../bloc/documents_bloc.dart';

class DocumentsPage extends StatelessWidget {
  const DocumentsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<DocumentsBloc>(
        create: (BuildContext context) => sl<DocumentsBloc>(),
        child: const DocumentsPageInner(),
      );
}

class DocumentsPageInner extends StatefulWidget {
  const DocumentsPageInner({super.key});

  @override
  State<DocumentsPageInner> createState() => _DocumentsPageInnerState();
}

class _DocumentsPageInnerState extends State<DocumentsPageInner> {
  @override
  void initState() {
    context.read<DocumentsBloc>().add(const DocumentsEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<DocumentsBloc, DocumentsState>(
        builder: (BuildContext context, DocumentsState state) => Scaffold(
          appBar: GlobalAppBar(
            title: 'Documents',
            count: state.whenOrNull(
              loaded: (PaginatedList<Document> documents) => documents.total,
            ),
          ),
          body: Column(),
        ),
      );
}
