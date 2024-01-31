package org.example.productmanagement.model.service;

import org.example.productmanagement.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    void addProduct(Product product);

    Product findById(Integer id);

    void update(Integer id, Product product);

    void remove(Product product);
}
