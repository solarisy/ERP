package com.wismay.erp.comm;

import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

public class MyPage<T> implements Page<T> {
	private List<T> content;

	private Long totalElements;

	private int size;

	private int page;

	/**
	 * 
	 * @param size
	 *            页大小
	 * @param page
	 *            页号（第几页）
	 */
	public MyPage(int size, int page) {
		super();
		this.size = size;
		this.page = page;
	}

	/**
	 * 
	 * @param content
	 * @param totalElements
	 *            总的记录数量
	 * @param size
	 *            页大小
	 * @param page
	 *            页号（第几页）
	 */
	MyPage(List<T> content, Long totalElements, int size, int page) {
		super();
		this.content = content;
		this.setTotalElements(totalElements);
		this.size = size <= 0 ? 10 : size;// 小于0默认为10
		this.page = page;
	}

	/**
	 * Mysql Limit 中的第一个参数。
	 * 
	 * @return
	 */
	public int getPageStart() {
		return getNumber() * getSize();
	}

	// 当前页=getNumber+1
	@Override
	public int getNumber() {
		return (page - 1) < 0 ? 0 : page - 1;
	}

	// 页大小（即：一页最多有多少条数据）
	@Override
	public int getSize() {
		return size;
	}

	// 总页数
	@Override
	public int getTotalPages() {
		int t = (int) (totalElements % size == 0 ? totalElements / size
				: totalElements / size + 1);
		return t;
	}

	// 当前页的记录数,比如页大小为10，但是最后一页可能只有一条数据。
	@Override
	public int getNumberOfElements() {
		return content.size();
	}

	// 记录的总数量
	@Override
	public long getTotalElements() {
		return totalElements;
	}

	@Override
	public boolean hasPreviousPage() {
		return page > 1;
	}

	@Override
	public boolean isFirstPage() {
		return page == 1;
	}

	@Override
	public boolean hasNextPage() {
		return page < getTotalPages();
	}

	@Override
	public boolean isLastPage() {
		return page == getTotalPages();
	}

	@Override
	public Pageable nextPageable() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pageable previousPageable() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Iterator<T> iterator() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> getContent() {
		return content;
	}

	@Override
	public boolean hasContent() {
		// TODO Auto-generated method stub
		return content.size() > 0;
	}

	@Override
	public Sort getSort() {
		// TODO Auto-generated method stub
		return null;
	}

	public void setTotalElements(Long totalElements) {
		this.totalElements = totalElements;
	}

	public void setContent(List<T> content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
