using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserManagement;
using System.Data.SqlClient;
using UserManagement.App_Code;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Configuration;
using System.Net.Security;
using System.Net;
using System.IO;
using Newtonsoft.Json;


namespace Testing_In_Console
{
    class Response
    {
        public int status { get; set; }
        public string result { get; set; }
    }

    class Program
    {
        static void Main(string[] args)
        {
                      

            string postData = "username="+"Rajan"+"&password="+"Rajanss1";
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:59530/api/Home/GetInfo?");

            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

            HttpResponseMessage response = client.GetAsync("http://localhost:59530/api/Home/GetInfo?" + postData).Result;
            

            if (response.IsSuccessStatusCode)
            {
                var result = response.Content.ReadAsStringAsync().Result;
                Console.WriteLine(result);
               Response rs = JsonConvert.DeserializeObject<Response>(result);
               
                Console.WriteLine(rs.status);

                
            }
            else
            {
                Console.WriteLine("error");
            }
            /*
            Flight_Detail flight = new Flight_Detail();
            flight.UserName = "Ramesh";
            flight.StartDate = "10-24-2019";
            flight.EndDate = "10-25-2019";
            flight.From = "Dallas";
            flight.To = "New York";

            Bus_Detail bus = new Bus_Detail();
            bus.UserName = "Harka";
            bus.StartDate = "11-22-2019";
            bus.EndDate = "11-26-2019";
            bus.From = "Mexico";
            bus.To = "Quada";


            Console.WriteLine("The person flying is {0} and form {1} to {2} and the location is {3} to {4}", flight.UserName, flight.StartDate, flight.EndDate, flight.From, flight.To);

            Console.WriteLine("The person riding is {0} and form {1} to {2} and the location is {3} to {4}", bus.UserName, bus.StartDate, bus.EndDate, bus.From, bus.To);
            */
            Console.ReadLine();


        }
    }
}
