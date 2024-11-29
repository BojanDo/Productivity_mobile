import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/intinite_list.dart';
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
              loaded: (Documents documents, int page) => documents.total,
            ),
          ),
          body: Container(
            color: kSecondaryBackgroundColor,
            child: state.maybeWhen(
              orElse: () => _skeletonizer(state),
              error: () => const Center(
                child: Text('Error'),
              ),
            ),
          ),
        ),
      );

  Widget _skeletonizer(DocumentsState state) => Skeletonizer(
        enabled: state.maybeMap<bool>(
          getting: (_) => true,
          orElse: () => false,
        ),
        child: state.maybeWhen(
          getting: (Documents documents) =>
              _documentsList(context, documents, 1),
          loaded: (Documents documents, int page) =>
              _documentsList(context, documents, page),
          orElse: () => const SizedBox.shrink(),
        ),
      );

  Widget _documentsList(BuildContext context, Documents documents, int page) =>
      InfiniteList(
        count: documents.items.length,
        total: documents.total,
        itemBuilder: (BuildContext context, int index) =>
            _listItem(documents.items[index]),
        loadNextData: () {
          context.read<DocumentsBloc>().add(
                DocumentsEvent.getNext(
                  currentDocuments: documents,
                  page: page,
                ),
              );
        },
      );

  ListTile _listItem(Document document) => ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        dense: true,
        title: Text(document.title),
        onTap: () async {
          context
              .read<DocumentsBloc>()
              .add(DocumentsEvent.downloadFile(document: document));
        },
      );
}
