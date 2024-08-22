using System;
using System.Collections.Generic;
namespace TP6_JJOO_Sasson_Izraelewicz;

public class Deportista{

    public int idDeportista {get; set;}
    public string Apellido {get; set;}
    public string Nombre {get; set;}
    public DateTime FechaNacimiento {get; set;}
    public string Foto {get; set;}
    public int IdPais {get; set;}
    public int IdDeporte {get; set;}

    public Deportista (){}

    public Deportista (int id, string apellido, string nombre, DateTime fecha, string foto)
    {
        idDeportista = id;
        Apellido = apellido;
        Nombre = nombre;
        FechaNacimiento = fecha;
        Foto = foto;
    }


}