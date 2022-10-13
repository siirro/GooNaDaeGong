package com.gndg.home.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.item.ItemDTO;
import com.gndg.home.item.ItemService;
import com.gndg.home.util.Pager;

@Controller
public class IndexController {
    @Autowired
    private ItemService itemService;
    
  //최신글
    @RequestMapping(value="/")
    public ModelAndView getNewItemList(ItemDTO itemDTO,Pager pager)throws Exception{
        ModelAndView mv = new ModelAndView();
        //최신글
        List<ItemDTO> al = itemService.getNewItemList(itemDTO);
        //인기글
        List<ItemDTO> al2 = itemService.getPopularItemList(itemDTO);
        //추천글
        List<ItemDTO> al3 = itemService.getRecommendItemList(itemDTO);
        
        mv.addObject("newlist", al);
        mv.addObject("poplist", al2);
        mv.addObject("recommendlist", al3);
        mv.setViewName("index");
        
        return mv;
    }

}
