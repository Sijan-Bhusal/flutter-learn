// Non-Null values picking operator(??) operator
// This operator checks if the adjascent identifier has non null values and then prints it.
void notNull(String? firstName, String? middleName, String? lastName){
final firstNullValue = firstName ?? middleName ?? lastName; 
print(firstNullValue);
}


// Null aware assignment operator(??==)

void nullAware(String? firstName, String? lastName){
  String? name = firstName;
  name ??= lastName;
  print(name);
}
void main(){
  // notNull(null, 'Sijan', null);
nullAware("Sijan", null);
}

