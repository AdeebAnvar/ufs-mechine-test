import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/widgets/custom_bottom_nav.dart';
import 'package:ufs_mechine_test/widgets/custom_dropdown.dart';
import 'package:ufs_mechine_test/widgets/custom_expansion_card.dart';
import 'package:ufs_mechine_test/widgets/custom_field_with_label.dart';
import 'package:ufs_mechine_test/widgets/custom_textfield.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> chemicalHazardList = ['Cleaning Products', 'Pesticide', 'Asbestos'];

    TextEditingController notesController = TextEditingController();
    TextEditingController riskDescriptionController = TextEditingController();
    TextEditingController initialScoreController = TextEditingController();
    TextEditingController goController = TextEditingController();
    TextEditingController mitigationController = TextEditingController();
    TextEditingController finalScoreController = TextEditingController();
    TextEditingController noGoController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 23.0, top: 10),
          child: Image.network(
            'assets/hamburger.png',
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(29),
        children: [
          const SizedBox(height: 40),
          const Text(
            'Risk Assessment',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          const SizedBox(height: 25),
          const CustomExpansionCard(hint: 'Physical Hazard'),
          const SizedBox(height: 11),
          const CustomExpansionCard(hint: 'Safety Hazard'),
          const SizedBox(height: 11),
          CustomExpansionCard(
              hint: 'Chemical Hazard',
              childrenPadding: EdgeInsets.zero,
              children: chemicalHazardList
                  .map(
                    (v) => Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomExpansionCard(
                          tileColor: Colors.grey.shade100,
                          hint: v,
                          childrenPadding: EdgeInsets.zero,
                          children: [
                            Container(
                              color: Colors.white,
                              width: MediaQuery.sizeOf(context).width,
                              padding: const EdgeInsets.only(top: 18),
                              child: Wrap(
                                spacing: 12,
                                runSpacing: 12,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                runAlignment: WrapAlignment.spaceAround,
                                alignment: WrapAlignment.spaceAround,
                                children: [
                                  CustomFieldWithLabel(
                                    controller: riskDescriptionController,
                                    hint: 'Risk Description',
                                  ),
                                  CustomFieldWithLabel(
                                    controller: initialScoreController,
                                    hint: 'Inital Score',
                                  ),
                                  CustomFieldWithLabel(
                                    controller: goController,
                                    hint: 'Go',
                                  ),
                                  CustomFieldWithLabel(
                                    controller: mitigationController,
                                    hint: 'Mitigation Measure',
                                  ),
                                  CustomFieldWithLabel(
                                    controller: finalScoreController,
                                    hint: 'Final Score',
                                  ),
                                  CustomFieldWithLabel(
                                    controller: noGoController,
                                    hint: 'No Go',
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width / 3),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text('Equipment List'),
                                        const SizedBox(height: 5),
                                        CustomDropDownButtonField(
                                          items: const <String>[''],
                                          hint: '',
                                          onChanged: (v) {},
                                          fillColor: Colors.white,
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                          focusedBorder: const OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ConstrainedBox(constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width / 3), child: Container()),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList()),
          const SizedBox(height: 11),
          const CustomExpansionCard(hint: 'Bilogical Hazard'),
          const SizedBox(height: 11),
          const CustomExpansionCard(hint: 'Ergonomics Hazard'),
          const SizedBox(height: 45),
          CustomTextField(
            controller: notesController,
            fillColor: Colors.transparent,
            hint: 'Enter notes',
            maxLines: 10,
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
