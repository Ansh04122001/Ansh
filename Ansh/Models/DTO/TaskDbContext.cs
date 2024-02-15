using Microsoft.EntityFrameworkCore;

namespace Ansh.Models.DTO
{
    public class TaskDbContext : DbContext
    {
        public TaskDbContext(DbContextOptions<TaskDbContext> options) : base(options)
        {
        }
        public DbSet<Taskassign> Tasks { get; set; }

        public object Task { get; internal set; }
    }

}
