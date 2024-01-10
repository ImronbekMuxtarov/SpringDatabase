package org.example.mapper;

import org.example.model.Product;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product> {
    @Override
    public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
        Product product = new Product();
        product.setId(rs.getInt(1));
        product.setName(rs.getString(2));
        product.setPrice(rs.getFloat(3));
        return product;
    }
}
