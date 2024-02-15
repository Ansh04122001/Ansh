using Ansh.Migrations.TaskDb;
using Ansh.Models.DTO;
using Ansh.Repositories.Abstract;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using System.Linq;
using System.Threading.Tasks;


namespace Ansh.Controllers
{
    [Authorize(Roles = "admin")]
    public class AdminController : Controller
    {
        private readonly IUserAuthenticationService _authService;
        private readonly UsersDbContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;
        private readonly DeptDbContext _dbContext;
        private readonly EmployeeDbContext _dbcontext;
        private readonly TaskDbContext _Context;
        private readonly ProjectDbContext _ext;

        public AdminController(IUserAuthenticationService authService, UsersDbContext context, IWebHostEnvironment webHostEnvironment, DeptDbContext dbContext , EmployeeDbContext dbcontext, TaskDbContext Context, ProjectDbContext ext)
        {
            this._authService = authService;
            _context = context;
            _webHostEnvironment = webHostEnvironment;
            _dbContext = dbContext;
            _dbcontext = dbcontext;
            _Context = Context;
            _ext = ext;
        }

     
        [HttpGet]
        public IActionResult GetDepartments()
        {
            var departments = _dbContext.Depts.ToList(); 

            return Json(departments);
        }

        [HttpGet]
        public IActionResult GetEmp(int id )
        {
            var Employee = _dbcontext.Employees.FirstOrDefault(e => e.EmployeeId == id);

            if (Employee == null)
            {
                return NotFound();
            }

            return Json(Employee);
        }
        [HttpGet]
        public IActionResult photo(int id)
        {
            var employee = _dbcontext.Employees.FirstOrDefault(e => e.EmployeeId == id);

            if (employee == null)
            {
                return NotFound();
            }

            return Json(employee);
           
        }
        [HttpPost]
        public IActionResult EmpDelete(int id)
        {
            var EmpDelete = _dbcontext.Employees.FirstOrDefault(e => e.EmployeeId == id);

            if (EmpDelete == null)
            {
                return NotFound();
            }

            _dbcontext.Employees.Remove(EmpDelete);
            _dbcontext.SaveChanges();

            return Json(new { success = true });
        }

        [HttpPost]
        public async Task<IActionResult> Empupdate([Bind("EmployeeId,DepartmentName,EmployeeName,EmployeeEmail,EmployeeContact,EmployeeDesignation,EmployeeDOJ,EmployeeAddress,Description,Password,EmployeeProfileFile")] Employee Employees)
        {
            if (ModelState.IsValid)
            {
                var existingEmployee = _dbcontext.Employees.FirstOrDefault(e => e.EmployeeId == Employees.EmployeeId);

                if (existingEmployee == null)
                {
                    return NotFound();
                }
                existingEmployee.DepartmentName = Employees.DepartmentName;
                existingEmployee.EmployeeName = Employees.EmployeeName;
                existingEmployee.EmployeeEmail = Employees.EmployeeEmail;
                existingEmployee.EmployeeContact = Employees.EmployeeContact;
                existingEmployee.EmployeeDesignation = Employees.EmployeeDesignation;
                existingEmployee.EmployeeDOJ = Employees.EmployeeDOJ;
                existingEmployee.EmployeeAddress = Employees.EmployeeAddress;
                existingEmployee.Description = Employees.Description;
                existingEmployee.Password = Employees.Password;
                if (Employees.EmployeeProfileFile != null)
                {
                    existingEmployee.EmployeeProfile = SaveImage(Employees.EmployeeProfileFile);
                }
                _dbcontext.Employees.Update(existingEmployee);
                await _dbcontext.SaveChangesAsync();

                return RedirectToAction("ManageEmployee", "Admin");
            }
            return View();
        }

