package SneakerShop.Dao;

import org.springframework.stereotype.Repository;

import SneakerShop.Entity.BillDetail;
import SneakerShop.Entity.Bills;

@Repository
public class BillsDao extends BaseDao {

	public int AddBills(Bills bill) {
		String sql = "INSERT INTO bills (user, phone, display_name, address, total, quanty, note) VALUES (?, ?, ?, ?, ?, ?, ?)";

		return _jdbcTemplate.update(sql, bill.getUser(), bill.getPhone(), bill.getDisplay_name(), bill.getAddress(),
				bill.getTotal(), bill.getQuanty(), bill.getNote());
	}

	public long GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	};

	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("	id_product, ");
		sql.append("	id_bills, ");
		sql.append("	quanty, ");
		sql.append("	total ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	" + billDetail.getId_product() + ", ");
		sql.append("	" + billDetail.getId_bills() + ", ");
		sql.append("	" + billDetail.getQuanty() + ", ");
		sql.append("	" + billDetail.getTotal() + " ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
}
