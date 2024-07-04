/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

//import constant.CommonConst;
import constant.commonConstant;
import dal.GenericDAO;
import entity.Products;
import entity.Products;
import java.util.LinkedHashMap;
import java.util.LinkedList;
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

    public Products findById(Products products) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "      ,[brandId]\n"
                + "      ,[config]\n"
                + "      ,[guar]\n"
                + "      ,[oldPrice]\n"
                + "      ,[detailImage1]\n"
                + "      ,[detailImage2]\n"
                + "      ,[detailImage3]\n"
                + "      ,[detailImage4]\n"
                + "      ,[configDetail]\n"
                + "  FROM [dbo].[Products] where id =?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", products.getId());
        List<Products> list = queryGenericDAO(Products.class, sql, parameterMap);

        //neu nhu list ma empty => ko co san pham => tra ve null
        //nguoc lai list ma ko empty => co san pham => nam o vi tri dau tien => lay ve o vi tri so 0
        return list.isEmpty() ? null : list.get(0);
    }

    public List<Products> findByCategory(String categoryId, int page) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "      ,[brandId]\n"
                + "      ,[config]\n"
                + "      ,[guar]\n"
                + "      ,[oldPrice]\n"
                + "      ,[detailImage1]\n"
                + "      ,[detailImage2]\n"
                + "      ,[detailImage3]\n"
                + "      ,[detailImage4]\n"
                + "      ,[configDetail]\n"
                + "  FROM [dbo].[Products]\n"
                + "  where categoryId = ?\n"
                + "\n"
                + "  order by id\n"
                + "  offset ? rows\n"
                + "  fetch next ? rows only"; // NUMBER_RECORD_PER_PAGE
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Products.class, sql, parameterMap);
    }

    public List<Products> findByBrand(String brandId, int page) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "      ,[brandId]\n"
                + "      ,[config]\n"
                + "      ,[guar]\n"
                + "      ,[oldPrice]\n"
                + "      ,[detailImage1]\n"
                + "      ,[detailImage2]\n"
                + "      ,[detailImage3]\n"
                + "      ,[detailImage4]\n"
                + "      ,[configDetail]\n"
                + "  FROM [dbo].[Products]\n"
                + "  where brandId = ?\n"
                + "\n"
                + "  order by id\n"
                + "  offset ? rows\n"
                + "  fetch next ? rows only"; // NUMBER_RECORD_PER_PAGE
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("brandId", brandId);
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Products.class, sql, parameterMap);
    }

    public List<Products> findByName(String keyword, int page) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "      ,[brandId]\n"
                + "      ,[config]\n"
                + "      ,[guar]\n"
                + "      ,[oldPrice]\n"
                + "      ,[detailImage1]\n"
                + "      ,[detailImage2]\n"
                + "      ,[detailImage3]\n"
                + "      ,[detailImage4]\n"
                + "      ,[configDetail]\n"
                + "  FROM [dbo].[Products]\n"
                + "  where name like ?\n"
                + "\n"
                + "  order by id\n"
                + "  offset ? rows\n"
                + "  fetch next ? rows only"; // NUMBER_RECORD_PER_PAGE
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Products.class, sql, parameterMap);
    }

    public int findTotalRecordByCategory(String categoryId) {
        String sql = "SELECT count(*)\n"
                + "  FROM Products\n"
                + "  where categoryId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);
        return findTotalRecordGenericDAO(Products.class, sql, parameterMap);
    }

    public int findTotalRecordByName(String keyword) {
        String sql = "SELECT count(*)\n"
                + "  FROM Products\n"
                + "  where [name] like ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        return findTotalRecordGenericDAO(Products.class, sql, parameterMap);
    }

    public int findTotalRecordByBrand(String brandId) {
        String sql = "SELECT count(*)\n"
                + "  FROM Products\n"
                + "  where brandId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("brandId", brandId);
        return findTotalRecordGenericDAO(Products.class, sql, parameterMap);
    }

    public int findTotalRecordByPriceRange(String minPrice, String maxPrice) {
        String sql = "SELECT count(*)\n"
                + "  FROM Products\n"
                + "  where price between ? and ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("minPrice", minPrice);
        parameterMap.put("maxPrice", maxPrice);

        return findTotalRecordGenericDAO(Products.class, sql, parameterMap);
    }

    public List<Products> findByPriceRange(String minPrice, String maxPrice, int page) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "      ,[brandId]\n"
                + "      ,[config]\n"
                + "      ,[guar]\n"
                + "      ,[oldPrice]\n"
                + "      ,[detailImage1]\n"
                + "      ,[detailImage2]\n"
                + "      ,[detailImage3]\n"
                + "      ,[detailImage4]\n"
                + "      ,[configDetail]\n"
                + "  FROM [dbo].[Products]\n"
                + "  where price between ? and ?\n"
                + "  order by id\n"
                + "  offset ? rows\n"
                + "  fetch next ? rows only"; // NUMBER_RECORD_PER_PAGE
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("minPrice", minPrice);
        parameterMap.put("maxPrice", maxPrice);

        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Products.class, sql, parameterMap);
    }

    public List<Products> findByQuantity() {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "      ,[brandId]\n"
                + "      ,[config]\n"
                + "      ,[guar]\n"
                + "      ,[oldPrice]\n"
                + "      ,[detailImage1]\n"
                + "      ,[detailImage2]\n"
                + "      ,[detailImage3]\n"
                + "      ,[detailImage4]\n"
                + "      ,[configDetail]\n"
                + "  FROM [dbo].[Products] order by quantity desc";
        parameterMap = new LinkedHashMap<>();
        return queryGenericDAO(Products.class, sql, parameterMap);

    }

    public void deleteById(int id) {
        String sql = "DELETE FROM [dbo].[Products]\n"
                + "      WHERE id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", id);
        deleteGenericDAO(sql, parameterMap);
    }

    public void update(Products product) {
        String sql = "UPDATE [dbo].[Products]\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[categoryId] = ?\n"
                + "      ,[brandId] = ?\n"
                + " WHERE id= ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", product.getName());
        parameterMap.put("image", product.getImage());
        parameterMap.put("quantity", product.getQuantity());
        parameterMap.put("price", product.getPrice());
        parameterMap.put("description", product.getDescription());
        parameterMap.put("categoryId", product.getCategoryId());
        parameterMap.put("brandId", product.getBrandId());

        parameterMap.put("id", product.getId());
        updateGenericDAO(sql, parameterMap);
    }

    public void updatee(Products product) {
        String sql = "UPDATE [dbo].[Products]\n"
                + "   SET [quantity] = ?\n"
                + " WHERE id= ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("quantity", product.getQuantity());
        parameterMap.put("id", product.getId());
        updateGenericDAO(sql, parameterMap);
    }

    public Products getById(int productId) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "      ,[brandId]\n"
                + "      ,[config]\n"
                + "      ,[guar]\n"
                + "      ,[oldPrice]\n"
                + "      ,[detailImage1]\n"
                + "      ,[detailImage2]\n"
                + "      ,[detailImage3]\n"
                + "      ,[detailImage4]\n"
                + "      ,[configDetail]\n"
                + "  FROM [dbo].[Products] where id =?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", productId);
        List<Products> list = queryGenericDAO(Products.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);

    }

    public int findTotalRecordByLowHigh(String categoryIdN) {
        String sql = "SELECT count(*)\n"
                + "  FROM Products\n"
                + "  where categoryIdN = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryIdN", categoryIdN);
        return findTotalRecordGenericDAO(Products.class, sql, parameterMap);
    }

    public List<Products> findByLowHigh(String categoryIdN, int page) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "      ,[brandId]\n"
                + "      ,[config]\n"
                + "      ,[guar]\n"
                + "      ,[oldPrice]\n"
                + "      ,[detailImage1]\n"
                + "      ,[detailImage2]\n"
                + "      ,[detailImage3]\n"
                + "      ,[detailImage4]\n"
                + "      ,[configDetail]\n"
                + "  FROM [dbo].[Products] where categoryId = ? order by price desc";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryIdN", categoryIdN);

        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Products.class, sql, parameterMap);
    }
}
