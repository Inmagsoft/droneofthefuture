using System.Collections.Generic;
using DroneOfTheFuture.App.Dominio;

namespace DroneOfTheFuture.App.Persistencia.AppRepositorios
{
    public interface IRepositorioPedidos
    {
         IEnumerable<Pedido> GetAll();

         Pedido GetPedidoById(int pedidoId);

         Pedido UpdatePedido(Pedido pedidoUpdated);

         Pedido AddPedido(Pedido newPedido);
    }
}