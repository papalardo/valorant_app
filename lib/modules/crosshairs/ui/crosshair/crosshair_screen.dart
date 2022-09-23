import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/crosshairs/infra/models/crosshair.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/bloc/crosshair_bloc.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/crosshair_provider.dart';
import 'package:valorant_app/modules/crosshairs/ui/crosshair/widgets/bg_control.dart';
import 'package:valorant_app/modules/crosshairs/ui/utils/crosshair_painter.dart';

import 'widgets/zoom_control.dart';

class CrosshairScreen extends StatelessWidget {
  const CrosshairScreen({
    Key? key,
    this.crosshair,
  }) : super(key: key);

  final Crosshair? crosshair;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CrosshairProvider(
        onInit: (bloc) {
          if (crosshair != null) {
            bloc.add(LoadCrosshairEvent(crosshair: crosshair!));
          }
        },
        builder: (_, state, bloc) {
          return state.crosshair.maybeWhen(
            data: (crosshair) {
              return Column(
                children: [
                  AnimatedContainer(
                    height: state.zoomPreview * 120,
                    width: double.infinity,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Stack(
                      children: [
                        Center(
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset(
                              state.bgPreview,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: CustomPaint(
                                painter: CrosshairPainter(crosshair: crosshair),
                              ),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: ZoomControl(),
                        ),
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: BgControl(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ElevatedButton(
                            onPressed: () => _importCode(context: context),
                            child: Text("Import"),
                          ),
                          _createSection("Crosshair"),
                          _createToggleButton(
                            label: "Show outline",
                            value: crosshair.outlineEnabled,
                            onChanged: (value) => _onChangeCrosshair(
                              crosshair.copyWith(outlineEnabled: value),
                            ),
                          ),
                          enabledSection(
                            enabled: crosshair.outlineEnabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _createSlider(
                                  label: "Outline Opacity",
                                  value: crosshair.outlineOpacity,
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(outlineOpacity: value),
                                  ),
                                ),
                                _createSlider(
                                  label: "Outline Thickness",
                                  min: 1,
                                  max: 6,
                                  divisions: 6,
                                  value: crosshair.outlineThickness.toDouble(),
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(
                                      outlineThickness: value.toInt(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _createToggleButton(
                            label: "Show Center Dot",
                            value: crosshair.centerDotsEnabled,
                            onChanged: (value) => _onChangeCrosshair(
                              crosshair.copyWith(centerDotsEnabled: value),
                            ),
                          ),
                          enabledSection(
                            enabled: crosshair.centerDotsEnabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _createSlider(
                                  label: "Center Dot Opacity",
                                  value: crosshair.centerDotOpacity,
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(centerDotOpacity: value),
                                  ),
                                ),
                                _createSlider(
                                  label: "Center Dot Thickness",
                                  min: 1,
                                  max: 6,
                                  divisions: 6,
                                  value:
                                      crosshair.centerDotThickness.toDouble(),
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(
                                      centerDotThickness: value.toInt(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _createSection("Inner Lines"),
                          _createToggleButton(
                            label: "Show Inner Lines",
                            value: crosshair.innerLinesEnabled,
                            onChanged: (value) => _onChangeCrosshair(
                              crosshair.copyWith(innerLinesEnabled: value),
                            ),
                          ),
                          enabledSection(
                            enabled: crosshair.innerLinesEnabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _createSlider(
                                  label: "Inner Lines Opacity",
                                  value: crosshair.innerLineOpacity,
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(innerLineOpacity: value),
                                  ),
                                ),
                                _createLockSlider(
                                  label: "Inner Lines Length",
                                  max: 20,
                                  divisions: 20,
                                  locked: state.innerLineLocked,
                                  value1: crosshair.innerLineLengthX,
                                  value2: crosshair.innerLineLengthY,
                                  onChangedValue1: (value) =>
                                      _onChangeCrosshair(
                                    crosshair.copyWith(innerLineLengthX: value),
                                  ),
                                  onChangedValue2: (value) =>
                                      _onChangeCrosshair(
                                    crosshair.copyWith(innerLineLengthY: value),
                                  ),
                                  onChangeLock: (value) {
                                    bloc.add(
                                      UpdateStateConfigEvent(
                                          state: state.copyWith(
                                              innerLineLocked: value)),
                                    );
                                    // setState(() {
                                    //   innerLineLocked = value;
                                    // })
                                  },
                                ),
                                _createSlider(
                                  label: "Inner Lines Thickness",
                                  min: 1,
                                  max: 10,
                                  divisions: 10,
                                  value:
                                      crosshair.innerLineThickness.toDouble(),
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(
                                        innerLineThickness: value.toInt()),
                                  ),
                                ),
                                _createSlider(
                                  label: "Inner Lines Offset",
                                  max: 20,
                                  divisions: 20,
                                  value: crosshair.innerLineOffset.toDouble(),
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(
                                        innerLineOffset: value.toInt()),
                                  ),
                                ),
                                _createToggleButton(
                                  label: "Firing error",
                                  value: crosshair.innerLineFiringErrorEnabled,
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(
                                        innerLineFiringErrorEnabled: value),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _createSection("Outer Lines"),
                          _createToggleButton(
                            label: "Show Outer Lines",
                            value: crosshair.outerLinesEnabled,
                            onChanged: (value) => _onChangeCrosshair(
                              crosshair.copyWith(outerLinesEnabled: value),
                            ),
                          ),
                          enabledSection(
                            enabled: crosshair.outerLinesEnabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _createSlider(
                                  label: "Outer Lines Opacity",
                                  value: crosshair.outerLineOpacity,
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(outerLineOpacity: value),
                                  ),
                                ),
                                _createLockSlider(
                                  label: "Outer Lines Length",
                                  max: 10,
                                  divisions: 10,
                                  locked: state.outerLineLocked,
                                  value1: crosshair.outerLineLengthX,
                                  value2: crosshair.outerLineLengthY,
                                  onChangedValue1: (value) =>
                                      _onChangeCrosshair(
                                    crosshair.copyWith(outerLineLengthX: value),
                                  ),
                                  onChangedValue2: (value) =>
                                      _onChangeCrosshair(
                                    crosshair.copyWith(outerLineLengthY: value),
                                  ),
                                  onChangeLock: (value) {
                                    bloc.add(
                                      UpdateStateConfigEvent(
                                          state: state.copyWith(
                                              outerLineLocked: value)),
                                    );
                                  },
                                ),
                                _createSlider(
                                  label: "Outer Lines Thickness",
                                  min: 1,
                                  max: 10,
                                  divisions: 10,
                                  value:
                                      crosshair.outerLineThickness.toDouble(),
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(
                                        outerLineThickness: value.toInt()),
                                  ),
                                ),
                                _createSlider(
                                  label: "Outer Lines Offset",
                                  max: 40,
                                  divisions: 40,
                                  value: crosshair.outerLineOffset.toDouble(),
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(
                                        outerLineOffset: value.toInt()),
                                  ),
                                ),
                                _createToggleButton(
                                  label: "Firing error",
                                  value: crosshair.outerLineFiringErrorEnabled,
                                  onChanged: (value) => _onChangeCrosshair(
                                    crosshair.copyWith(
                                        outerLineFiringErrorEnabled: value),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _createToggleButton({
    required String label,
    required bool value,
    required Function(bool) onChanged,
  }) {
    Widget _createBtn({
      required String label,
      required bool groupValue,
      required bool value,
      required Function(bool) onChanged,
    }) {
      return Expanded(
        child: InkWell(
          onTap: () => onChanged(value),
          child: Container(
            padding: const EdgeInsets.all(10),
            color: groupValue == value ? Colors.grey : const Color(0xFF202124),
            child: Text(label).textAlignment(TextAlign.center),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: _createControlSection(
        label: label,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 5),
            Row(
              children: [
                _createBtn(
                  label: 'ON',
                  groupValue: value,
                  value: true,
                  onChanged: onChanged,
                ),
                _createBtn(
                  label: 'OFF',
                  groupValue: value,
                  value: false,
                  onChanged: onChanged,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _createSection(label) {
    return Text(label)
        .fontSize(20)
        .fontFamily('valorant')
        .bold()
        .padding(top: 20, bottom: 10);
  }

  Widget _createControlSection({
    required String label,
    required Widget child,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        child,
      ],
    );
  }

  Widget _createSlider({
    required String label,
    required double value,
    required Function(double value) onChanged,
    int? divisions,
    double min = 0.0,
    double max = 1.0,
  }) {
    return _createControlSection(
      label: label,
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Text(value.toString()).textAlignment(TextAlign.center),
          ),
          Flexible(
            child: Slider(
              value: value,
              min: min,
              max: max,
              divisions: divisions,
              onChanged: (value) => onChanged(
                double.parse(value.toStringAsFixed(3)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget enabledSection({
    required bool enabled,
    required Widget child,
  }) {
    return IgnorePointer(
      ignoring: !enabled,
      child: Opacity(
        opacity: enabled ? 1 : 0.3,
        child: child,
      ),
    );
  }

  Widget _createLockSlider({
    required String label,
    required int value1,
    required int value2,
    required Function(int value) onChangedValue1,
    required Function(int value) onChangedValue2,
    required Function(bool value) onChangeLock,
    required bool locked,
    int? divisions,
    double min = 0.0,
    double max = 1.0,
  }) {
    return _createControlSection(
      label: label,
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Text(value1.toString()).textAlignment(TextAlign.center),
          ),
          SizedBox(
            width: 40,
            child: Text(value2.toString()).textAlignment(TextAlign.center),
          ),
          Flexible(
            child: Slider(
              value: value1.toDouble(),
              min: min,
              max: max,
              divisions: divisions,
              onChanged: (value) {
                onChangedValue1(value.toInt());
                if (locked) {
                  onChangedValue2(value.toInt());
                }
              },
            ),
          ),
          InkWell(
            onTap: () {
              onChangeLock(!locked);
              onChangedValue1(value1.toInt());
              onChangedValue2(value1.toInt());
            },
            child: Icon(locked ? Icons.lock : Icons.lock_open)
                .iconColor(Colors.white),
          ),
          Flexible(
            child: Slider(
              value: value2.toDouble(),
              min: min,
              max: max,
              divisions: divisions,
              onChanged: (value) {
                onChangedValue2(value.toInt());
                if (locked) {
                  onChangedValue1(value.toInt());
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  _onChangeCrosshair(Crosshair crosshair) {
    Modular.get<CrosshairBloc>().add(LoadCrosshairEvent(crosshair: crosshair));
  }

  _importCode({
    required BuildContext context,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          child: CrosshairProvider(
            builder: (_, state, bloc) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      onChanged: (v) {
                        bloc.add(UpdateStateConfigEvent(
                          state: state.copyWith(importingCode: v),
                        ));
                      },
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        bloc.add(LoadCrosshairEvent(
                          crosshair: Crosshair.fromCode(state.importingCode),
                        ));
                        Navigator.of(dialogContext).pop();
                      },
                      child: Text("Import"),
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