        [HttpGet]
        public IActionResult GetDepartmentDetails(int id)
        {
            var department = _dbContext.Depts.FirstOrDefault(d => d.DeptId == id);

            if (department == null)
            {
                return NotFound();
            }

            return Json(department);
        }
        [HttpPost]
        public IActionResult Update(Dept dept)
        {
            if (ModelState.IsValid)
            {
                // Update the department information in the database
                _dbContext.Update(dept);
                _dbContext.SaveChanges();
                return RedirectToAction("Manage", "Admin");
            }

            // If ModelState is not valid, return to the edit view with the model
            return View(new ViewModels { Dept = dept });
        }
        [HttpPost]
        public IActionResult DeleteTask(int id)
        {
            var taskToDelete = _dbContext.Depts.FirstOrDefault(t => t.DeptId == id);

            if (taskToDelete == null)
            {
                return NotFound();
            }

            _dbContext.Depts.Remove(taskToDelete);
            _dbContext.SaveChanges();

            return Json(new { success = true });
        }
        public IActionResult AddProject()
        {
            var currentUser = User.Identity.Name;
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            ViewModels viewModel = new ViewModels
            {
                UserProfile = userProfile,
                Projects = new Project(), // Initialize a new instance for the department form
            };

            return View(viewModel);
        }
        public IActionResult ManageProject()
        {
            var currentUser = User.Identity.Name;
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Fetch Taskassign objects from your data source (e.g., database)
            var projects = _ext.Projects.ToList();

            ViewModels viewModel = new ViewModels
            {
                UserProfile = userProfile,
                Project = projects  // Make sure the Task property is correctly defined in your ViewModels class
            };

            return View(viewModel);
        }
        [HttpGet]
        public IActionResult GetProjects()
        {
            var Project = _ext.Projects.ToList();

            return Json(Project);
        }
        [HttpGet]
        public IActionResult GetProjectsDetails(int id)
        {
            var Project = _ext.Projects.FirstOrDefault(p => p.ProjectId == id);

            if (Project == null)
            {
                return NotFound();
            }

            return Json(Project);
        }
        public IActionResult ProjectsDelete(int id)
        {
            var projectdelete = _ext.Projects.FirstOrDefault(p => p.ProjectId == id);


            if (projectdelete == null)
            {
                return NotFound();
            }

            _ext.Projects.Remove(projectdelete);
            _ext.SaveChanges();

            return Json(new { success = true });
        }
        [HttpPost]
        public IActionResult UpdateProject(Project Projects)
        {
            if (ModelState.IsValid)
            {
                _ext.Projects.Update(Projects);
                _ext.SaveChanges();
                return RedirectToAction("ManageProject", "Admin");
            }
            return View(Projects);
        }
        [HttpPost]
        public IActionResult AddProject(Project Projects)
        {
            if (ModelState.IsValid)
            {
                _ext.Projects.Add(Projects);
                _ext.SaveChanges();
                return RedirectToAction("ManageProject", "Admin");
            }
            return View(Projects);
        }
        [HttpPost]
        public IActionResult Add(Dept dept)
        {
            if (ModelState.IsValid)
            {
                _dbContext.Depts.Add(dept);
                _dbContext.SaveChanges();
                // Set a success message
                TempData["SuccessMessage"] = "Department added successfully.";

                return RedirectToAction("Manage", "Admin");
            }

            // Handle validation errors
            return View(dept);
        }
        public IActionResult Display()
        {
            // Retrieve the current user
            var currentUser = User.Identity.Name;

            // Retrieve user profile from the database based on the current user
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Retrieve department count
            var departments = _dbContext.Depts.ToList(); // Assuming it's _context, not _dbContext
            var departmentCount = departments.Count;
            var employeeCount = _dbcontext.Employees.Count();
            var taskCount = _Context.Tasks.Count(task => task.TaskStatus == "0");
            var taskCount1 = _Context.Tasks.Count(task => task.TaskStatus == "1");
            var projectCount = _ext.Projects.Count();


            // Pass user profile and counts to the view using ViewBag

            ViewBag.DepartmentCount = departmentCount;
            ViewBag.EmployeeCount = employeeCount;
            ViewBag.TaskCount = taskCount;
            ViewBag.TaskCount1 = taskCount1;
            ViewBag.ProjectCount = projectCount;

            return View(userProfile);
        }
        public IActionResult AddTask()
        {
            var currentUser = User.Identity.Name;
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            var viewModel = new ViewModels
            {
                UserProfile = userProfile,
                Employee = _dbcontext.Employees.ToList(), 
                Departments = _dbContext.Depts.ToList(),
                Project=_ext.Projects.ToList()
            };

            // Check if userProfile is null and handle accordingly
            if (userProfile == null)
            {
               
                return RedirectToAction("UserProfileNotFound");
            }

            // Check if Employee or Departments is null and handle accordingly
            if (viewModel.Employee == null || viewModel.Departments == null)
            {
               
                return RedirectToAction("DataNotFound");
            }

            return View(viewModel);
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
        public IActionResult TaskUpdate([Bind("Id,DepartmentName,EmployeeList,TaskPriority,TaskTitle,TaskDescription,TaskEndDate,TaskAassignDate,TaskStatus,ProjectName")] Taskassign Tasks)
        {
            
            if (ModelState.IsValid)
            {
                _Context.Update(Tasks);
                _Context.SaveChanges();
                return RedirectToAction("ManageTask", "Admin");
            }

            return View();
        }
        [HttpPost]
        public IActionResult TaskDelete(int id)
        {
            var taskDelete = _Context.Tasks.FirstOrDefault(ta => ta.Id == id);


            if (taskDelete == null)
            {
                return NotFound();
            }

            _Context.Tasks.Remove(taskDelete);
            _Context.SaveChanges();

            return Json(new { success = true });
        }
        public IActionResult GetEmployees(string departmentName)
        {
            try
            {
                if (string.IsNullOrEmpty(departmentName))
                {

                    return Json(new List<Employee>());

                }
                var employees = _dbcontext.Employees.Where(e => e.DepartmentName == departmentName).ToList();
                return Json(employees);
            }
            catch (Exception ex)
            {
                return Json(new { error = "An error occurred while fetching employees." });
            }
        }
        [HttpPost]
        public IActionResult taskadd(Taskassign Task)
        {
            if (ModelState.IsValid)
            {
                _Context.Tasks.Add(Task);
                _Context.SaveChanges();
                return RedirectToAction("ManageTask", "Admin");
            }

            // Handle validation errors
            return View(Task);
        }

        public IActionResult AddEmployee()
        {
            var currentUser = User.Identity.Name;
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            if (userProfile == null)
            {
                // Handle the case when the userProfile is not found
                // You might want to redirect to an error page or take appropriate action
                return RedirectToAction("UserProfileNotFound");
            }

            var viewModel = new ViewModels
            {
                UserProfile = userProfile,
                Departments = _dbContext.Depts.ToList() // Assuming you have a DbSet<Dept> in your DbContext
            };

            // Check if Departments is null and handle accordingly
            if (viewModel.Departments == null)
            {
                return RedirectToAction("DepartmentsNotFound");
            }

            return View(viewModel);
        }
        [HttpPost]
        public async Task<IActionResult> Emp([FromForm] Employee Employees)
        {
            if (ModelState.IsValid)
            {
                if (Employees.EmployeeProfileFile != null)
                {
                    // Save the profile picture file
                    Employees.EmployeeProfile = SaveImage(Employees.EmployeeProfileFile);
                }

                // Save the employee to the database

                _dbcontext.Employees.Add(Employees);
                _dbcontext.Database.ExecuteSqlRaw("SET IDENTITY_INSERT Employees ON");
                await _dbcontext.SaveChangesAsync();
                _dbcontext.Database.ExecuteSqlRaw("SET IDENTITY_INSERT Employees OFF");
                return RedirectToAction("ManageEmployee", "Admin");
            }

            // If the model is not valid, reload the data and return the form with validation errors
            var viewModel = new ViewModels
            {
                UserProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == User.Identity.Name),
                Departments = _dbContext.Depts.ToList()
            };

            return View("AddEmployee", viewModel);
        }
        private string SaveImage(IFormFile EmployeeProfileFile)
        {
            var uploadsFolder = Path.Combine(_webHostEnvironment.WebRootPath, "EmpImages");

            // Create the directory if it doesn't exist
            if (!Directory.Exists(uploadsFolder))
            {
                Directory.CreateDirectory(uploadsFolder);
            }

            var uniqueFileName = Guid.NewGuid().ToString() + "_" + Path.GetFileName(EmployeeProfileFile.FileName);
            var filePath = Path.Combine(uploadsFolder, uniqueFileName);

            using (var fileStream = new FileStream(filePath, FileMode.Create))
            {
                EmployeeProfileFile.CopyTo(fileStream);
            }

            return "/EmpImages/" + uniqueFileName;
        }
        public IActionResult Add()
        {
            var currentUser = User.Identity.Name;
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            ViewModels viewModel = new ViewModels
            {
                UserProfile = userProfile,
                Dept = new Dept() // Initialize a new instance for the department form
            };

            return View(viewModel);
        }
        public IActionResult Manage()
        {
            var currentUser = User.Identity.Name;
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Retrieve the list of departments from your database
            List<Dept> departments = _dbContext.Depts.ToList();

            ViewModels viewModel = new ViewModels
            {
                UserProfile = userProfile,
                // Remove the following line, as you don't need to initialize a new instance of Dept
                // Dept = new Dept(),
                Departments = departments
            };

            return View(viewModel);
        }
        public IActionResult ManageEmployee()
        {
            // Retrieve the current user
            var currentUser = User.Identity.Name;

            // Retrieve user profile from the database based on the current user
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);
            List<Employee> Employees = _dbcontext.Employees.ToList();
            ViewModels viewModel = new ViewModels
            {
                UserProfile = userProfile,
                // Remove the following line, as you don't need to initialize a new instance of Dept
                // Dept = new Dept(),
                Employee = Employees
            };
            // Pass the user profile to the view
            return View(viewModel);
        }
        public IActionResult ManageTask()
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
        public IActionResult TaskProgress()
        {
            // Retrieve the current user
            var currentUser = User.Identity.Name;

            // Retrieve user profile from the database based on the current user
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Pass the user profile to the view
            return View(userProfile);
        }
        public IActionResult Action()
        {
            // Fetch Task objects from your data source (e.g., database)
            var taskList = _Context.Tasks.ToList();

            return Json(taskList);
        }

