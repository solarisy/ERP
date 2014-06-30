package com.wismay.erp.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wismay.erp.entity.Goods;



/**
 * 通过@MapperScannerConfigurer扫描目录中的所有接口, 动态在Spring Context中生成实现.
 * 方法名称必须与Mapper.xml中保持一致.
 * 
 * @author peter
 */
@MyBatisRepository
public interface GoodsDao {
	
	/**
	 * 分页查询
	 * @param overtime
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	List<Goods> searchPage(@Param("goods")Goods goods,@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	/**
	 * 分页查询总记录数
	 * @param overtime
	 * @return
	 */
	Long searchCount(Goods goods);
	
	Goods get(Long id);
	
	void add(Goods goods);
	
	void update(Goods goods);
	
	void softDelete(Long id);
	

}
