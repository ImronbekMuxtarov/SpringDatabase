package org.example.dao;

import org.example.mapper.ProductMapper;
import org.example.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ProductDAOImpl implements ProductDAO{

    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public List<Product> selectAllProducts() {
        return jdbcTemplate.query(
                "select * from products order by id",
                new ProductMapper()
        );
    }

    @Override
    public Product selectProductById(int id) {
        return (Product) jdbcTemplate.queryForObject(
                "select * from products where id = ?",
                new Object[]{id},
                new ProductMapper()
        );
    }

    @Override
    public boolean insertProduct(Product product) {
        jdbcTemplate.update(
                "insert into products(name, price) values (?, ?)",
                product.getName(),
                product.getPrice()
        );
        return true;
    }

    @Override
    public boolean deleteProduct(int id) {
        jdbcTemplate.update(
                "delete from products where id = ?",
                id
        );
        return true;
    }

    @Override
    public boolean updateProduct(int id, Product product) {
        jdbcTemplate.update(
                "update products set name = ?, price = ? where id = ?",
                product.getName(),
                product.getPrice(),
                id
        );
        return true;
    }
}
