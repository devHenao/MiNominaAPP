
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:typed_data';
import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:open_file/open_file.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

Future downloadPdf(
  BuildContext context,
  String? fechaInicio,
  String? fechaFin,
  String? token,
) async {
  // Add your function code here!
  print('holaaaaaaaaaa ==');
  final url =
      'https://us-central1-appemployeesprod.cloudfunctions.net/appEmployee/payroll/getReportingEmployeePayroll';
  try {
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({
        'dateInit': fechaInicio ?? "2020-08-01T00:00:00.000Z",
        'dateEnd': fechaFin ?? "2020-08-31T00:00:00.000Z",
      }),
    );
     if (response.statusCode == 200) {
      Uint8List fileBytes = response.bodyBytes;
      final fileName = 'reporteNomina.pdf';

      print("Tamaño del archivo: ${fileBytes.length} bytes");

      if (io.Platform.isAndroid) {
        final methodChannel = MethodChannel('com.mycompany.appvendedores/media_store');
        try {
          print("Enviando datos al método nativo...");
          final savedFilePath = await methodChannel.invokeMethod<String>('saveFile', {
            'fileBytes': fileBytes,
            'fileName': fileName,
            'mimeType': 'application/pdf',
          });

          if (savedFilePath != null) {
            print("Archivo guardado en: $savedFilePath");
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Archivo guardado en descargas'),
                backgroundColor: Color(0xFF39D2C0),
              ),
            );

            // Abrir el archivo inmediatamente después de guardarlo
            final result = await OpenFile.open(savedFilePath);
            print('Resultado de abrir el archivo: $result');
          } else {
            print("Error: No se pudo guardar el archivo");
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error al guardar el archivo.')),
            );
          }
        } catch (e) {
          print("Error en el canal: $e");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error en el canal: $e')),
          );
        }
      } else if (io.Platform.isIOS) {
        final directory = await getApplicationDocumentsDirectory();
        final filePath = '${directory.path}/$fileName';
        final file = io.File(filePath);
        await file.writeAsBytes(fileBytes);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Archivo guardado en descargas'),
            backgroundColor: Color(0xFF39D2C0),
          ),
        );

        // Abrir el archivo inmediatamente después de guardarlo
        final result = await OpenFile.open(filePath);
        print('Resultado de abrir el archivo: $result');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Descarga no disponible para esta plataforma.')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${response.statusCode}')),
      );
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Excepción: $e')),
    );
  }
}
