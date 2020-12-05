using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Domain.Entities;
using Domain.Interfaces;

namespace Domain.Services
{
    public class OrderService
    {
        private readonly IAsyncRepository<Order> orderRepository;
        public OrderService(IAsyncRepository<Order> orderRepository)
        {
            this.orderRepository = orderRepository;
        }
        public async Task<Order> CreateOrderAsync(Order order)
        {
            return await this.orderRepository.AddAsync(order);
        }
    }
}