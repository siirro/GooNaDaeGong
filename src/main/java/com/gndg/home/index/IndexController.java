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
        List<ItemDTO> al2 = itemService.getPopularItemList(itemDTO,pager);
        
        for(int i=0; i<al.size(); i++) {
            System.out.println(i+"번 째 "+al.get(i).getItem_title());
            System.out.println(i+"번 째 "+al.get(i).getItem_price());
            
        }
        for(int a=0; a<al2.size(); a++) {
            System.out.println(a+"번 째 인기글"+ al2.get(a).getItem_title());
            System.out.println(a+"번 째 인기글"+ al2.get(a).getItem_price());
        }
        
        mv.addObject("newlist", al);
        mv.addObject("poplist", al2);
        mv.setViewName("index");
        
        return mv;
    }

}
