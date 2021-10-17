using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HolaWeb.App.Dominio;
using HolaWeb.App.Persistencia.AppRepositorios;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace DroneOfTheFuture.App.Frontend.Pages
{
    public class ListModel : PageModel
    {
        private readonly IRepositorioData repositorioData;

        public IEnumerable<Dara> data {get;set;}

        public ListModel(IRepositorioData repositorioData)
        {
            this.repositorioData = repositorioData;
        }

        public void OnGet()
        {
            respuesta = repositorioData.GetAll();
        }
    }
}
