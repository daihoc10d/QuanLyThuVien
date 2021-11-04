using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DoAn_QLTV
{
    public partial class MainForm : Form
    {

        string TenAccount = "", MKAccount = "", MaNV = "", MaCV = "";
        //public MainForm()
        //{
        //    InitializeComponent();
        //    customizeDesign();
        //}

        Themsuaxoa t = new Themsuaxoa();
        public MainForm(string name, string TenAccount, string MKAccount, string MaNV, string MaCV)
        {
            InitializeComponent();
            customizeDesign();
            labName.Text = name;
            DataTable dt = t.docdulieu("select NhanVien.TenNV from Account, NhanVien where TenAccount=N'" + labName.Text + "'and Account.MaNV=NhanVien.MaNV");
            dgvNV.DataSource = dt;
            labNV.Text = dgvNV.Rows[0].Cells[0].Value.ToString();
            this.TenAccount = TenAccount;
            this.MKAccount = MKAccount;
            this.MaNV = MaNV;
            this.MaCV = MaCV;
        }
        private void MainForm_Load(object sender, EventArgs e)
        {
        }

        private void customizeDesign()
        {
            panelSubMenuHeThong.Visible = false;
            panelSubMenuDM.Visible = false;
            panelSubMenuMT.Visible = false;
            panelSubMenuTK.Visible = false;
            panelSubMenuTKe.Visible = false;
        }

        private void hideSubMenu()
        {
            if (panelSubMenuHeThong.Visible == true)
            {
                panelSubMenuHeThong.Visible = false;
            }
            if (panelSubMenuDM.Visible == true)
            {
                panelSubMenuDM.Visible = false;
            }
            if (panelSubMenuMT.Visible == true)
            {
                panelSubMenuMT.Visible = false;
            }
            if (panelSubMenuTK.Visible == true)
            {
                panelSubMenuTK.Visible = false;
            }
            if (panelSubMenuTKe.Visible == true)
            {
                panelSubMenuTKe.Visible = false;
            }
        }

        private void showSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                hideSubMenu();
                subMenu.Visible = true;
            }
            else
            {
                subMenu.Visible = false;
            }
        }

        #region Hệ thống
        private void btnHeThong_Click(object sender, EventArgs e)
        {
            showSubMenu(panelSubMenuHeThong);
        }

        private void btnTaoTK_Click(object sender, EventArgs e)
        {
            DataTable dt = t.docdulieu("select * from Account ");

            if (MaCV == "AD"|| MaCV == "QL")
            {
                openChildForm(new FormThemTK());
            }
            else
            {
                MessageBox.Show("Bạn không có quyền tạo mới.Vui lòng liên hệ Admin !");
            }

            hideSubMenu();
        }


        private void btnDoiMK_Click(object sender, EventArgs e)
        {
            openChildForm(new FormDoiMK(labName.Text));
            hideSubMenu();
        }

        private void btnDangXuat_Click(object sender, EventArgs e)
        {
            hideSubMenu();
            this.Hide();
            FormDangNhap dn = new FormDangNhap();
            dn.Show();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {

            hideSubMenu();
            Application.Exit();
        }
        #endregion

        #region Danh mục
        private void btnDanhMuc_Click(object sender, EventArgs e)
        {
            showSubMenu(panelSubMenuDM);
        }

        private void btnDocGia_Click(object sender, EventArgs e)
        {
            openChildForm(new FormDocGia());
            hideSubMenu();
        }

        private void btnNhanVien_Click(object sender, EventArgs e)
        {
            DataTable dt = t.docdulieu("select * from Account where TenAccount=N'" + labName.Text + "'");

            openChildForm(new FormNhanVien(dt.Rows[0][0].ToString(), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString(), dt.Rows[0][3].ToString()));
            hideSubMenu();
        }

        private void btnTaiLieu_Click(object sender, EventArgs e)
        {
            openChildForm(new FormTaiLieu());
            hideSubMenu();
        }

        private void btnTheLoai_Click(object sender, EventArgs e)
        {
            openChildForm(new FormTheLoai());
            hideSubMenu();
        }

        private void btnTacGia_Click(object sender, EventArgs e)
        {
            openChildForm(new FormTacGia());
            hideSubMenu();
        }

        private void btnNXB_Click(object sender, EventArgs e)
        {
            openChildForm(new FormNXB());
            hideSubMenu();
        }
        #endregion

        #region Mượn trả
        private void btnMuonTra_Click(object sender, EventArgs e)
        {
            showSubMenu(panelSubMenuMT);
        }

        private void btnMT_Click(object sender, EventArgs e)
        {
            openChildForm(new FormMuonTra());
            hideSubMenu();
        }
        #endregion

        #region Tìm kiếm
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            showSubMenu(panelSubMenuTK);
        }

        private void btnTKTL_Click(object sender, EventArgs e)
        {
            openChildForm(new FormTKTL());
            hideSubMenu();
        }

        private void btnTKDG_Click(object sender, EventArgs e)
        {
            openChildForm(new FormTKDG());
            hideSubMenu();
        }
        #endregion

        #region Thống kê
        private void btnThongKe_Click(object sender, EventArgs e)
        {
            //if (MaCV == "AD" || MaCV == "QL")
            //{
                showSubMenu(panelSubMenuTKe);
            //}
            //else
            //{
            //    MessageBox.Show("Bạn không có quyền vào mục này.Vui lòng liên hệ Admin !");
            //}
        }              
        private void btnTKeTL_Click(object sender, EventArgs e)
        {
            if (MaCV == "AD" || MaCV == "QL")
            {
                openChildForm(new FormTKeTL());
            }
            else
            {
                MessageBox.Show("Bạn không có quyền vào mục này.Vui lòng liên hệ Admin !");
            }
            hideSubMenu();

        }

        private void btnTKeDG_Click(object sender, EventArgs e)
        {
            if (MaCV == "AD" || MaCV == "QL")
            {
                openChildForm(new FormTKeDG());
            }
            else
            {
                MessageBox.Show("Bạn không có quyền vào mục này.Vui lòng liên hệ Admin !");
            }

            hideSubMenu();
        }
        #endregion

        private void labNV_Click(object sender, EventArgs e)
        {

        }

        private void btnTroGiup_Click(object sender, EventArgs e)
        {
            //
            openChildForm(new FormHelp());
            hideSubMenu();
        }

        private Form activeForm = null;

        private void openChildForm(Form childForm)
        {
            if (activeForm != null)
            {
                activeForm.Close();
            }
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            panelChildForm.Controls.Add(childForm);
            panelChildForm.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }

    }
}
