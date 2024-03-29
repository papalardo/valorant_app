import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/cards/infra/models/card_model.dart';
import 'package:valorant_app/modules/cards/ui/cards_screen/bloc/cards_bloc.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class SelectedCardWidget extends StatelessWidget {
  final CardsBloc bloc;

  const SelectedCardWidget({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardsBloc, CardsState>(
      bloc: bloc,
      buildWhen: (prev, current) {
        return current.selectedCard != prev.selectedCard;
      },
      builder: (_, state) {
        var height = MediaQuery.of(context).size.height;
        if (state.selectedCard == null) {
          return const SizedBox();
        }
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            height: height * 0.65,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CachedNetworkImage(
                    imageUrl: state.selectedCard!.largeArt,
                    fit: BoxFit.contain,
                    progressIndicatorBuilder: (_, __, ___) {
                      return const SizedBox();
                    },
                    fadeInDuration: Duration.zero,
                  ).clipRRect(all: 10).boxShadow(color: PaletteColors.primary, blurRadius: 10),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: FloatingActionButton(
                      child: const Icon(Icons.save),
                      onPressed: () {
                        _downloadCard(context, state.selectedCard!);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _downloadCard(BuildContext context, CardModel card) async {
    try {
      await GallerySaver.saveImage(card.largeArt);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Saved on your gallery!")),
      );
    } on PlatformException catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
    } on MissingPluginException catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Unavailable for this platform")),
      );
    }
  }
}
