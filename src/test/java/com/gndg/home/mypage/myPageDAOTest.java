package com.gndg.home.mypage;

import static org.junit.Assert.assertNotEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;
import com.gndg.home.dgItem.DgItemReviewDTO;
import com.gndg.home.util.MypagePager;

public class myPageDAOTest extends AbstractTest{

    @Autowired
    private MypageDAO mypageDAO;
    
    @Test
    public void Reviewtest()throws Exception {
//        DgItemReviewDTO dgItemReviewDTO = new DgItemReviewDTO();
        MypagePager mypagePager = new MypagePager();
        mypagePager.setUser_id("22");
        
        List<DgItemReviewDTO> al = mypageDAO.getMyReview(mypagePager);
        
        assertNotEquals(0, al.size());
    }

}