        [HttpPost]
        public ActionResult ChangeTaskStatus(int id, string action)
        {
            try
            {
                var task = _Context.Tasks.FirstOrDefault(t => t.Id == id);
                if (task != null)
                {
                    if (action == "1")
                    {
                        task.TaskStatus = "thumbs-up"; // Or whatever status you want for thumbs-up
                    }
                    else if (action == "0")
                    {
                        task.TaskStatus = "thumbs-down"; // Or whatever status you want for thumbs-down
                    }

                    _Context.SaveChanges();
                    return Json(new { success = true, message = "Task status updated successfully." });
                }
                else
                {
                    return Json(new { success = false, message = "Task not found." });
                }
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = "Error: " + ex.Message });
            }
        }
        public IActionResult CompletedTask()
        {
            // Retrieve the current user
            var currentUser = User.Identity.Name;

            // Retrieve user profile from the database based on the current user
            UserProfile userProfile = _context.UserProfiles.FirstOrDefault(u => u.FullName == currentUser);

            // Pass the user profile to the view
            return View(userProfile);
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
        public async Task<IActionResult> Create(UserProfile employee)
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
                return RedirectToAction("Users", "Admin");
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
        [Route("Admin/Edit/{id}")]
        public async Task<IActionResult> Edit(int id)
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
        [Route("Admin/Edit/{id}")]
        public async Task<IActionResult> Edit(int id, UserProfile employee)
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
                return RedirectToAction("Users", "Admin");
            }
            return View(employee);
        }
    }
}
