using System.Collections.Generic;
using DroneOfTheFuture.App.Dominio;

namespace DroneOfTheFuture.App.Persistencia.AppRepositorios
{
    public interface IRepositorioEncargados
    {
         IEnumerable<Encargado> GetAll();

         Encargado GetEncargadoById(int encargadoId);

         Encargado UpdateEncargado(Encargado encargadoUpdated);

         Encargado AdEncargador(Encargado newEncargado);
    }
}