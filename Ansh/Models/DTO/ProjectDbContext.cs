using Microsoft.EntityFrameworkCore;

namespace Ansh.Models.DTO
{
    public class ProjectDbContext : DbContext
    {
        public ProjectDbContext(DbContextOptions<ProjectDbContext> options) : base(options)
        {
        }
        public DbSet<Project> Projects { get; set; }
        public object Proj { get; internal set; }
    }
}
