using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsLab3.AppCode
{
    public class DataSourceKMA
    {
        public List<ProductKMA> GetProductsKMA()
        {
            ProductKMA product1 = new ProductKMA();
            product1.Name = "Пальто шерстяне";
            product1.PlanCost = 6070;
            product1.ReportCost = 6180;

            ProductKMA product2 = new ProductKMA();
            product2.Name = "Костюм шерстяний";
            product2.PlanCost = 5023;
            product2.ReportCost = 5225;

            ProductKMA product3 = new ProductKMA();
            product3.Name = "Плаття шовкове";
            product3.PlanCost = 3800;
            product3.ReportCost = 4050;

            ProductKMA product4 = new ProductKMA();
            product4.Name = "Плаття х/б";
            product4.PlanCost = 1620;
            product4.ReportCost = 3500;

            ProductKMA product5 = new ProductKMA();
            product5.Name = "Сорочка чол. х/б";
            product5.PlanCost = 6477;
            product5.ReportCost = 6200;

            List<ProductKMA> products = new List<ProductKMA> { };
            products.Add(product1);
            products.Add(product2);
            return products;

        }

    }
}