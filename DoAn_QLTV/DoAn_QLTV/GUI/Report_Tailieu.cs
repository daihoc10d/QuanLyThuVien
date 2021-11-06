using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DoAn_QLTV.GUI;
using DoAn_QLTV;
using DoAn_QLTV.Model;
using Microsoft.Reporting.WinForms;
using DoAn_QLTV.Class;

namespace DoAn_QLTV.GUI
{
    public partial class Report_Tailieu : Form
    {
        Model1 dbcontext;
        public Report_Tailieu()
        {
            dbcontext = new Model1();

            InitializeComponent();
        }

        private void Report_Tailieu_Load(object sender, EventArgs e)
        {
            this.reportViewer1.LocalReport.ReportPath = "Report_Tailieu.rdlc";
            var reportDataSource = new ReportDataSource("DataSet1",
                ConvertNhanvien(dbcontext.TaiLieux.ToList())); //đúng tên dataset trong thiết kế 
            this.reportViewer1.LocalReport.DataSources.Clear();  //clear  
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource);
            this.reportViewer1.RefreshReport();
        }
        public List<Class_rpTailieu> ConvertNhanvien(List<TaiLieu> taiLieus)
        {
            List<Class_rpTailieu> TLList = new List<Class_rpTailieu>();
            for (int i = 0; i < taiLieus.Count; i++)
            {
                Class_rpTailieu NV = new Class_rpTailieu();
                NV.Matailieu = taiLieus[i].MaTaiLieu;
                NV.Tentailieu = taiLieus[i].TenTaiLieu;
                NV.NamXB = (int)taiLieus[i].NamXB;
                NV.Tacgia = taiLieus[i].TacGia.TenTG;
                NV.Theloai = taiLieus[i].TheLoai.TenTheLoai;
                NV.NXB = taiLieus[i].NhaXuatBan.TenNXB;
                TLList.Add(NV);

            }
            return TLList;
        }
    }
}
