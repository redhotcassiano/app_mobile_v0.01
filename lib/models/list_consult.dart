import 'package:app_mobile/models/consult.dart';

class ListConsult {

  static final List<Consult> consults = [
    const Consult(
      id: "1",
      nome: "Consultorio 1",
      razaosocial: "test consultorio 1",      
    ),
    const Consult(
      id: "2",
      nome: "Consultorio 1",
      razaosocial: "test consultorio 1", 
    ),
    const Consult(
     id: "3",
      nome: "Consultorio 1",
      razaosocial: "test consultorio 1", 
    ),
    const Consult(
      id: "4",
      nome: "Consultorio 1",
      razaosocial: "test consultorio 1", 
    ),
    const Consult(
      id: "5",
      nome: "Consultorio 1",
      razaosocial: "test consultorio 1", 
    ),
  ];

  static Consult getConsultById(id) {
    return consults
        .where((p) => p.id == id)
        .first;
  }
}

