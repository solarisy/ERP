package com.wismay.erp.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wismay.erp.entity.User;



/**
 * 通过@MapperScannerConfigurer扫描目录中的所有接口, 动态在Spring Context中生成实现.
 * 方法名称必须与Mapper.xml中保持一致.
 * 
 * @author peter
 */
@MyBatisRepository
public interface UserDao {
	
	User findByLoginName(String loginName);
	
	List<User> getAll();
	
	/**
	 * 分页查询
	 * @param overtime
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	List<User> searchPage(@Param("user")User user,@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	/**
	 * 分页查询总记录数
	 * @param overtime
	 * @return
	 */
	Long searchCount(User user);
	
	User get(Long id);
	
	void save(User user);
	
	void update(User user);
	
	void delete(Long id);
	

}
