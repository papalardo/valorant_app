import 'package:valorant_app/modules/crosshairs/ui/crosshairs/bloc/crosshairs_bloc.dart';
import 'package:valorant_app/utils/widgets/bloc/bloc_wrapper_provider.dart';

typedef OnInitBloc = void Function(CrosshairsBloc);

class CrosshairsProvider extends BlocWrapper<CrosshairsBloc, CrosshairsState> {
  const CrosshairsProvider({
    super.key,
    super.onInit,
    super.builder,
  });
}
