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
    
    public partial class faktur_supply
    {
        public int id { get; set; }
        public string no_faktur { get; set; }
        public string id_obat { get; set; }
        public Nullable<System.DateTime> tanggal { get; set; }
        public string id_supplier { get; set; }
        public string id_karyawan { get; set; }
        public string total_bayar { get; set; }
        public string jumlah_obat { get; set; }
    
        public virtual karyawan karyawan { get; set; }
        public virtual obat obat { get; set; }
        public virtual supplier supplier { get; set; }
    }
}
