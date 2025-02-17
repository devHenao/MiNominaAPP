import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

DateTime? strToDate(String? date) {
  return date != null && DateTime.tryParse(date) != null
      ? DateTime.parse(date)
      : DateTime.now();
}

TypeRequestStruct filterRequest(
  List<TypeRequestStruct> listRequest,
  String code,
) {
  return listRequest.firstWhere((item) => item.codigo == code);
}

double acumulate(List<double> listValues) {
  return listValues.fold(0, (sum, values) => sum + values);
}

bool? validateFile(FFUploadedFile? file) {
  const int maxSize = 30 * 1024 * 1024; // 30 MB en bytes

  if (file == null || file.bytes == null) {
    return false; // No se ha seleccionado ningún archivo o no tiene bytes
  }

  String fileName = file.name ?? 'archivo_desconocido.pdf';

  int fileSize = file.bytes!.length;

  if (!fileName.endsWith('.pdf')) {
    return false;
  }

  if (fileSize > maxSize) {
    return false;
  }

  return true;
}

String? requestStatus(String? state) {
  if (state == "R") {
    return "Rechazado";
  } else if (state == "A") {
    return "Aprobado";
  }
  return "Pendiente";
}

DateTime? getPreviousDay(DateTime? currentDay) {
  if (currentDay != null) {
    return currentDay.subtract(Duration(days: 1));
  } else {
    // Puedes devolver la fecha actual si el parámetro es nulo, o manejar el caso como prefieras
    return DateTime.now().subtract(Duration(days: 1));
  }
}

String extractFileName(String? filePath) {
  if (filePath == null || filePath.isEmpty) {
    return "Archivo no seleccionado";
  }

  // Extraer el nombre del archivo
  return filePath.split('/').last;
}

DateTime? afterDay(DateTime? day) {
  if (day != null) {
    return day.subtract(Duration(days: 15));
  } else {
    return DateTime.now().subtract(Duration(days: 15));
  }
}

DateTime? futureDay(DateTime? day) {
  if (day != null) {
    return day.add(Duration(days: 15));
  } else {
    // Puedes devolver la fecha actual más 15 días si el parámetro es nulo, o manejar el caso como prefieras
    return DateTime.now().add(Duration(days: 15));
  }
}
