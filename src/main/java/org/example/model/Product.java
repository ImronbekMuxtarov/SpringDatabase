package org.example.model;

public class Product {
    private Integer id;
    private String name;
    private Float price;

    public Product(Integer id, String name, Float price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public Product(String name, Float price) {
        this.name = name;
        this.price = price;
    }

    public Product() {

    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }
    public Float getPrice() {
        return price;
    }
}
