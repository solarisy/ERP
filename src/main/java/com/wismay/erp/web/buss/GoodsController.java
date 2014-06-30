package com.wismay.erp.web.buss;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Maps;
import com.wismay.erp.comm.MyPage;
import com.wismay.erp.entity.Goods;
import com.wismay.erp.service.buss.GoodsService;

/**
 * 加班申请
 */
@Controller
@RequestMapping(value = "/goods")
public class GoodsController {
	private static Logger logger = LoggerFactory.getLogger(GoodsController.class);

	private static final String PAGE_SIZE = "20";

	@Autowired
	private GoodsService goodsService;

	@RequestMapping()
	public String list(Model model, Goods goods, @RequestParam(value = "pageSize", defaultValue = PAGE_SIZE) int pageSize,
			@RequestParam(value = "pageNumber", defaultValue = "1") int pageNumber, ServletRequest request) {
		try {
			MyPage<Goods> contents = new MyPage<Goods>(pageSize, pageNumber);
			contents = goodsService.search(goods, contents);

			model.addAttribute("contents", contents);
		} catch (Exception e) {
			logger.error("",e);
		}

		return "goods/goods-list";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String create(Goods goods, RedirectAttributes redirectAttributes) {

		try {
			goodsService.add(goods);
			redirectAttributes.addFlashAttribute("message", "创建成功");
		} catch (Exception e) {
			logger.error("",e);
			redirectAttributes.addFlashAttribute("message", "创建失败");
		}
		
		return "redirect:/goods/";
	}

	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("overtime", goodsService.get(id));
		model.addAttribute("action", "update");
		return "goods/goods-form";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("goods") Goods goods, RedirectAttributes redirectAttributes) {
		try {
			goodsService.update(goods);
			redirectAttributes.addFlashAttribute("message", "更新成功");
		} catch (Exception e) {
			logger.error("",e);
			redirectAttributes.addFlashAttribute("message", "更新失败");
		}
		return "redirect:/goods/";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		try {
			goodsService.softDelete(id);
			redirectAttributes.addFlashAttribute("message", "删除成功");
		} catch (Exception e) {
			logger.error("",e);
			redirectAttributes.addFlashAttribute("message", "删除失败");
		}
		return "redirect:/goods/";
	}

}
