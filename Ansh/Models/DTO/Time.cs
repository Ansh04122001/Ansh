namespace Ansh.Models.DTO
{
    public class Time
    {
        public int ID {  get; set; }
        public string UserName { get; set; }
        public string ProjectName { get; set; }
        public string TaskName { get; set; }
        public string DayOfWeek { get; set; }
        public TimeSpan StartTime { get; set; }
        public TimeSpan EndTime { get; set; }
    }

}
