using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Model.Entity;
using TTVL_DLL;

namespace TTVL.Model
{
    public class LoginModel
    {
        public static bool Login(string TaiKhoan, string MatKhau)
        {
            using (var db = new MasterDataContext())
            {
                var QueryID = db.NhanViens.SingleOrDefault(p => p.TaiKhoan == TaiKhoan);

                if (QueryID == null)
                {
                    DialogBox.Error("[Tài khoản] hoặc [Mật khẩu] không đúng, xin vui lòng kiểm tra lại.");
                    return false;
                }
                else
                {
                    var QueryPass = db.NhanViens.SingleOrDefault(p => p.TaiKhoan == TaiKhoan && p.MatKhau == MyCodeTTVL.MaHoaMd5(TaiKhoan + MatKhau + "P@ssword09113van"));
                    if (QueryPass == null)
                    {
                        DialogBox.Error("[Tài khoản] hoặc [Mật khẩu] không đúng, xin vui lòng kiểm tra lại.");
                        return false;
                    }
                    else
                    {
                        if (QueryID.Lock == true)
                        {
                            DialogBox.Error("[Tài khoản] này hiện đang bị khóa, xin vui lòng liên hệ Quản Trị Viên để biết thêm. Xin cám ơn.");
                            return false;
                        }
                        E_NhanVien.TaiKhoan = QueryPass.TaiKhoan;
                        E_NhanVien.HoVaTen = QueryPass.HoVaTen;
                        E_NhanVien.ChucVu = E_ChucVu.OneNameChucVu(Convert.ToInt32(QueryPass.MaChucVu));
                        E_NhanVien.MatKhau = QueryPass.MatKhau;
                        return true;
                    }
                }
            }
        }
    }
}
