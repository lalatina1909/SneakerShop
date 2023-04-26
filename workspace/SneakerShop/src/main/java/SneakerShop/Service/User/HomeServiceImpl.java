package SneakerShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SneakerShop.Dao.SlidesDao;
import SneakerShop.Dto.ProductsDto;
import SneakerShop.Entity.Categorys;
import SneakerShop.Entity.Menus;
import SneakerShop.Entity.Slides;
import SneakerShop.Dao.CategorysDao;
import SneakerShop.Dao.MenuDao;
import SneakerShop.Dao.ProductsDao;
@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductsDao productsDao;
	
	public List<Slides> GetDataSlide() {	
		return slidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {
		return categorysDao.GetDataCategorys();
	}
	
	public List<Menus> GetDataMenus() {
		return menuDao.GetDataMenus();
	}

	public List<ProductsDto> GetDataProducts() {
			List<ProductsDto> listProducts = productsDao.GetDataProducts(0);
		return listProducts;
	}
}
