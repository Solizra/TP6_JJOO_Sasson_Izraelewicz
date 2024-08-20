using System.Data.SqlClient;
using Dapper;
using System;
using System.Collections.Generic;

namespace TP6_JJOO_Sasson_Izraelewicz;

static class BD{
    private static string _ConnectionString = @"Server=localhost; DataBase=JJOO; Trusted_Connection=True";

    public static void AgregarDeportista(Deportista dep)
    {
        string SQL = "INSERT INTO Deportistas (idDeportista, Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte) VALUES (@pIdDeoportista, @pApellido, @pNombre, @pFechaNacimiento, @pFoto, @pIdPais, @pIdDeporte)"; 
        using(SqlConnection db = new SqlConnection(_ConnectionString))
        {
            db.Execute (SQL, new {pIdDeoportista = dep.idDeportista, pApellido = dep.Apellido, pNombre=dep.Nombre, pFechaNacimiento = dep.FechaNacimiento, pFoto=dep.Foto, pIdPais=dep.IdPais, pIdDeporte=dep.IdDeporte});
        }
        
    }

    public static int EliminarDeportista(int idDeportista) 
    {
        int RegistrosEliminados = 0;
        string sql = "DELETE FROM Deportistas WHERE idDeportista = @pidDeportista";
        using(SqlConnection db = new SqlConnection(_ConnectionString)){
            RegistrosEliminados = db.Execute(sql, new {pidDeportista = idDeportista});
        }
        return RegistrosEliminados;

    }

    public static Deporte VerInfoDeporte(int idDeporte)
    {
        Deporte dep = new Deporte();
        string sql = "SELECT * FROM Deportes WHERE idDeporte=@pidDeporte";
        using(SqlConnection db = new SqlConnection(_ConnectionString))
        {
            dep = db.QueryFirstOrDefault<Deporte>(sql, new{pidDeporte = idDeporte});
        }
        return dep;
    }

    public static Pais VerInfoPais(int idPais)
    {
        Pais pais = new Pais();
        string sql = "SELECT * FROM Paises WHERE idPais=@pidPais";
        using(SqlConnection db = new SqlConnection(_ConnectionString))
        {
            pais = db.QueryFirstOrDefault<Pais>(sql, new{pidPais = idPais});
        }
        return pais;
    }

    public static Deportista VerInfoDeportista(int idDeportista)
    {
        Deportista dep = new Deportista();
        string sql = "SELECT * FROM Deportistas WHERE idDeportista=@pidDeportista";
        using(SqlConnection db = new SqlConnection(_ConnectionString))
        {
            dep = db.QueryFirstOrDefault<Deportista>(sql, new{pidDeportista = idDeportista});
        }
        return dep;
    }

    public static List<Pais> ListarPaises()
    {   
        List <Pais> listaPaises = new List <Pais> ();
        string sql = "SELECT * FROM Paises";
        using(SqlConnection db = new SqlConnection(_ConnectionString))
        {
            listaPaises = db.Query<Pais>(sql).ToList();
        }
        return listaPaises;
        
    }

    public static List<Deporte> ListarDeportes(int idDeporte)
    {   
        List <Deporte> listaDeportes = new List <Deporte> ();
        string sql = "SELECT * FROM Deportes WHERE idDeporte = @pidDeporte";
        using(SqlConnection db = new SqlConnection(_ConnectionString))
        {
            listaDeportes = db.Query<Deporte>(sql, new{pidDeporte = idDeporte}).ToList();
        }
        return listaDeportes;
        
    }

    public static List<Deportista> ListarDeportistasPais(int idPais)
    {   
        List <Deportista> listaDeportistas = new List <Deportista> ();
        string sql = "SELECT * FROM Deportistas WHERE idPais = @pidPais";
        using(SqlConnection db = new SqlConnection(_ConnectionString))
        {
            listaDeportistas = db.Query<Deportista>(sql, new{pidPais = idPais}).ToList();
        }
        return listaDeportistas;
        
    }

     public static List<Deportista> ListarDeportistasDeporte(int idDeporte)
    {   
        List <Deportista> listaDeportistas = new List <Deportista> ();
        string sql = "SELECT * FROM Deportistas WHERE idDeporte = @pidDeporte";
        using(SqlConnection db = new SqlConnection(_ConnectionString))
        {
            listaDeportistas = db.Query<Deportista>(sql, new{pidDeporte = idDeporte}).ToList();
        }
        return listaDeportistas;
        
    }


}