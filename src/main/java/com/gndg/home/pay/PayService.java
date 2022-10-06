package com.gndg.home.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PayService {
	
	@Autowired
	private PayDAO payDAO;

	public int addPay(PayDTO payDTO)throws Exception{
		return payDAO.addPay(payDTO);
	}
}
