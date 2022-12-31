package com.crud.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.crud.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate template;

	// Create Product
	@Transactional
	public void createProduct(Product product) {

		this.template.saveOrUpdate(product);
	}

	public List<Product> getProducts() {
		List<Product> products = this.template.loadAll(Product.class);

		return products;
	}

	
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.template.load(Product.class, pid);
		this.template.delete(p);
	}
	
	public Product getProduct(int pid) {
		return this.template.get(Product.class, pid);
		
	}

}
