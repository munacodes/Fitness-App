class ProfilePicInitial {
  String getInitials(String name) {
    List<String> nameParts = name.split(" ");
    if (nameParts.length > 1) {
      return nameParts[0][0] +
          nameParts[1][0]; // First letter of first and last name
    } else if (nameParts.length > 2) {
      return nameParts[0][0] +
          nameParts[1][0] +
          nameParts[2][0]; // First letter of first and last name and other name
    } else if (nameParts.length > 3) {
      return nameParts[0][0] +
          nameParts[1][0] +
          nameParts[2][0] +
          nameParts[3][0]; // First letter of first and last name and other name
    } else if (nameParts.length > 4) {
      return nameParts[0][0] +
          nameParts[1][0] +
          nameParts[2][0] +
          nameParts[3][0] +
          nameParts[4][0]; // First letter of first and last name and other name
    } else if (nameParts.isNotEmpty) {
      return nameParts[0][0]; // if only first name, just take first letter
    }
    return '?';
  }
}
