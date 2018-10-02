using System.Collections.Generic;
using System.Linq;
using System.ComponentModel;
using GroceryList.Data.DAL;
using GroceryList.Data.Entities;

namespace GroceryListSystem.BLL
{
    [DataObject]
    public class CategoryController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Category> ListAllCategories()
        {
            using (var context = new GroceryListContext())
            {
                return context.Categories.ToList();
            }
        }
    }
}
