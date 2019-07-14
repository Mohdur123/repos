using Myshop.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Caching;
using System.Text;
using System.Threading.Tasks;

namespace Myshop.DataAccess.InMemory
{
    public class InMemoryRepository<T> where T : BaseEntity
    {
        ObjectCache cache = MemoryCache.Default;
        List<T> items;
        string className;

        public InMemoryRepository() {
            className = typeof(T).Name;
            items = cache[className] as List<T>;
            if (items == null)
            {
                items = new List<T>();
            }
        }

        public void Commit()
        {
            cache[className] = items;

        }

        public void Add(T t)
        {
            items.Add(t);
        }

        public void Update(T t)
        {
            T toUpdate = items.Find(i => i.Id == t.Id);

            if (toUpdate != null)
            {
                toUpdate = t;
            }
            else
            {
                throw new Exception(className + "Not found");
            }
        }

        public T Find(string id)
        {
            T toFind = items.Find(i => i.Id == id);

            if (toFind != null)
            {
                return toFind;
            }
            else
            {
                throw new Exception(className + "Not Found");
            }
        }

        public IQueryable<T> CollectionOfProducts()
        {
            return items.AsQueryable();
        }

        public void Delete(string Id)
        {
            T toDelete = items.Find(i => i.Id == Id);
            if (toDelete != null)
            {
                items.Remove(toDelete);
            }
            else
            {
                throw new Exception(className + "Not Found!");
            }
        }

       
    }
}
