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
        //iddeporte
        ViewBag.listaDeportes = BD.ListarDeportes(1);
        return View ();
    }

    public IActionResult Paises()
    {
        ViewBag.listaPaises = BD.ListarPaises();
        return View();
    }

   
}
