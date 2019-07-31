using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Data;

namespace UserManagement
{ 
    public class User

    {
        public User()
        {
            
        }

       

        public string SaveUserInfo(UserBE obj)
        {

            XmlDocument xDoc = new XmlDocument();
            xDoc.Load(obj.FilePath);

            XmlNode xList = xDoc.ChildNodes[1].ChildNodes[0];
            XmlNode Name = xDoc.CreateNode(XmlNodeType.Element, "Name", null);
            Name.InnerText = obj.Name;
            xList.AppendChild(Name);


            XmlNode Email = xDoc.CreateNode(XmlNodeType.Element, "Email", null);
            Email.InnerText = obj.Email;
            xList.AppendChild(Email);

            XmlNode Age = xDoc.CreateNode(XmlNodeType.Element, "Age", null);
            Age.InnerText = obj.Age.ToString();
            xList.AppendChild(Age);

            xDoc.Save(obj.FilePath);
            // xDoc.DocumentElement.AppendChild()

            // xDoc.DocumentElement.AppendChild(xList);


            return "User Saved Successfully";
        }
    }
}
