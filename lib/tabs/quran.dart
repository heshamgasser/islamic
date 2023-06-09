import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/widgets/tableWidget.dart';

import '../models/contentDetail.dart';


class QuranTab extends StatelessWidget {
  const QuranTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(
            height: MediaQuery.of(context).size.height / 3,
            image: const AssetImage('assets/images/quran.png'),
          ),
          const SizedBox(height: 10),

          Table(
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder(
              verticalInside: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondary, width: 3),
              top: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondary, width: 3),
              bottom: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondary, width: 3),
            ),
            children: [
              TableRow(
                children: [
                  Text(
                    AppLocalizations.of(context)!.surahNames,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    AppLocalizations.of(context)!.ayatNo,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return TableWidget(surahName[index], ayahNamber[index], index);
            },
            shrinkWrap: true,
            itemCount: surahName.length,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
