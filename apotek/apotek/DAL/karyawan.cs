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
    
    public partial class karyawan
    {
        public karyawan()
        {
            this.faktur_penjualan = new HashSet<faktur_penjualan>();
            this.faktur_supply = new HashSet<faktur_supply>();
        }
    
        public string id_karyawan { get; set; }
        public string nama { get; set; }
        public string alamat { get; set; }
        public string telp { get; set; }
        public string username { get; set; }
        public string password { get; set; }
    
        public virtual ICollection<faktur_penjualan> faktur_penjualan { get; set; }
        public virtual ICollection<faktur_supply> faktur_supply { get; set; }
    }
}