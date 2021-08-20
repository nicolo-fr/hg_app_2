import 'package:flutter/material.dart';
import 'package:hg_app_2/player/domain/track.dart';

class LibrettoBuilder extends StatelessWidget {
  final Track track;
  const LibrettoBuilder({Key? key, required this.track}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool _hasLibrettoText = track.librettoFR != null;

    Widget libretto(String librettoSection, int index) {
      final bool isNameOfSpeaker =
          librettoSection == librettoSection.toUpperCase();

      if (isNameOfSpeaker) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 12.0,
          ),
          child: Text(
            librettoSection,
            style: TextStyle(
              color: Theme.of(context).accentColor,
              // fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        );
      }

      return Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LibrettoSectionFR(
              librettoSectionFR: track.librettoFR![index],
            ),
            LibrettoSectionDE(
              librettoSectionDE: track.librettoDE![index],
            ),
          ],
        ),
      );
    }

    return _hasLibrettoText
        ? ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(0.0),
          shrinkWrap: true,
          itemCount: track.librettoFR!.length,
          itemBuilder: (ctx, index) {
            final String validatorString = track.librettoFR![index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: libretto(
                validatorString,
                index,
              ),
            );
          },
        )
        : const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Cette pièce est uniquement instrumentale. Laissez-vous porter par la musique !', style: TextStyle(color: Colors.white, fontSize: 16),),
        );
  }
}

class LibrettoSectionDE extends StatelessWidget {
  final String librettoSectionDE;
  const LibrettoSectionDE({Key? key, required this.librettoSectionDE})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      librettoSectionDE,
      style: const TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.6),
        fontStyle: FontStyle.italic,
        fontSize: 14,
      ),
    );
  }
}

class LibrettoSectionFR extends StatelessWidget {
  final String librettoSectionFR;
  const LibrettoSectionFR({Key? key, required this.librettoSectionFR})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      librettoSectionFR,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}
