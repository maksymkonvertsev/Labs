using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsLab3.AppCode;

namespace WebFormsLab3
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSourceKMA dataSourceKMA = new DataSourceKMA();
            List<ProductKMA> products = dataSourceKMA.GetProductsKMA();
            ProductsList.DataSource = products;
            ProductsList.DataBind();
        }

        protected void ProductsList_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            //e.Item.DataItem
            TotalPlanCost += Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "PlanCost"));
            TotalReportCost += Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "ReportCost"));

        }
        public double PlanComplitionPercentage
        {
            get
            {
                return TotalReportCost * 100 / TotalPlanCost;
            }

        }
        public int TotalPlanCost
        {
            get;
            set;
        }
        public int TotalReportCost
        {
            get;
            set;
        }
    }

}