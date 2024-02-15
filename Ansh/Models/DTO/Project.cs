using System.ComponentModel.DataAnnotations;

namespace Ansh.Models.DTO
{
    public class Project
    {
        [Key]
        public int ProjectId { get; set; }

        public string ProjectName { get; set; }

        public DateTime Timestamp { get; set; } = DateTime.Now; // Default value for Timestamp
    }
}
