// import 'generic_formz_input.dart';

// // كلاس أساسي لجميع مدخلات السلاسل النصية
// class StringInput extends GenericFormzInput {
//   const StringInput.pure({
//     super.minLength,
//     super.maxLength,
//     super.exactLength,
//     super.customValidator,
//   }) : super.pure();

//   const StringInput.dirty({
//     required String value,
//     super.minLength,
//     super.maxLength,
//     super.exactLength,
//     super.customValidator,
//   }) : super.dirty(value: value);
// }

// // مدخل العنوان
// class AddressInput extends StringInput {
//   const AddressInput.pure() : super.pure(minLength: 5, maxLength: 200);

//   const AddressInput.dirty({required String value})
//       : super.dirty(value: value, minLength: 5, maxLength: 200);
// }

// // مدخل العنوان القصير
// class TitleInput extends StringInput {
//   const TitleInput.pure() : super.pure(minLength: 2, maxLength: 100);

//   const TitleInput.dirty({required String value})
//       : super.dirty(value: value, minLength: 2, maxLength: 100);
// }

// // مدخل اسم المستخدم للإيميل
// class EmailUsernameInput extends StringInput {
//   const EmailUsernameInput.pure() : super.pure(minLength: 5, maxLength: 30);

//   const EmailUsernameInput.dirty({required String value})
//       : super.dirty(value: value, minLength: 5, maxLength: 30);

//   @override
//   GenericValidationError? validator(String value) {
//     final v = value.trim();

//     if (v.isEmpty) {
//       return GenericValidationError.empty;
//     }

//     if (minLength != null && v.length < minLength!) {
//       return GenericValidationError.tooShort;
//     }

//     if (maxLength != null && v.length > maxLength!) {
//       return GenericValidationError.tooLong;
//     }

//     // تحقق مخصص: لا يحتوي على مسافات
//     if (v.contains(' ')) {
//       return GenericValidationError.custom;
//     }

//     return null;
//   }
// }

// // مدخل رقم الهاتف المحدد
// class ExactPhoneNumberInput extends StringInput {
//   const ExactPhoneNumberInput.pure() : super.pure(exactLength: 10);

//   const ExactPhoneNumberInput.dirty({required String value})
//       : super.dirty(value: value, exactLength: 10);

//   @override
//   GenericValidationError? validator(String value) {
//     final v = value.trim();

//     if (v.isEmpty) {
//       return GenericValidationError.empty;
//     }

//     if (exactLength != null && v.length != exactLength) {
//       return GenericValidationError.invalidLength;
//     }

//     // تحقق مخصص: يجب أن يكون أرقام فقط
//     if (!RegExp(r'^[0-9]+$').hasMatch(v)) {
//       return GenericValidationError.custom;
//     }

//     return null;
//   }
// }
