package com.gndg.home.orders;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.cart.CartDTO;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.order.OrderDTO;
import com.gndg.home.pay.PayDTO;
import com.gndg.home.util.OrderPager;

@Repository
public class OrdersDAO {
	
	@Autowired
	private SqlSession sqlsession;
	private final String NAMESPACE = "com.gndg.home.orders.OrdersDAO.";
	
	public int updateStatus(OrdersDTO ordersDTO)throws Exception{
		return sqlsession.update(NAMESPACE+"updateStatus", ordersDTO);
	}
	
	public OrdersDTO getDetail(OrdersDTO ordersDTO)throws Exception{
		return sqlsession.selectOne(NAMESPACE+"getDetail", ordersDTO);
	}
	
	public int addGoodsOrder(GoodsOrdersDTO goodsorderDTO)throws Exception{
		return sqlsession.insert(NAMESPACE+"addGoodsOrders", goodsorderDTO);
	}
	
	public List<CartDTO> getOrderItem(MemberDTO memberDTO)throws Exception{
		return sqlsession.selectList(NAMESPACE+"getOrderItem", memberDTO);
	}
	
	public int addOrders(OrdersDTO ordersDTO)throws Exception{
		return sqlsession.insert(NAMESPACE+"addOrders", ordersDTO);
	}
	
	public List<OrdersDTO> getList(OrderPager orderPager, OrdersDTO ordersDTO)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", orderPager.getStartRow());
		map.put("lastRow", orderPager.getLastRow());
		map.put("kind", orderPager.getKind());
		map.put("search", orderPager.getSearch());
		
		if(orderPager.getSearchdate1()!=null) {
		map.put("searchdate1", orderPager.getSearchdate1());
		map.put("searchdate2", orderPager.getSearchdate2());
		}

		return sqlsession.selectList(NAMESPACE+"getList", map);
	}
	
	public Long getListCount(OrderPager orderPager, OrdersDTO ordersDTO)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("kind", orderPager.getKind());
		map.put("search", orderPager.getSearch());
		
		if(orderPager.getSearchdate1()!=null) {
			map.put("searchdate1", orderPager.getSearchdate1());
			map.put("searchdate2", orderPager.getSearchdate2());


		}
		
		
		return sqlsession.selectOne(NAMESPACE+"getListCount", map);
	}
	
	public Long countNewOrder()throws Exception{
		return sqlsession.selectOne(NAMESPACE+"countNewOrder", NAMESPACE);
	}
	
	public Long countNewCancel()throws Exception{
		return sqlsession.selectOne(NAMESPACE+"countNewCancel", NAMESPACE);
	}
	
	public Long countNewExchange()throws Exception{
		return sqlsession.selectOne(NAMESPACE+"countNewExchange", NAMESPACE);
	}

	public Long countNewRefund()throws Exception{
		return sqlsession.selectOne(NAMESPACE+"countNewRefund", NAMESPACE);
	}
	
	public Long countNewQna()throws Exception{
		return sqlsession.selectOne(NAMESPACE+"countNewQna", NAMESPACE);
	}


}
