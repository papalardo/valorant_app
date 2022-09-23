import 'package:valorant_app/modules/crosshairs/ui/crosshair/bloc/crosshair_bloc.dart';
import 'package:valorant_app/utils/widgets/bloc/bloc_wrapper_provider.dart';

class CrosshairProvider extends BlocWrapper<CrosshairBloc, CrosshairState> {
  const CrosshairProvider({
    super.key,
    super.onInit,
    super.builder,
  });
}
