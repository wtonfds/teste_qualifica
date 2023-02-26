import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mlearnbr_teste/src/config/themes/app_colors.dart';

class CustomTable extends StatelessWidget {
  final String? name;
  final String? gender;
  final String? birthYear;
  final String? eyeColor;
  final String? hairColor;
  final String? height;
  final String? mass;
  final String? skinColor;
  final String? specie;

  const CustomTable(
      {super.key,
      this.name,
      this.gender,
      this.birthYear,
      this.eyeColor,
      this.hairColor,
      this.height,
      this.mass,
      this.skinColor,
      this.specie});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 5,
      border: TableBorder.symmetric(
        inside: BorderSide.none,
        outside: BorderSide.none,
      ),
      headingRowHeight: 0,
      columns: const [
        DataColumn(label: Text('')),
        DataColumn(label: Text('')),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Center(
                child: Text(
              'Nome Completo:',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.primaryColor),
            ))),
            DataCell(
              Center(
                child: Text(
                  name!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        DataRow(cells: [
          DataCell(Center(
              child: Text(
            'Gênero:',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primaryColor),
          ))),
          DataCell(Center(
              child: Text(gender!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white)))),
        ]),
        DataRow(cells: [
          DataCell(Center(
              child: Text(
            'Ano de aniversário:',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primaryColor),
          ))),
          DataCell(Center(
              child: Text(birthYear!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white)))),
        ]),
        DataRow(cells: [
          DataCell(Center(
              child: Text(
            'Cor dos olhos:',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primaryColor),
          ))),
          DataCell(Center(
              child: Text(eyeColor!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white)))),
        ]),
        DataRow(cells: [
          DataCell(Center(
              child: Text(
            'Cor do Cabelo:',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primaryColor),
          ))),
          DataCell(Center(
              child: Text(hairColor!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white)))),
        ]),
        DataRow(cells: [
          DataCell(Center(
              child: Text(
            'Altura:',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primaryColor),
          ))),
          DataCell(Center(
              child: Text(height!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white)))),
        ]),
        DataRow(cells: [
          DataCell(Center(
              child: Text(
            'Peso:',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primaryColor),
          ))),
          DataCell(Center(
              child: Text(mass!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white)))),
        ]),
        DataRow(cells: [
          DataCell(Center(
              child: Text(
            'Cor da Pele:',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primaryColor),
          ))),
          DataCell(Center(
              child: Text(skinColor!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white)))),
        ]),
        DataRow(cells: [
          DataCell(Center(
              child: Text(
            'Espécie:',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primaryColor),
          ))),
          DataCell(
            Center(
              child: Text(
                specie!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
