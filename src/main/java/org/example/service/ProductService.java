package org.example.service;

import org.example.model.Product;

import java.util.List;

public interface ProductService {
    Product getProductById(int id);
    List<Product> getProducts();
    boolean addProduct(String name, float price);
    boolean deleteProduct(int id);
    boolean updateProduct(int id, String name, float price);
}
