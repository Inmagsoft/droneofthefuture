using System.Collections.Generic;
using HolaWeb.App.Dominio;
using System.Linq;


namespace DroneOfTheFuture.App.Persistencia.AppRepositorios
{
    public class RepositotioUsuariosOperaciones : IRepositorioUsuarios
    {
        
        private List<Usuario> usuarios;
        //Do user CRUD from SQL server database
      

        public IEnumerable<User> GetAll()
        {
            //get from database
        }

        public User GetUserById(int userId)
        {
          //get from database
        }

         public User UpdateUser(Saludo userupdated)
         {
           //update on database
         }

          public User AddUser(Saludo newUser)
          {
            //save on database
          }
    }
}