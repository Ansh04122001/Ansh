using Microsoft.EntityFrameworkCore;

namespace Ansh.Models.DTO
{
    public class DeptDbContext : DbContext
    {
        public DeptDbContext(DbContextOptions<DeptDbContext> options) : base(options)
        {
        }
        public DbSet<Dept> Depts { get; set; }
        public object Departments { get; internal set; }
        public DbSet<Employee> Employees { get; set; }
    }
}
