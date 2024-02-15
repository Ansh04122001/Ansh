namespace Ansh.Models.DTO
{
    public class UserTaskViewModel
    {
        public UserProfile UserProfile { get; set; }
        public int InProgressTaskCount { get; set; }
        public int CompletedTaskCount { get; set; }
        public int TotalTaskCount { get; set; }
    }

}
