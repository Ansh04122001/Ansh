using Ansh.Models.DTO;
using Ansh.Repositories.Abstract;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Threading.Tasks;

namespace Ansh.Controllers
{
    [Authorize]
    public class DashboardController : Controller
    {
        private readonly IUserAuthenticationService _authService;
        private readonly UsersDbContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;
        private readonly EmployeeDbContext _dbcontext;
        private readonly TaskDbContext _Context;
        private readonly ClassRepository _classRepository; 
        public DashboardController(IUserAuthenticationService authService, UsersDbContext context, IWebHostEnvironment webHostEnvironment, EmployeeDbContext dbcontext, TaskDbContext Context, ClassRepository classRepository)
        {
            this._authService = authService;
            _context = context;
            _webHostEnvironment = webHostEnvironment;
            _dbcontext = dbcontext;
            _Context = Context;
            _classRepository = classRepository;  
        }
        public IActionResult Display()
        {
            // Retrieve the current user
            var currentUser = User.Identity.Name;

            // Retrieve user profile from the database based on the current user
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);
           

            
          


            // Pass the user profile to the view
            return View(userProfile);
        }
        public IActionResult Emp()
        {
            // Retrieve the current user
            var currentUser = User.Identity.Name;
            int inProgressTaskCount, completedTaskCount, totalTaskCount;

            var tasks = _classRepository.GetTasks(currentUser, out inProgressTaskCount, out completedTaskCount, out totalTaskCount);

            // Pass counts to ViewBag
            ViewBag.InProgressTaskCount = inProgressTaskCount;
            ViewBag.CompletedTaskCount = completedTaskCount;
            ViewBag.TotalTaskCount = totalTaskCount;

            // Retrieve user profile from the database based on the current user
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);
            // Pass the user profile to the view
            return View(userProfile);
        }


        public IActionResult AllTask()
        {
            var currentUser = User.Identity.Name;
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Fetch Taskassign objects from your data source (e.g., database)
            var taskList = _Context.Tasks.ToList();

            ViewModels viewModel = new ViewModels
            {
                UserProfile = userProfile,
                Task = taskList  // Make sure the Task property is correctly defined in your ViewModels class
            };

            return View(viewModel);


        }
       public IActionResult  TaskDispaly()
        {
            var currentUser = User.Identity.Name;

            List<Class> userTasks = _classRepository.GetTasksForUser(currentUser);

            string jsonTasks = JsonConvert.SerializeObject(userTasks);

            // Deserialize JSON back to a list of Class objects
            List<Class> deserializedTasks = JsonConvert.DeserializeObject<List<Class>>(jsonTasks);

            return Json(deserializedTasks);
        }
        [HttpGet]
        public IActionResult GetTaskDetails(int id)
        {
            var task = _Context.Tasks.FirstOrDefault(ta => ta.Id == id);

            if (task == null)
            {
                return NotFound();
            }

            return Json(task);
        }
        [HttpPost]
        public IActionResult Task([Bind("Id,DepartmentName,EmployeeList,TaskPriority,TaskTitle,TaskDescription,TaskEndDate,TaskAassignDate,TaskStatus,ProjectName")] Taskassign Tasks)
        {

            if (ModelState.IsValid)
            {
                _Context.Update(Tasks);
                _Context.SaveChanges();
                return RedirectToAction("AllTask", "Dashboard");
            }

            return View();
        }
        public IActionResult NewTask()
        {
            // Retrieve the current user
            var currentUser = User.Identity.Name;

            // Retrieve user profile from the database based on the current user
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Pass the user profile to the view
            return View(userProfile);
        }

        public IActionResult CompletedTask()
        {
            var currentUser = User.Identity.Name;
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Fetch Taskassign objects from your data source (e.g., database)
            var taskList = _Context.Tasks.ToList();

            ViewModels viewModel = new ViewModels
            {
                UserProfile = userProfile,
                Task = taskList  // Make sure the Task property is correctly defined in your ViewModels class
            };

            return View(viewModel);
        }

        public IActionResult InProgessTask()
        {
            var currentUser = User.Identity.Name;
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Fetch Taskassign objects from your data source (e.g., database)
            var taskList = _Context.Tasks.ToList();

            ViewModels viewModel = new ViewModels
            {
                UserProfile = userProfile,
                Task = taskList  // Make sure the Task property is correctly defined in your ViewModels class
            };

            return View(viewModel);
        }
        public IActionResult Contact()
        {
            // Retrieve the current user
            var currentUser = User.Identity.Name;

            // Retrieve user profile from the database based on the current user
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Pass the user profile to the view
            return View(userProfile);
        }
        public IActionResult Users()
        {
            // Retrieve the current user
            var currentUser = User.Identity.Name;

            // Retrieve user profile from the database based on the current user
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Pass the user profile to the view
            return View(userProfile);
        }
        [Authorize]
        public IActionResult ChangePassword()
        {
            return View();
        }
        [Authorize]
        [HttpPost]
        public async Task<IActionResult> ChangePassword(ChangePasswordModel model)
        {
            if (!ModelState.IsValid)
                return View(model);
            var result = await _authService.ChangePasswordAsync(model, User.Identity.Name);
            TempData["msg"] = result.Message;
            return RedirectToAction("Login", "UserAuthentication");
        }
        [HttpPost]
        public async Task<IActionResult> AddPofile(UserProfile employee)
        {
            if (ModelState.IsValid)
            {
                if (employee.ProfilePictureFile != null)
                {
                    // Save the profile picture file
                    employee.ProfileImage = SaveImageAndGetPath(employee.ProfilePictureFile);
                }

                _context.Add(employee);
                await _context.SaveChangesAsync();
                return RedirectToAction("Users", "Dashboard");
            }
            return View(employee);
        }
        private string SaveImageAndGetPath(IFormFile profilePictureFile)
        {
            var uploadsFolder = Path.Combine(_webHostEnvironment.WebRootPath, "images");
            // Create the directory if it doesn't exist
            if (!Directory.Exists(uploadsFolder))
            {
                Directory.CreateDirectory(uploadsFolder);
            }
            var uniqueFileName = Guid.NewGuid().ToString() + "_" + profilePictureFile.FileName;
            var filePath = Path.Combine(uploadsFolder, uniqueFileName);

            using (var fileStream = new FileStream(filePath, FileMode.Create))
            {
                profilePictureFile.CopyTo(fileStream);
            }
            return "/images/" + uniqueFileName;
        }
        [HttpGet]
        [Route("Dashboard/Edit/{id}")]
        public async Task<IActionResult> EditProfile(int id)
        {
            var employee = await _context.UserProfiles.FindAsync(id);
            if (employee == null)
            {
                return NotFound();
            }

            return View(employee);
        }
        private bool EmployeeExists(int id)
        {
            return _context.UserProfiles.Any(e => e.Id == id);
        }
        [HttpPost]
        [Route("Dashboard/Edit/{id}")]
        public async Task<IActionResult> EditProfile(int id, UserProfile employee)
        {
            if (id != employee.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    if (employee.ProfilePictureFile != null)
                    {
                        // Save the profile picture file
                        employee.ProfileImage = SaveImageAndGetPath(employee.ProfilePictureFile);
                    }

                    _context.Update(employee);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!EmployeeExists(id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction("Users", "Dashboard");
            }
            return View(employee);
        }
    }
}
