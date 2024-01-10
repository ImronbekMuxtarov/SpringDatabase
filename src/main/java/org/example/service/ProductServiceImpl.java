package org.example.service;

import org.example.dao.ProductDAO;
import org.example.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductDAO productDAO;

    @Override
    public Product getProductById(int id) {
        return productDAO.selectProductById(id);
    }

    @Override
    public List<Product> getProducts() {
        return productDAO.selectAllProducts();
    }

    @Override
    public boolean addProduct(String name, float price) {
        Product product = new Product(name, price);
        return productDAO.insertProduct(product);
    }

    @Override
    public boolean deleteProduct(int id) {
        return productDAO.deleteProduct(id);
    }

    @Override
    public boolean updateProduct(int id, String name, float price) {
        Product product = new Product(name,price);
        productDAO.updateProduct(id, product);
        return true;
    }


}
