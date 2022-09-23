import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/cards/infra/models/card_model.dart';
import 'package:valorant_app/modules/cards/ui/cards_screen/bloc/cards_bloc.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  final double _itemExtent = 100;
  late InfiniteScrollController carouselController;

  @override
  void initState() {
    super.initState();
    carouselController = InfiniteScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    carouselController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CardsBloc cardsBloc = Modular.get();
    return BlocProvider<CardsBloc>(
      create: (_) => cardsBloc..add(const FetchCardsEvent()),
      child: Scaffold(
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            BlocBuilder<CardsBloc, CardsState>(
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
                          ).clipRRect(all: 10).boxShadow(
                                color: PaletteColors.primary,
                                blurRadius: 10,
                              ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: FloatingActionButton(
                              child: const Icon(Icons.save),
                              onPressed: () {
                                _downloadCard(state.selectedCard!);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<CardsBloc, CardsState>(
              buildWhen: (prev, cur) => prev.cardsResult != cur.cardsResult,
              builder: (_, state) {
                return state.cardsResult.when(
                  idle: () => const SizedBox(),
                  loading: () => const Expanded(
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  data: (cards) {
                    return SizedBox(
                      height: _itemExtent,
                      child: InfiniteCarousel.builder(
                        controller: carouselController,
                        itemExtent: _itemExtent,
                        itemCount: cards.length,
                        onIndexChanged: (index) {
                          cardsBloc.add(SelectCardsEvent(cards[index]));
                        },
                        itemBuilder: (_, index, realIndex) {
                          var card = cards[index];
                          return InkWell(
                            onTap: () {
                              carouselController.animateToItem(index);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: card.smallArt,
                                fit: BoxFit.contain,
                              ).clipRRect(all: 5),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  error: (error) => Center(
                    child: Text("$error"),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  _downloadCard(CardModel card) async {
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
