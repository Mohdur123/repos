using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyMVCApplication.Models
{
    [MetadataType(typeof(TableMetaData))]
    public partial class Table
    {
        public string ConfirmPassword { get; set; }
    }


    public class TableMetaData
    {
        [Display(Name = "First Name")]
        [Required(AllowEmptyStrings =false, ErrorMessage ="First Name field is required!")]
        public string FirstName { get; set; }

        [Display(Name= "Last Name")]
        [Required(AllowEmptyStrings =false, ErrorMessage ="Last Name field is required")]
        public string LastName { get; set; }

        [Display(Name = "Email Address")]
        [Required(AllowEmptyStrings =false, ErrorMessage ="Email Address field is required")]
        [DataType(DataType.EmailAddress)]
        public string EmailID { get; set; }

        [Display(Name = "Date of Birth")]
        [DataType(DataType.DateTime)]
        [DisplayFormat(ApplyFormatInEditMode =true,  DataFormatString ="{0:mm/dd/yyyy}")]
        public string DateOfBirth { get; set; }

        [Display(Name ="Password")]
        [Required(AllowEmptyStrings =false, ErrorMessage ="Passord field is mandatory")]
        [MinLength(6, ErrorMessage ="The Password should be at least 6 characters")]
        public string Password { get; set; }


        [Display(Name = "Confirm Password")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "Confirm Passord field is mandatory")]
        [Compare("Password", ErrorMessage = "The Password should be at least 6 characters")]
        public string ConfirmPassword { get; set; }



    }
}