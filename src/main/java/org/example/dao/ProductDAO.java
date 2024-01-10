package org.example.dao;

import org.example.model.Product;

import java.util.List;

public interface ProductDAO {
    List<Product> selectAllProducts();
    Product selectProductById(int id);
    boolean insertProduct(Product product);
    boolean deleteProduct(int id);
    boolean updateProduct(int id, Product product);

}
