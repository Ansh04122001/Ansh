using Microsoft.EntityFrameworkCore;

namespace Ansh.Models.DTO
{
    public class UsersDbContext : DbContext
    {
        public UsersDbContext(DbContextOptions<UsersDbContext> options) : base(options)
        {
        }

        public DbSet<UserProfile> UserProfiles { get; set; }
    }
}
