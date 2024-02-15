using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Ansh.Models.DTO
{
    public class Employee
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string EmployeeEmail { get; set; }
        public string EmployeeContact { get; set; }
        public string EmployeeDesignation { get; set; }
        public DateTime? EmployeeDOJ { get; set; }
        public string EmployeeAddress { get; set; }
        public string Description { get; set; }
        public string DepartmentName { get; set; }
        public string Password { get; set; }
        public string? EmployeeProfile { get; set; }
        [NotMapped]
        public IFormFile EmployeeProfileFile { get; set; }
    }
}
