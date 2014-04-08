package com.qsoft.case_study.persistent_layer.entity;

/**
 * Created by hung on 07/04/2014.
 */
public class OrderEntity {

    private int orderId;
    private String orderCreationDate;
    private String orderUpdatedDate;
    private int customerId;


    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getOrderCreationDate() {
        return orderCreationDate;
    }

    public void setOrderCreationDate(String orderCreationDate) {
        this.orderCreationDate = orderCreationDate;
    }

    public String getOrderUpdatedDate() {
        return orderUpdatedDate;
    }

    public void setOrderUpdatedDate(String orderUpdatedDate) {
        this.orderUpdatedDate = orderUpdatedDate;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }
}
