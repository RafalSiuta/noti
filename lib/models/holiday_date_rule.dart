class HolidayDateRule {
  const HolidayDateRule({
    required this.type,
    this.month,
    this.day,
    this.weekday,
    this.ordinal,
    this.offsetDays,
  });

  final String type;
  final int? month;
  final int? day;
  final int? weekday;
  final int? ordinal;
  final int? offsetDays;

  factory HolidayDateRule.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    if (type is! String ||
        !const {'fixed', 'weekday_in_month', 'easter_offset'}.contains(type)) {
      throw const FormatException('Unsupported holiday date rule type.');
    }

    int? readInt(String key) {
      final value = json[key];
      if (value == null) return null;
      if (value is! int) {
        throw FormatException('Holiday date rule "$key" must be an integer.');
      }
      return value;
    }

    return HolidayDateRule(
      type: type,
      month: readInt('month'),
      day: readInt('day'),
      weekday: readInt('weekday'),
      ordinal: readInt('ordinal'),
      offsetDays: readInt('offset_days'),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'type': type,
      if (month != null) 'month': month,
      if (day != null) 'day': day,
      if (weekday != null) 'weekday': weekday,
      if (ordinal != null) 'ordinal': ordinal,
      if (offsetDays != null) 'offset_days': offsetDays,
    };
  }

  DateTime? resolveDate(int year) {
    if (year < 1) return null;

    switch (type) {
      case 'fixed':
        final ruleMonth = month;
        final ruleDay = day;
        if (ruleMonth == null ||
            ruleDay == null ||
            ruleMonth < 1 ||
            ruleMonth > 12 ||
            ruleDay < 1) {
          return null;
        }
        final result = DateTime(year, ruleMonth, ruleDay);
        if (result.month != ruleMonth || result.day != ruleDay) return null;
        return result;
      case 'weekday_in_month':
        final ruleMonth = month;
        final ruleWeekday = weekday;
        final ruleOrdinal = ordinal;
        if (ruleMonth == null || ruleWeekday == null || ruleOrdinal == null) {
          return null;
        }
        return resolveWeekdayInMonth(year, ruleMonth, ruleWeekday, ruleOrdinal);
      case 'easter_offset':
        final offset = offsetDays;
        if (offset == null || year < 1583) return null;
        return calculateWesternEasterDate(year).add(Duration(days: offset));
      default:
        return null;
    }
  }

  // Meeus/Jones/Butcher algorithm for Gregorian Western Easter.
  static DateTime calculateWesternEasterDate(int year) {
    final a = year % 19;
    final b = year ~/ 100;
    final c = year % 100;
    final d = b ~/ 4;
    final e = b % 4;
    final f = (b + 8) ~/ 25;
    final g = (b - f + 1) ~/ 3;
    final h = (19 * a + b - d - g + 15) % 30;
    final i = c ~/ 4;
    final k = c % 4;
    final l = (32 + 2 * e + 2 * i - h - k) % 7;
    final m = (a + 11 * h + 22 * l) ~/ 451;
    final month = (h + l - 7 * m + 114) ~/ 31;
    final day = ((h + l - 7 * m + 114) % 31) + 1;
    return DateTime(year, month, day);
  }

  static DateTime? resolveWeekdayInMonth(
    int year,
    int month,
    int weekday,
    int ordinal,
  ) {
    if (year < 1 ||
        month < 1 ||
        month > 12 ||
        weekday < DateTime.monday ||
        weekday > DateTime.sunday ||
        ordinal == 0) {
      return null;
    }

    if (ordinal == -1) {
      final lastDay = DateTime(year, month + 1, 0);
      final daysBack = (lastDay.weekday - weekday) % 7;
      return lastDay.subtract(Duration(days: daysBack));
    }

    if (ordinal < 1 || ordinal > 5) return null;
    final firstDay = DateTime(year, month);
    final daysForward = (weekday - firstDay.weekday) % 7;
    final result = firstDay.add(
      Duration(days: daysForward + (ordinal - 1) * 7),
    );
    return result.month == month ? result : null;
  }
}
