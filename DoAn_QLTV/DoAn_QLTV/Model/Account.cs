namespace DoAn_QLTV.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Account")]
    public partial class Account
    {
        [Key]
        [StringLength(20)]
        public string TenAccount { get; set; }

        [Required]
        [StringLength(10)]
        public string MKAccount { get; set; }

        [Required]
        [StringLength(10)]
        public string MaNV { get; set; }

        [Required]
        [StringLength(10)]
        public string MaCV { get; set; }

        public virtual Chucvu Chucvu { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}
