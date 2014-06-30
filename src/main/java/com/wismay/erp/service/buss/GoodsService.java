package com.wismay.erp.service.buss;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.wismay.erp.comm.MyPage;
import com.wismay.erp.entity.Goods;
import com.wismay.erp.repository.GoodsDao;

@Component
public class GoodsService {
	@Autowired
	private GoodsDao goodsDao;

	/**
	 * 根据Id查询
	 * 
	 * @param id
	 * @return Goods
	 */
	public Goods get(Long id) {
		return goodsDao.get(id);
	}

	/**
	 * 分页条件查询
	 * 
	 * @return MyPage<Goods>
	 */
	public MyPage<Goods> search(Goods goods, MyPage<Goods> myPage) {

		Long total = goodsDao.searchCount(goods);
		myPage.setTotalElements(total);
		List<Goods> content = goodsDao.searchPage(goods, myPage.getPageStart(), myPage.getSize());
		myPage.setContent(content);

		return myPage;
	}

	/**
	 * 新增
	 * 
	 * @param entity
	 */
	@Transactional
	public void add(Goods entity) {
		goodsDao.add(entity);
	}

	/**
	 * 更新
	 * 
	 * @param entity
	 */
	@Transactional
	public void update(Goods entity) {
		goodsDao.update(entity);
	}

	/**
	 * 软删除
	 * 
	 * @param id
	 */
	@Transactional
	public void softDelete(Long id) {
		goodsDao.softDelete(id);
	}

}
