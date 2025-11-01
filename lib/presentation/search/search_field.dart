import 'package:flutter/material.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController _controller;
  // final _debouncer = Debouncer(delay: const Duration(milliseconds: 600));

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // final searchQuery = context
    //     .watch<SearchBloc>()
    //     .state
    //     .searchQuery
    //     .getOrDefaultValue('');
    final searchQuery = '';
    if (_controller.text != searchQuery) {
      final oldSelection = _controller.selection;
      var offset = oldSelection.baseOffset;
      if (offset > searchQuery.length) {
        offset = searchQuery.length;
      }
      _controller.value = TextEditingValue(
        text: searchQuery,
        selection: TextSelection.collapsed(offset: offset),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        fillColor: BaseColors.white.withValues(alpha: 0.1),
        filled: true,
        hintText: 'Search movies...',
        hintStyle: BaseTextStyles.mulishLargeSemiBold.copyWith(
          color: BaseColors.textGrey,
        ),
        contentPadding: const EdgeInsets.all(10),
        prefixIcon: Icon(PhosphorIconsRegular.magnifyingGlass, size: 20),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 24,
          minHeight: 24,
        ),
      ),
      style: BaseTextStyles.mulishMediumRegular.copyWith(
        color: BaseColors.primaryBlack,
      ),
      cursorColor: BaseColors.primaryBlack,
      cursorWidth: 1.4,
      onChanged: (value) {
        // context.read<SearchBloc>().add(
        //   SearchEvent.onQueryChanged(value: StringValue(value)),
        // );
        // if (value.length > 2) {
        //   _debouncer.run(() {
        //     context.read<SearchBloc>().add(const SearchEvent.search());
        //   });
        // }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
