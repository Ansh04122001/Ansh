using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Ansh.Models.DTO
{
    public class ViewModels
    {
        public UserProfile UserProfile { get; set; }
        public Dept Dept { get; set; }
        public List<Dept> Departments { get; set; }
        public Employee Employees { get; set; }

        public DbSet<Dept> Department { get; set; }
        public List<Employee> Employee { get; set; }

        public Taskassign Tasks { get; set; }
        public  List<Taskassign> Task { get; set; }
        public Project Projects { get; set; }
        public List<Project> Project { get; set; }
    }
}
