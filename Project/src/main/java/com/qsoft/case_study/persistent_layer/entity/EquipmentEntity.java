package com.qsoft.case_study.persistent_layer.entity;

/**
 * Created by hung on 07/04/2014.
 */
public class EquipmentEntity {

    private int customerId;
    private int productId;
    private int equipmentId;


    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getEquipmentId() {
        return equipmentId;
    }

    public void setEquipmentId(int equipmentId) {
        this.equipmentId = equipmentId;
    }
}
