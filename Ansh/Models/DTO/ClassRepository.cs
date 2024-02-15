using Dapper;
using Microsoft.Data.SqlClient;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace Ansh.Models.DTO
{
    public class ClassRepository
    {
        public List<Class> GetTasksForUser(string fullName)
        {
            using (var connection = new SqlConnection("Data Source=DESKTOP-96C5IE4;Initial Catalog=New;User ID=sa;Password=Ansh;Encrypt=True;Trust Server Certificate=True"))
            {
                try
                {
                    connection.Open();

                    // Define output parameters
                    var parameters = new DynamicParameters();
                    parameters.Add("@FullName", fullName);
                    parameters.Add("@InProgressTaskCount", dbType: DbType.Int32, direction: ParameterDirection.Output);
                    parameters.Add("@CompletedTaskCount", dbType: DbType.Int32, direction: ParameterDirection.Output);
                    parameters.Add("@TotalTaskCount", dbType: DbType.Int32, direction: ParameterDirection.Output);

                    // Call the stored procedure using Dapper
                    var classs = connection.Query<Class>("GetTasksForEmployee", parameters,
                                                      commandType: CommandType.StoredProcedure).ToList();

                    // Retrieve the output parameters after executing the stored procedure
                    int inProgressTaskCount = parameters.Get<int>("@InProgressTaskCount");
                    int completedTaskCount = parameters.Get<int>("@CompletedTaskCount");
                    int totalTaskCount = parameters.Get<int>("@TotalTaskCount");

                    // Do something with the output parameters if needed

                    return classs;
                }
                catch (SqlException ex)
                {
                    // Handle or log the SQL exception
                    throw; // Re-throw the exception after handling/logging if necessary
                }
            }
        }
        public List<Class> GetTasks(string fullName, out int inProgressTaskCount, out int completedTaskCount, out int totalTaskCount)
        {
            using (var connection = new SqlConnection("Data Source=DESKTOP-96C5IE4;Initial Catalog=New;User ID=sa;Password=Ansh;Encrypt=True;Trust Server Certificate=True"))
            {
                try
                {
                    connection.Open();

                    // Define input and output parameters
                    var parameters = new DynamicParameters();
                    parameters.Add("@FullName", fullName);
                    parameters.Add("@InProgressTaskCount", dbType: DbType.Int32, direction: ParameterDirection.Output);
                    parameters.Add("@CompletedTaskCount", dbType: DbType.Int32, direction: ParameterDirection.Output);
                    parameters.Add("@TotalTaskCount", dbType: DbType.Int32, direction: ParameterDirection.Output);

                    // Call the stored procedure using Dapper
                    var classs = connection.Query<Class>("GetTasksForEmployee", parameters,
                                                      commandType: CommandType.StoredProcedure).ToList();

                    // Retrieve the output parameters after executing the stored procedure
                    inProgressTaskCount = parameters.Get<int>("@InProgressTaskCount");
                    completedTaskCount = parameters.Get<int>("@CompletedTaskCount");
                    totalTaskCount = parameters.Get<int>("@TotalTaskCount");

                    // Do something with the output parameters if needed

                    return classs;
                }
                catch (SqlException ex)
                {
                    // Handle or log the SQL exception
                    throw; // Re-throw the exception after handling/logging if necessary
                }
            }
        }
    }
}
