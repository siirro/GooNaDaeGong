package com.gndg.home.cancel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.util.OrderPager;

@Service
public class CancelService {
	
	@Autowired
	private CancelDAO cancelDAO;
	
	public Long ableCS(OrdersDTO ordersDTO)throws Exception{
		return cancelDAO.ableCS(ordersDTO);
	}
	
	public int addRefund(RefundDTO refundDTO)throws Exception{
		return cancelDAO.addRefund(refundDTO);
	}
	
	public List<OrdersDTO> getListR(OrderPager orderPager)throws Exception{
		Long totalCount = cancelDAO.getListCountR(orderPager);
		orderPager.getNum(totalCount);
		orderPager.getRowNum();
		List<OrdersDTO> ar = cancelDAO.getListR(orderPager);
		return ar;
	}
	
	public RefundDTO getDetailR(RefundDTO refundDTO)throws Exception{
		return cancelDAO.getDetailR(refundDTO);
	}
	
	
	
	
	
	
	
	
	
	
	
	public int addExchange(ExchangeDTO exchangeDTO)throws Exception{
		return cancelDAO.addExchange(exchangeDTO);
	}
	
	public List<OrdersDTO> getListE(OrderPager orderPager)throws Exception{
		Long totalCount = cancelDAO.getListCountE(orderPager);
		orderPager.getNum(totalCount);
		orderPager.getRowNum();
		List<OrdersDTO> ar = cancelDAO.getListE(orderPager);
		return ar;
	}
	
	public ExchangeDTO getDetailE(ExchangeDTO exchangeDTO)throws Exception{
		return cancelDAO.getDetailE(exchangeDTO);
	}
	
	
	
	
	
	
	
	
	
	
	
	public int addCancel(CancelDTO cancelDTO)throws Exception{
		return cancelDAO.addCancel(cancelDTO);
	}
	
	public List<OrdersDTO> getList(OrderPager orderPager)throws Exception{
		Long totalCount = cancelDAO.getListCount(orderPager);
		orderPager.getNum(totalCount);
		orderPager.getRowNum();
		List<OrdersDTO> ar = cancelDAO.getList(orderPager);
		return ar;
	}
	
	public CancelDTO getDetail(CancelDTO cancelDTO)throws Exception{
		return cancelDAO.getDetail(cancelDTO);
	}

}
