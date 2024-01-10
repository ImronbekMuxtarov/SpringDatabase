package org.example.controller;

import org.example.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/products")
    public ModelAndView productList(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("products");
        mv.addObject("products", productService.getProducts());
        return mv;
    }

    @RequestMapping("/product/{id}")
    public ModelAndView product(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("product");
        mv.addObject("product", productService.getProductById(id));
        return mv;
    }

    @RequestMapping("/submitaddproduct")
    public ModelAndView submitAddProduct(@RequestParam("name") String name, @RequestParam("price") float price){
        productService.addProduct(name, price);
//        ModelAndView mv = new ModelAndView("message");
//        mv.addObject("message", "Successfully added!");
        return productList();
    }

    @GetMapping("/addproduct")
    public String addProduct(){
        return "addproduct";
    }

    @RequestMapping("/delete/{id}")
    public ModelAndView deleteProduct(@PathVariable("id") int id){
        productService.deleteProduct(id);
        return productList();
    }

    @RequestMapping("/updateproduct/{id}")
    public ModelAndView updateProduct(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("updateproduct");
        mv.addObject("product", productService.getProductById(id));
        return mv;
    }

    @RequestMapping("/submitupdateproduct/{id}")
    public ModelAndView submitUpdateProduct(@PathVariable("id") int id, @RequestParam("name") String name, @RequestParam("price") float price){
        productService.updateProduct(id, name, price);
        return productList();
    }
}
