/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

//import constant.CommonConst;
import dal.GenericDAO;
import entity.Products;
import entity.Products;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class ProductsDAO extends GenericDAO<Products> {

    @Override
    public List<Products> findAll() {
        return queryGenericDAO(Products.class);
    }

    @Override
    public int insert(Products t) {
        return insertGenericDAO(t);
    }
}