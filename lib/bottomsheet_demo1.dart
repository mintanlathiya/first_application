import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class BottomDemo extends StatefulWidget {
  const BottomDemo({super.key});

  @override
  State<BottomDemo> createState() => _BottomDemoState();
}

class _BottomDemoState extends State<BottomDemo> {
  PanelController panelController = PanelController();
  static const double fabHeightClose = 116.0;
  double fabHeight = fabHeightClose;

  @override
  Widget build(BuildContext context) {
    final panelHeightColse = MediaQuery.of(context).size.height * 0.1;
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.5;

    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
        SlidingUpPanel(
          controller: panelController,
          minHeight: panelHeightColse,
          maxHeight: panelHeightOpen,
          parallaxEnabled: true,
          parallaxOffset: 0.5,
          body: SizedBox(
            height: 1000,
            width: 200,
            child: Image.asset('assets/images/1.jpeg', fit: BoxFit.cover),
          ),
          panelBuilder: (controller) => PanelW(
            controller: controller,
            panelController: panelController,
          ),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          onPanelSlide: (position) => setState(() {
            final panelmaxScrollExtent = panelHeightOpen - panelHeightColse;
            fabHeight = position * panelmaxScrollExtent + fabHeightClose;
          }),
        ),
        Positioned(
          right: 20,
          bottom: fabHeight,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            child: const Icon(Icons.gps_fixed),
          ),
        ),
      ]),
    );
  }
}

class PanelW extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelW(
      {super.key, required this.controller, required this.panelController});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      controller: controller,
      children: [
        Column(
          children: [
            Center(
                child: GestureDetector(
              onTap: () {
                panelController.isPanelOpen
                    ? panelController.close()
                    : panelController.open();
              },
              child: Container(
                width: 30,
                height: 5,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: const TextField(),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: const TextField(),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: const TextField(),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ],
    );
  }
}
