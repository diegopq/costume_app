part of 'entities.dart';

class Filters {
  static List<FilterData> all = [
    FilterData(name: 'Burnning', path: EffectsFiles.burnning),
    FilterData(name: 'Elephant', path: EffectsFiles.elephant),
    FilterData(name: 'Emotions', path: EffectsFiles.emotions),
    FilterData(name: 'Extreme Makeover', path: EffectsFiles.extremeMakeover),
    FilterData(name: 'Fire', path: EffectsFiles.fire),
    FilterData(name: 'Flower', path: EffectsFiles.flower),
    FilterData(name: 'Hope', path: EffectsFiles.hope),
    FilterData(name: 'Humanoid', path: EffectsFiles.humanoid),
    FilterData(name: 'Makeup', path: EffectsFiles.makeup),
    FilterData(name: 'Neon Horns', path: EffectsFiles.neonHorns),
    FilterData(name: 'Devil Eyes', path: EffectsFiles.redEyes),
    FilterData(name: 'Burning', path: EffectsFiles.splitLook),
    FilterData(name: 'Stallone', path: EffectsFiles.stallone),
    FilterData(name: 'Crazy Tonge', path: EffectsFiles.tonge),
    FilterData(name: 'Vendetta', path: EffectsFiles.vendetta),
    FilterData(name: 'Viking Helment', path: EffectsFiles.vikingHelment),
    FilterData(name: 'Fairy', path: EffectsFiles.fairy),
    FilterData(name: 'Tree', path: EffectsFiles.headTree),
    FilterData(name: 'Alien', path: EffectsFiles.alien),
    FilterData(name: 'Rainbow', path: EffectsFiles.rainbow),
    FilterData(name: 'Butterflies', path: EffectsFiles.butterflies),
    FilterData(name: 'Glasses', path: EffectsFiles.glasses),
    FilterData(name: 'Football Helment', path: EffectsFiles.footbalHelment),
    FilterData(name: 'Horns Helment', path: EffectsFiles.hornsHelment),
  ];
}

class FilterData {
  FilterData({required this.name, required this.path});

  final String name;
  final String path;
}
