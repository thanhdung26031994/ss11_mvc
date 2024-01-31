package org.example.productmanagement.model.service;

import org.example.productmanagement.model.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ProductService implements IProductService{
    private static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1, "Kẹo", 8.5F, "Rất ngọt", "Việt Nam"));
        productList.add(new Product(2, "Bia", 20.0F, "Say", "Nhật Bản"));
        productList.add(new Product(3, "Nước Suối", 2.5F, "Thanh Mát", "Thái Lan"));

    }
    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void addProduct(Product product) {
        productList.add(product);
    }

    @Override
    public Product findById(Integer id) {
        for (Product product: productList){
            if (product.getId().equals(id)){
                return product;
            }
        }
        return null;
    }

    @Override
    public void update(Integer id, Product product) {
        for (int i= 0; i < productList.size(); i++){
            if (id == productList.get(i).getId()){
                productList.set(i, product);
                break;
            }
        }
    }

    @Override
    public void remove(Product product) {
        productList.remove(product);
    }
}
