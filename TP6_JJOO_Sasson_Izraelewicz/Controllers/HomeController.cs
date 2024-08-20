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

    public IActionResult Deportes(int idDeporte)
    {
        ViewBag.listaDeportes = BD.ListarDeportes(idDeporte);
        return View ();
    }

    public IActionResult Paises()
    {
        ViewBag.listaPaises = BD.ListarPaises();
        return View();
    }

    public IActionResult VerDetalleDeporte(int idDeporte)
    {
        ViewBag.listaDeportes = BD.ListarDeportes(idDeporte);
        ViewBag.listaDeportistas = BD.ListarDeportistasDeporte(idDeporte);
        return View(VerDetalleDeporte(idDeporte));
    }

    public IActionResult VerDetallePais(int idPais)
    {
        ViewBag.listaPais = BD.ListarPaises();
        ViewBag.listaDeportistas = BD.ListarDeportistasPais(idPais);
        return View(VerDetallePais(idPais));
    }

    public IActionResult VerDetalleDeportista(int idDeportista)
    {
        ViewBag.listaDeportistas = BD.VerInfoDeportista(idDeportista);
        return View(VerDetalleDeportista(idDeportista));
    }

    public IActionResult AgregarDeportista(int idDeporte)
    {
        ViewBag.listaPais = BD.ListarPaises();
        ViewBag.listaDeportes = BD.ListarDeportes(idDeporte);
        return View(AgregarDeportista(idDeporte));
    }

    /*[HttpPost] 
    public IActionResult GuardarDeportista(Deportista dep) //RECIBE INFO DEL FORM (X ESO CREEMOS QUE ESTA EN ROJO)
    {
        BD.AgregarDeportista(dep);
        return View(Index());
    }*/

    public IActionResult EliminarDeportista(int idCandidato)
    {
        BD.EliminarDeportista(idCandidato);
        return View(Index());
    }

    public IActionResult Creditos()
    {
        return View();
    }

   
}
