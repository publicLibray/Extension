final _pattern = new RegExp(r'^((\+?855)|(0?))([1-9][0-9])(\d{6,7})$');

extension KhmerPhoneNumber on String {
  toKhNumber() {
    String newString = '';
    if (this.contains(_pattern)) {
      newString = this.replaceAllMapped(_pattern, (match) {
        return '855${match[4]}${match[5]}';
      });
      return newString;
    } else {
      return this;
    }
  }

  isKhNumber() => this.contains(_pattern);
}
