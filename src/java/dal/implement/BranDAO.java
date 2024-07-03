/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import entity.Brand;
import entity.Category;
import java.util.List;

/**
 *
 * @author yeuda
 */
public class BranDAO extends GenericDAO<Brand> {

    @Override
    public List<Brand> findAll() {
        return queryGenericDAO(Brand.class);
    }

    @Override
    public int insert(Brand t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
