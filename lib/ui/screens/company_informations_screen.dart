import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex_discovery/core/viewmodel/company_viewmodel.dart';

class CompanyInformationsScreen extends StatefulWidget {
  _CompanyInformationsScreenState createState() =>
      _CompanyInformationsScreenState();
}

class _CompanyInformationsScreenState extends State<CompanyInformationsScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CompanyViewModel(),
        child: Consumer<CompanyViewModel>(
          builder: (context, CompanyViewModel model, child) => Scaffold(
            body: model.isLoadingCompany
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Column(children: [
                          Text(model.company.name,
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50),
                              textAlign: TextAlign.justify),
                          SizedBox(height: 15),
                          Text(
                            "CEO: " + model.company.ceo,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 15),
                          Text(
                              "Location: ${model.company.headquarters.address}, ${model.company.headquarters.city}, ${model.company.headquarters.state}"),
                          SizedBox(height: 15),
                          Text(
                              "Number of employees: ${model.company.employees}",
                              textAlign: TextAlign.justify),
                          SizedBox(height: 15),
                          Text("${model.company.summary}",
                              textAlign: TextAlign.justify),
                        ]),
                      ]),
          ),
        ));
  }
}
