import 'package:fl_chart/fl_chart.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class AnimatedPieChart extends StatefulWidget {
  const AnimatedPieChart({super.key});

  @override
  _AnimatedPieChartState createState() => _AnimatedPieChartState();
}

class _AnimatedPieChartState extends State<AnimatedPieChart> {
  int? touchedIndex;

  final List<IncomeData> incomeDataList = [
    IncomeData(color: AppColors.linkBlue, title: 'Design service', value: 40),
    IncomeData(
      color: AppColors.primaryBlue,
      title: 'Design product',
      value: 25,
    ),
    IncomeData(color: AppColors.darkBlue, title: 'Product royalti', value: 20),
    IncomeData(color: AppColors.beige, title: 'Other', value: 22),
  ];

  List<PieChartSectionData> getSections() {
    return List.generate(incomeDataList.length, (i) {
      final isTouched = i == touchedIndex;
      final double radius = isTouched ? 60 : 40;

      return PieChartSectionData(
        color: incomeDataList[i].color,
        value: incomeDataList[i].value,
        radius: radius,
        showTitle: false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PieChart(
            PieChartData(
              sections: getSections(),
              centerSpaceRadius: 0,
              sectionsSpace: 2,
              pieTouchData: PieTouchData(
                touchCallback: (event, response) {
                  setState(() {
                    if (!event.isInterestedForInteractions ||
                        response == null ||
                        response.touchedSection == null) {
                      touchedIndex = -1;
                      return;
                    }
                    touchedIndex = response.touchedSection!.touchedSectionIndex;
                  });
                },
              ),
            ),
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          ),
        ),

        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(incomeDataList.length, (index) {
              final isSelected = index == touchedIndex;
              return IncomeItem(
                isSelected: isSelected,
                incomeData: incomeDataList[index],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class IncomeItem extends StatelessWidget {
  const IncomeItem({
    super.key,
    required this.isSelected,
    required this.incomeData,
  });
  final bool isSelected;
  final IncomeData incomeData;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: Row(
        children: [
          Container(
            height: isSelected ? 12 : 8,
            width: isSelected ? 12 : 8,
            decoration: ShapeDecoration(
              shape: OvalBorder(),
              color: incomeData.color,
            ),
          ),
          SizedBox(width: 4),
          Text(
            incomeData.title,
            style:
                isSelected
                    ? AppTextStyles.montserratBold16.copyWith(
                      color: AppColors.darkBlue,
                    )
                    : AppTextStyles.montserratRegular16.copyWith(
                      color: AppColors.darkBlue,
                    ),
          ),
          Spacer(),
          Text(
            '${incomeData.value}%',
            style:
                isSelected
                    ? AppTextStyles.montserratSemiBold18.copyWith(
                      color: AppColors.linkBlue,
                    )
                    : AppTextStyles.montserratMedium16.copyWith(
                      color: AppColors.linkBlue,
                    ),
          ),
        ],
      ),
    );
  }
}

class IncomeData {
  final Color color;
  final String title;
  final double value;

  IncomeData({required this.color, required this.title, required this.value});
}
