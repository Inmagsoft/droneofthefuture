using System.Collections.Generic;
using DroneOfTheFuture.App.Dominio;

namespace DroneOfTheFuture.App.Persistencia.AppRepositorios
{
    public interface IRepositorioDrones
    {
         IEnumerable<Drone> GetAll();

         Drone GetDroneById(int droneId);

         Drone UpdateDrone(Drone droneUpdated);

         Drone AddDrone(Drone newDrone);
    }
}