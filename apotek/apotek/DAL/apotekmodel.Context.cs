﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class apotek_dbEntities : DbContext
    {
        public apotek_dbEntities()
            : base("name=apotek_dbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<faktur_penjualan> faktur_penjualan { get; set; }
        public DbSet<faktur_supply> faktur_supply { get; set; }
        public DbSet<jeni> jenis { get; set; }
        public DbSet<karyawan> karyawans { get; set; }
        public DbSet<obat> obats { get; set; }
        public DbSet<pelanggan> pelanggans { get; set; }
        public DbSet<supplier> suppliers { get; set; }
    }
}
