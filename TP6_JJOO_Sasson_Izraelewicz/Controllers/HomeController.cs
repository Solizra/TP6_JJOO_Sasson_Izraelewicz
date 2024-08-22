using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP6_JJOO_Sasson_Izraelewicz.Models;

namespace TP6_JJOO_Sasson_Izraelewicz.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Deportes()
    {
        ViewBag.listaDeportes = BD.ListarDeportes();
        return View ();
    }

    public IActionResult Paises()
    {
        ViewBag.listaPaises = BD.ListarPaises();
        return View();
    }

    public IActionResult VerDetalleDeporte(int IdDeporte)
    {
        ViewBag.Deporte = BD.VerInfoDeporte(IdDeporte);
        ViewBag.listaDeportistas = BD.ListarDeportistasDeporte(IdDeporte);
        return View();
    }

    public IActionResult VerDetallePais(int IdPais)
    {
        ViewBag.Paiss = BD.VerInfoPais(IdPais);
        ViewBag.listaDeportistas = BD.ListarDeportistasPais(IdPais);
        return View();
    }

    public IActionResult VerDetalleDeportista(int idDeportista)
    {
        ViewBag.Deportistaa = BD.VerInfoDeportista(idDeportista);
        return View();
    }

    public IActionResult AgregarDeportista()
    {
        ViewBag.listaPais = BD.ListarPaises();
        ViewBag.listaDeportes = BD.ListarDeportes();
        return View();
    }

    [HttpPost] 
    public IActionResult GuardarDeportista(Deportista dep)
    {
        BD.AgregarDeportista(dep);
        return View("Index");
    }

    public IActionResult EliminarDeportista(int idCandidato)
    {
        BD.EliminarDeportista(idCandidato);
        return View("Index");
    }

    public IActionResult Creditos()
    {
        return View();
    }

     public IActionResult Historia()
    {
        return View();
    }

    
   
}
