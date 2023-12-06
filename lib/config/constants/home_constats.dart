   import 'package:dicta_app/domain/entitie/cursos/clases.dart';
import 'package:dicta_app/domain/entitie/cursos/secciones.dart';
import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';

List<Clases> clases = [];

    List<Secciones> secciones = [
      Secciones(id: "id", titulo: "titulo", clases: clases)
    ];

    List<CursoModel> listHomeSlider = [
      CursoModel(
          id: "1",
          nombre: "Transformación Digital en Educación",
          precio: 25.00,
          categoria: "categoria",
          fechaPublicacion: "",
          imagencurso:
              "https://www.redem.org/wp-content/uploads/2021/11/descarga-1024x683.jpg",
          estado: "estado",
          nombreCreador: "nombreCreador",
          secciones: secciones,
          descripcion: "",
          nivel: "nivel",
          subcategoria: "subcategoria",
          idioma: "idioma"),
      CursoModel(
          id: "2",
          nombre: "Coursera: Liderazgo y Gestión en la Educación Digital",
          precio: 25.00,
          categoria: "categoria",
          fechaPublicacion: "",
          imagencurso:
              "https://aap.org.pe/biblioteca/wp-content/uploads/sites/20/2018/01/ELERNING.jpg",
          estado: "estado",
          nombreCreador: "nombreCreador",
          secciones: secciones,
          descripcion: "",
          nivel: "nivel",
          subcategoria: "subcategoria",
          idioma: "idioma"),
      CursoModel(
          id: "3",
          nombre: "LinkedIn Learning: Manejo Efectivo del Tiempo",
          precio: 25.00,
          categoria: "categoria",
          fechaPublicacion: "",
          imagencurso:
              "https://static.mercadonegro.pe/wp-content/uploads/2020/10/15171525/cursos-virtuales.jpg",
          estado: "estado",
          nombreCreador: "nombreCreador",
          secciones: secciones,
          descripcion: "",
          nivel: "nivel",
          subcategoria: "subcategoria",
          idioma: "idioma")
    ];