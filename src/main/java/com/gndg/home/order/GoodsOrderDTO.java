package com.gndg.home.order;

public class GoodsOrderDTO {
    private Long go_num;
    private Long item_num;
    private Long merchant_uid;
    private Long go_amount;
    
    public Long getGo_num() {
        return go_num;
    }
    public void setGo_num(Long go_num) {
        this.go_num = go_num;
    }
    public Long getItem_num() {
        return item_num;
    }
    public void setItem_num(Long item_num) {
        this.item_num = item_num;
    }
    public Long getMerchant_uid() {
        return merchant_uid;
    }
    public void setMerchant_uid(Long merchant_uid) {
        this.merchant_uid = merchant_uid;
    }
    public Long getGo_amount() {
        return go_amount;
    }
    public void setGo_amount(Long go_amount) {
        this.go_amount = go_amount;
    }
}
