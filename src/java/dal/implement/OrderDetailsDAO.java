/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import entity.OrderDetails;
import entity.Products;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author yeuda
 */
public class OrderDetailsDAO extends GenericDAO<OrderDetails> {

    public List<OrderDetails> findById(OrderDetails odetail) {
        String sql = "select * from OrderDetail where orderId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", odetail.getOrderId());
        List<OrderDetails> list = queryGenericDAO(OrderDetails.class, sql, parameterMap);     
        return list;

    }

    @Override
    public List<OrderDetails> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insert(OrderDetails t) {
        String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                + "           ([quantity]\n"
                + "           ,[productId]\n"
                + "           ,[orderId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("1", t.getQuantity());
        parameterMap.put("2", t.getProductId());
        parameterMap.put("3", t.getOrderId());
        return insertGenericDAO(sql, parameterMap);
    }

    public List<OrderDetails> findAlll() {
        String sql = "select * from OrderDetail";
        parameterMap = new LinkedHashMap<>();
        return queryGenericDAO(OrderDetails.class, sql, parameterMap);

    }

}
