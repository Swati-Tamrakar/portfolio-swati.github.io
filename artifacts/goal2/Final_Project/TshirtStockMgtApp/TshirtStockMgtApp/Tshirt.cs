//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TshirtStockMgtApp.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tshirt
    {
        public string TshirtID { get; set; }
        public string ShortDescription { get; set; }
        public string LongDescription { get; set; }
        public string Image { get; set; }
        public string Size { get; set; }
        public string Color { get; set; }
        public decimal UnitPrice { get; set; }
        public Nullable<int> InStock { get; set; }
    }
}
