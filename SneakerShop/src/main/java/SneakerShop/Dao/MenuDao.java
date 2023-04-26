package SneakerShop.Dao;

import java.util.List;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import SneakerShop.Entity.MapperMenus;
import SneakerShop.Entity.Menus;

@Repository
public class MenuDao extends BaseDao {
	public List<Menus> GetDataMenus(){
		List<Menus> list = new ArrayList<Menus>();
		String sql = "SELECT * FROM menus";
		list = _jdbcTemplate.query(sql, new MapperMenus());
		return list;
	}
}
