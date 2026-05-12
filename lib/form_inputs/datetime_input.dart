import 'package:formz/formz.dart';

enum DateTimeValidationError {
  empty,
  invalidFormat,
  pastDate,
  futureDate,
  beforeMinDate,
  afterMaxDate,
  custom,
}

class DateTimeInput extends FormzInput<DateTime?, DateTimeValidationError> {
  final DateTime? minDate;
  final DateTime? maxDate;
  final bool allowPast;
  final bool allowFuture;
  final String? Function(DateTime?)? customValidator;
  final String? dateFormat;

  const DateTimeInput.pure({
    this.minDate,
    this.maxDate,
    this.allowPast = true,
    this.allowFuture = true,
    this.customValidator,
    this.dateFormat,
  }) : super.pure(null);

  const DateTimeInput.dirty({
    required DateTime? value,
    this.minDate,
    this.maxDate,
    this.allowPast = true,
    this.allowFuture = true,
    this.customValidator,
    this.dateFormat,
  }) : super.dirty(value);

  @override
  DateTimeValidationError? validator(DateTime? value) {
    if (value == null) {
      return DateTimeValidationError.empty;
    }
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final valueDate = DateTime(value.year, value.month, value.day);
    if (!allowPast && valueDate.isBefore(today)) {
      return DateTimeValidationError.pastDate;
    }
    if (!allowFuture && valueDate.isAfter(today)) {
      return DateTimeValidationError.futureDate;
    }
    if (minDate != null &&
        valueDate
            .isBefore(DateTime(minDate!.year, minDate!.month, minDate!.day))) {
      return DateTimeValidationError.beforeMinDate;
    }
    if (maxDate != null &&
        valueDate
            .isAfter(DateTime(maxDate!.year, maxDate!.month, maxDate!.day))) {
      return DateTimeValidationError.afterMaxDate;
    }
    final result = customValidator?.call(value);
    if (result != null && result.isNotEmpty) {
      return DateTimeValidationError.custom;
    }

    return null;
  }

  String? get errorMessage {
    if (error == null) return null;
    return switch (error!) {
      DateTimeValidationError.empty => 'هذا الحقل مطلوب',
      DateTimeValidationError.invalidFormat => dateFormat != null
          ? 'الصيغة المطلوبة: $dateFormat'
          : 'صيغة التاريخ غير صحيحة',
      DateTimeValidationError.pastDate => 'لا يمكن اختيار تاريخ في الماضي',
      DateTimeValidationError.futureDate => 'لا يمكن اختيار تاريخ في المستقبل',
      DateTimeValidationError.beforeMinDate => minDate != null
          ? 'يجب أن يكون التاريخ بعد ${_formatDate(minDate!)}'
          : 'التاريخ قبل الحد الأدنى المسموح به',
      DateTimeValidationError.afterMaxDate => maxDate != null
          ? 'يجب أن يكون التاريخ قبل ${_formatDate(maxDate!)}'
          : 'التاريخ بعد الحد الأقصى المسموح به',
      DateTimeValidationError.custom => customValidator?.call(value),
    };
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  static DateTime? parseDateString(String dateString, {String? format}) {
    if (dateString.isEmpty) return null;
    try {
      final formats = [
        format ?? 'dd/MM/yyyy',
        'yyyy-MM-dd',
        'dd-MM-yyyy',
        'MM/dd/yyyy',
        'yyyy/MM/dd',
      ];
      for (final _ in formats) {
        try {
          final parts = dateString.split(RegExp(r'[/\-]'));
          if (parts.length == 3) {
            final day = int.parse(parts[0]);
            final month = int.parse(parts[1]);
            final year = int.parse(parts[2]);
            if (day > 0 &&
                day <= 31 &&
                month > 0 &&
                month <= 12 &&
                year > 1900) {
              return DateTime(year, month, day);
            }
          }
        } catch (e) {
          continue;
        }
      }
    } catch (e) {
      return null;
    }

    return null;
  }
}

extension DateTimeValidationErrorX on DateTimeValidationError {
  String get defaultMessage {
    switch (this) {
      case DateTimeValidationError.empty:
        return 'هذا الحقل مطلوب';
      case DateTimeValidationError.invalidFormat:
        return 'صيغة التاريخ غير صحيحة';
      case DateTimeValidationError.pastDate:
        return 'لا يمكن اختيار تاريخ في الماضي';
      case DateTimeValidationError.futureDate:
        return 'لا يمكن اختيار تاريخ في المستقبل';
      case DateTimeValidationError.beforeMinDate:
        return 'التاريخ قبل الحد الأدنى المسموح به';
      case DateTimeValidationError.afterMaxDate:
        return 'التاريخ بعد الحد الأقصى المسموح به';
      case DateTimeValidationError.custom:
        return 'قيمة غير صحيحة';
    }
  }
}
