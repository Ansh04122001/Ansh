using Microsoft.EntityFrameworkCore;

namespace Ansh.Models.DTO
{

    public class TimeDbContext : DbContext
    {
        public TimeDbContext(DbContextOptions<TimeDbContext> options)
            : base(options)
        {
        }
        public DbSet<Time> Times { get; set; }

    }
 }
