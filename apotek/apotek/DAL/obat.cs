//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace apotek.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class obat
    {
        public obat()
        {
            this.faktur_penjualan = new HashSet<faktur_penjualan>();
            this.faktur_supply = new HashSet<faktur_supply>();
        }
    
        public string id_obat { get; set; }
        public string nama { get; set; }
        public string id_jenis { get; set; }
        public string harga { get; set; }
        public string status { get; set; }
        public string id_supplier { get; set; }
    
        public virtual ICollection<faktur_penjualan> faktur_penjualan { get; set; }
        public virtual ICollection<faktur_supply> faktur_supply { get; set; }
        public virtual jeni jeni { get; set; }
        public virtual supplier supplier { get; set; }
    }
}
