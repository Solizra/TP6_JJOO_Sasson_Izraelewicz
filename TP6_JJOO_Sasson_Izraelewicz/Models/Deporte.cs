using System;
using System.Collections.Generic;
namespace TP6_JJOO_Sasson_Izraelewicz;

class Deporte{
     
    public  int IdDeporte {get; set;}
    public  string Nombre {get; set;}
    public  string Foto {get; set;}

    public Deporte(){}

    public Deporte(int id, string nombre, string foto)
    {
        IdDeporte = id;
        Nombre = nombre;
        Foto = foto;
    }

}