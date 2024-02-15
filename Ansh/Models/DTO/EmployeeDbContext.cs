using Microsoft.EntityFrameworkCore;

namespace Ansh.Models.DTO
{
    public class EmployeeDbContext : DbContext
    {
        public EmployeeDbContext(DbContextOptions<EmployeeDbContext> options) : base(options)
        {
        }

        public DbSet<Employee> Employees { get; set; }
        public DbSet<Dept> Department { get; set; }
        public object Employee { get; internal set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Configure EmployeeId as an identity column
            modelBuilder.Entity<Employee>()
                .Property(e => e.EmployeeId)
                .UseIdentityColumn();

            // Define relationships and constraints here if needed
        }
    }
}
