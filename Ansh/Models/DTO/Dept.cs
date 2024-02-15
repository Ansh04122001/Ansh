using System;
using System.ComponentModel.DataAnnotations;
namespace Ansh.Models.DTO
{
   

    public class Dept
    {
        [Key]
        public int DeptId { get; set; }

        public string DepartmentName { get; set; }

        public DateTime Timestamp { get; set; } = DateTime.Now; // Default value for Timestamp
    }

}
