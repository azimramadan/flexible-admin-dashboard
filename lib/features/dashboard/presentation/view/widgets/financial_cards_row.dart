import 'package:flexible_dashboard_ui/core/constants/app_assets.dart';
import 'package:flexible_dashboard_ui/core/constants/size_config.dart';
import 'package:flexible_dashboard_ui/features/dashboard/models/financial_card_model.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/financial_card.dart';
import 'package:flutter/material.dart';

class FinancialCardsRow extends StatefulWidget {
  const FinancialCardsRow({super.key});
  static const List<FinancialCardModel> cards = [
    FinancialCardModel(
      image: AppAssets.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      amount: '\$20,129',
    ),
    FinancialCardModel(
      image: AppAssets.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      amount: '\$20,129',
    ),
    FinancialCardModel(
      image: AppAssets.imagesCardSend,
      title: 'Expenses',
      date: 'April 2022',
      amount: '\$20,129',
    ),
  ];

  @override
  State<FinancialCardsRow> createState() => _FinancialCardsRowState();
}

class _FinancialCardsRowState extends State<FinancialCardsRow> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final bool isMobile =
        MediaQuery.sizeOf(context).width < SizeConfig.mobileBreakpoint;

    return isMobile
        ? SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                FinancialCardsRow.cards.asMap().entries.map((e) {
                  return Padding(
                    padding:
                        e.key == 2
                            ? EdgeInsets.only(left: 20, right: 20)
                            : EdgeInsets.only(left: 20),
                    child: IntrinsicWidth(
                      child: FinancialCard(
                        financialCardModel: e.value,
                        isActive: activeIndex == e.key,
                        onTap: () {
                          if (activeIndex != e.key) {
                            setState(() {
                              activeIndex = e.key;
                            });
                          }
                        },
                      ),
                    ),
                  );
                }).toList(),
          ),
        )
        : Padding(
          padding: const EdgeInsets.all(20),
          child: IntrinsicHeight(
            child: Row(
              children:
                  FinancialCardsRow.cards.asMap().entries.map((e) {
                    return Expanded(
                      child: Padding(
                        padding:
                            e.key == 0
                                ? const EdgeInsets.only(right: 8.0)
                                : e.key == 1
                                ? const EdgeInsets.symmetric(horizontal: 4.0)
                                : const EdgeInsets.only(left: 8.0),
                        child: FinancialCard(
                          financialCardModel: e.value,
                          isActive: activeIndex == e.key,
                          onTap: () {
                            if (activeIndex != e.key) {
                              setState(() {
                                activeIndex = e.key;
                              });
                            }
                          },
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ),
        );
  }
}
