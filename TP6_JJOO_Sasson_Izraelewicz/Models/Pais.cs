using System;
using System.Collections.Generic;
namespace TP6_JJOO_Sasson_Izraelewicz;

class Pais{
    public int IdPais {get; set;}
    public string Nombre {get; set;}
    public string Bandera {get; set;}
    public DateTime FechaFundacion {get; set;}

    public Pais(){}

    public Pais(int Id, string nombre, string bandera, DateTime fecha)
    {
        IdPais = Id;
        Nombre = nombre;
        Bandera = bandera;
        FechaFundacion = fecha;
    }


}