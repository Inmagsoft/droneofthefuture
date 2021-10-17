using System.Collections.Generic;
using DroneOfTheFuture.App.Dominio;

namespace DroneOfTheFuture.App.Persistencia.AppRepositorios
{
    public interface IRepositorioUsuarios
    {
         IEnumerable<Usuario> GetAll();

         Usuario GetUserById(int userId);

         Usuario UpdateUser(Usuario userUpdated);

         Usuario AddUser(Usuario newUser);
    }
}