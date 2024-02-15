using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Ansh.Models.DTO
{
    public class LoginModel
    {
        [Required]
        [EmailAddress]
        public string Username { get; set; } // Use 'Username' for consistency with the authentication code

        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }
    }

   

}
