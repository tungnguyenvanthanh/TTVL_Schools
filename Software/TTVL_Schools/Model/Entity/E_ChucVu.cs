using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Entity
{
    public static class E_ChucVu
    {
        public static string TenChucVu { get; set; }

        public static string OneChucVu(int MaChucVu)
        {
            using (var db = new MasterDataContext())
            {
                var query = db.ChucVus.SingleOrDefault(p => p.MaChucVu == MaChucVu);

                if (query != null)
                {
                    return TenChucVu = query.TenChucVu;
                }
                else
                {
                    return "";
                }
            }
        }
    }
}
