/*
 * esc_pos_bluetooth
 * Created by Andrey Ushakov
 * 
 * Copyright (c) 2020. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

enum PosPrintResult {
  success,
  timeout,
  printerNotSelected,
  ticketEmpty,
  printInProgress,
  scanInProgress,
}

extension PosPrintResultExtension on PosPrintResult {
  int get value {
    switch (this) {
      case PosPrintResult.success:
        return 1;
      case PosPrintResult.timeout:
        return 2;
      case PosPrintResult.printerNotSelected:
        return 3;
      case PosPrintResult.ticketEmpty:
        return 4;
      case PosPrintResult.printInProgress:
        return 5;
      case PosPrintResult.scanInProgress:
        return 6;
    }
  }

  String get msg {
    switch (this) {
      case PosPrintResult.success:
        return 'Success';
      case PosPrintResult.timeout:
        return 'Error. Printer connection timeout';
      case PosPrintResult.printerNotSelected:
        return 'Error. Printer not selected';
      case PosPrintResult.ticketEmpty:
        return 'Error. Ticket is empty';
      case PosPrintResult.printInProgress:
        return 'Error. Another print in progress';
      case PosPrintResult.scanInProgress:
        return 'Error. Printer scanning in progress';
      default:
        return 'Unknown error';
    }
  }
}