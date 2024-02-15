using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNetCore.Http; // Make sure to include the necessary namespace for IFormFile

namespace Ansh.Models.DTO
{
    public class UserProfile
    {
        public int Id { get; set; } // Primary Key

        [Display(Name = "Profile Image")]
        public string? ProfileImage { get; set; }

        [Required(ErrorMessage = "Full Name is required.")]
        public string FullName { get; set; }

        public string About { get; set; }

        public string Company { get; set; }

        public string Job { get; set; }

        public string Country { get; set; }

        public string Address { get; set; }

        [Phone(ErrorMessage = "Invalid phone number.")]
        public string Phone { get; set; }

        [EmailAddress(ErrorMessage = "Invalid email address.")]
        public string Email { get; set; }

        public string Twitter { get; set; }

        public string Facebook { get; set; }

        public string Instagram { get; set; }

        public string Linkedin { get; set; }

        [NotMapped]
        [Display(Name = "Profile Picture")]
        [Required(ErrorMessage = "Profile picture is required.")]
        public IFormFile ProfilePictureFile { get; set; }
    }
}
