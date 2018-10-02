using System.Collections.Generic;
using System.Linq;
using System.ComponentModel;
using GroceryList.Data.DAL;
using GroceryList.Data.Entities;

namespace GroceryListSystem.BLL
{
    [DataObject]
    public class ProductController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Product> ListAllProducts()
        {
            using(var context = new GroceryListContext())
            {
                return context.Products.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Product> ProductsByCategory(int categoryid)
        {
            using (var context = new GroceryListContext())
            {
                var results = from product in context.Products
                              where product.CategoryID.Equals(categoryid)
                              select product;
                              
                return results.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public void AddProduct(Product data)
        {
            using(var context = new GroceryListContext())
            {
                context.Products.Add(data);
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public void UpdateProduct(Product data)
        {
            using(var context = new GroceryListContext())
            {
                var existing = context.Entry(data);
                existing.State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public void DeleteTerritory(Product data)
        {
            using (var context = new GroceryListContext())
            {
                var existing = context.Products.Find(data.ProductID);
                context.Products.Remove(existing);
                context.SaveChanges();
            }
        }

    }
}
