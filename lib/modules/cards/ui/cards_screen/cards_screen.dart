import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/cards/ui/cards_screen/bloc/cards_bloc.dart';
import 'package:valorant_app/utils/constants.dart';

import 'widgets/selected_card_widget.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  CardsBloc get bloc => Modular.get();

  final double _itemExtent = 100;
  late InfiniteScrollController carouselController;

  @override
  void initState() {
    bloc.add(const FetchCardsEvent());
    carouselController = InfiniteScrollController();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    carouselController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocBuilder<CardsBloc, CardsState>(
        bloc: bloc,
        buildWhen: (prev, cur) => prev.cardsResult != cur.cardsResult,
        builder: (_, state) {
          return state.cardsResult.when(
            idle: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (cards) {
              return SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectedCardWidget(bloc: bloc),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: _itemExtent,
                      child: InfiniteCarousel.builder(
                        controller: carouselController,
                        itemExtent: _itemExtent,
                        itemCount: cards.length,
                        onIndexChanged: (index) {
                          bloc.add(SelectCardsEvent(cards[index]));
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
                    ),
                    const SizedBox(height: kNavigationBarHeight + kScreenPaddingBottom)
                  ],
                ),
              );
            },
            error: (error) => Center(
              child: Text("$error"),
            ),
          );
        },
      ),
    );
  }
}
