package com.qsoft.case_study.persistent_layer.dao;

import com.qsoft.case_study.persistent_layer.entity.ContactEntity;
import com.qsoft.case_study.persistent_layer.entity.CustomerEntity;

import java.util.ArrayList;

/**
 * Created by hungnh on 4/8/14.
 */
public class ContactDAO {

    public static ArrayList<ContactEntity> getContactOf(CustomerEntity customer) {
        String sql = "select * from contact where customer_customer_id = ?;";

        
    }
}
