package com.qsoft.case_study.persistent_layer.entity;

/**
 * Created by hung on 07/04/2014.
 */
public class OrderDetailEntity {

    private int productId;
    private int orderId;
    private int quantityOrdered;


    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getQuantityOrdered() {
        return quantityOrdered;
    }

    public void setQuantityOrdered(int quantityOrdered) {
        this.quantityOrdered = quantityOrdered;
    }
}
