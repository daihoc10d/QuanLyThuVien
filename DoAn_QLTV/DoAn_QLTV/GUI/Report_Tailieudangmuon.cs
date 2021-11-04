﻿using System;
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
    public partial class Report_Tailieudangmuon : Form
    {
        ModelQLTV dbcontext;
        public Report_Tailieudangmuon()
        {
            dbcontext = new ModelQLTV();
            InitializeComponent();
        }

        private void Report_Tailieu_Load(object sender, EventArgs e)
        {

            this.reportViewer1.LocalReport.ReportPath = "Report_Tailieudangmuon.rdlc";
            var reportDataSource = new ReportDataSource("DataSet_Tailieudangmuon",
                ConvertTailieu(dbcontext.CTPhieuMuons.ToList())); //đúng tên dataset trong thiết kế 
            this.reportViewer1.LocalReport.DataSources.Clear();  //clear  
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource);
            this.reportViewer1.RefreshReport();
        }
        public List<Class_rpTailieu> ConvertTailieu(List<CTPhieuMuon>cTPhieuMuons)
        {
            List<Class_rpTailieu> TLList = new List<Class_rpTailieu>();
            for (int i = 0; i < cTPhieuMuons.Count; i++)
            {
                Class_rpTailieu NV = new Class_rpTailieu();
                NV.Matailieu = cTPhieuMuons[i].MaTaiLieu;
                NV.Tentailieu = cTPhieuMuons[i].TaiLieu.TenTaiLieu;
                NV.NamXB = (int)cTPhieuMuons[i].TaiLieu.NamXB;
                NV.Theloai = cTPhieuMuons[i].TaiLieu.TheLoai.TenTheLoai;
                NV.Tacgia = cTPhieuMuons[i].TaiLieu.TacGia.TenTG;
                NV.NXB = cTPhieuMuons[i].TaiLieu.NhaXuatBan.TenNXB;
                TLList.Add(NV);

            }
            return TLList;
        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {

        }
    }
}
