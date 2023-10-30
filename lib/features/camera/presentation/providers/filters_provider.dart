part of 'providers.dart';

final filtersProvider = StateNotifierProvider<FiltersProvider, FiltersState>(
  (ref) => FiltersProvider(),
);

class FiltersProvider extends StateNotifier<FiltersState> {
  FiltersProvider()
      : super(
          FiltersState(
            filters: Filters.all,
            selectedFilter: Filters.all[0],
            currentIndex: 0,
          ),
        );

  void changeEffect(bool left) {
    if (left) {
      if (state.currentIndex == 0) return;
      state = state.copyWith(
        selectedFilter: state.filters[state.currentIndex - 1],
        currentIndex: state.currentIndex - 1,
      );
    } else {
      if (state.currentIndex < state.filters.length - 1) {
        state = state.copyWith(
          selectedFilter: state.filters[state.currentIndex + 1],
          currentIndex: state.currentIndex + 1,
        );
      }
    }
  }
}

class FiltersState {
  const FiltersState({
    required this.filters,
    required this.selectedFilter,
    required this.currentIndex,
  });

  final List<FilterData> filters;
  final FilterData selectedFilter;
  final int currentIndex;

  FiltersState copyWith({
    List<FilterData>? filters,
    FilterData? selectedFilter,
    int? currentIndex,
  }) {
    return FiltersState(
      filters: filters ?? this.filters,
      selectedFilter: selectedFilter ?? this.selectedFilter,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
