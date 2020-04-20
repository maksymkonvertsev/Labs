using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsLab3.AppCode
{
    public class ProductKMA
    {
        public string Name { get; set; }
        public int PlanCost { get; set; }
        public int ReportCost { get; set; }
        public double PlanComplitionPercentage
        {
            get
            {
                return ReportCost * 100 / PlanCost;
            }
            
        }
    }
}