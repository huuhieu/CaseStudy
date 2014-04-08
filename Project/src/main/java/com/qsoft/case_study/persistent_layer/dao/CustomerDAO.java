package com.qsoft.case_study.persistent_layer.dao;

import com.qsoft.case_study.persistent_layer.entity.CustomerEntity;
import com.qsoft.case_study.utility.DatabaseAccessUtility;

import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by hung on 07/04/2014.
 */
public class CustomerDAO {

    public static ArrayList<CustomerEntity> getAllCustomer() {

        Connection connection = DatabaseAccessUtility.getConnection();

        String sql = "SELECT * FROM customer;";

        ArrayList<CustomerEntity> customerEntities = new ArrayList<CustomerEntity>();

        try {
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);

            CustomerEntity customer;
            while (resultSet.next()) {
                customer = new CustomerEntity();
                customer.setCustomerId(resultSet.getInt("customer_id"));
                customer.setCustomerName(resultSet.getString("customer_name"));
                customer.setCustomerAddress(resultSet.getString("customer_address"));
                customer.setCustomerPhone(resultSet.getString("customer_phone"));
                customer.setCustomerFax(resultSet.getString("customer_fax"));

                customerEntities.add(customer);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseAccessUtility.closeConnection(connection);
        }

        return customerEntities;

    }
}
