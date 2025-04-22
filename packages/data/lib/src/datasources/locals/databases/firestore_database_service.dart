
// abstract class FirestoreDatabaseService {
//   FirestoreDatabaseService({
//     required this.db,
//   });
//
//   final FirebaseFirestore db;
//
//   Future<DocumentSnapshot<R>> get<R>(
//     String path, {
//     required FromFirestore<R> fromFirestore,
//     required ToFirestore<R> toFirestore,
//     Duration timeout = const Duration(seconds: 30),
//     int maxAttempts = 5,
//   }) async {
//     final DocumentReference<R> ref = db.doc(path).withConverter(
//           fromFirestore: fromFirestore,
//           toFirestore: toFirestore,
//         );
//
//     return db.runTransaction(
//       (transaction) => transaction.get(ref),
//       timeout: timeout,
//       maxAttempts: maxAttempts,
//     );
//   }
//
//   Future<bool> checkExist(
//     String path, {
//     Duration timeout = const Duration(seconds: 30),
//     int maxAttempts = 5,
//   }) async {
//     final DocumentReference ref = db.doc(path);
//
//     return db
//         .runTransaction(
//           (transaction) => transaction.get(ref),
//           timeout: timeout,
//           maxAttempts: maxAttempts,
//         )
//         .then((value) => value.exists);
//   }
//
//   Future<R> getField<R>(
//     String path, {
//     required String field,
//     required R initialData,
//     required R Function(dynamic data) convert,
//     Duration timeout = const Duration(seconds: 30),
//     int maxAttempts = 5,
//   }) async {
//     final DocumentReference<Map<String, dynamic>> ref = db.doc(path);
//
//     return db
//         .runTransaction(
//       (transaction) => transaction.get(ref),
//       timeout: timeout,
//       maxAttempts: maxAttempts,
//     )
//         .then((snapshot) async {
//       final map = snapshot.data();
//       if (map == null) return initialData;
//
//       return convert(map[field] ?? initialData);
//     });
//   }
//
//   Future<bool> createOrUpdateModel(
//     String path, {
//     required FirebaseModel model,
//     Duration timeout = const Duration(seconds: 30),
//     int maxAttempts = 5,
//   }) async {
//     final DocumentReference ref = db.doc(path);
//
//     return db.runTransaction(
//       (transaction) async {
//         transaction.set(
//           ref,
//           model.toMap(),
//           SetOptions(merge: true),
//         );
//       },
//       timeout: timeout,
//       maxAttempts: maxAttempts,
//     ).then(
//       (value) => true,
//       onError: (error, stacktrace) {
//         return false;
//       },
//     );
//   }
//
//   Future<bool> createOrUpdateField(
//     String path, {
//     required Map<String, dynamic> map,
//     Duration timeout = const Duration(seconds: 30),
//     int maxAttempts = 5,
//   }) async {
//     final DocumentReference ref = db.doc(path);
//
//     return db.runTransaction(
//       (transaction) async {
//         transaction.set(
//           ref,
//           map,
//           SetOptions(merge: true),
//         );
//       },
//       timeout: timeout,
//       maxAttempts: maxAttempts,
//     ).then(
//       (value) => true,
//       onError: (error, stacktrace) {
//         return false;
//       },
//     );
//   }
// }
