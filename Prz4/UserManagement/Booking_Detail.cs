using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UserManagement
{
    public abstract class Booking_Detail
    {
        
        public string UserName
        {
            get;
            set;
        }

        public string StartDate
        {
            get;
            set;
        }

        public string EndDate
        {
            get;
            set;
        }

        public string From
        {
            get;
            set;
        }

        public string To
        {
            get;
            set;
        }
    }

    public class Flight_Detail: Booking_Detail
    {
        public string Direction
        {
            get;
            set;
        }
    }

    public class Bus_Detail: Booking_Detail
    {

    }
}
