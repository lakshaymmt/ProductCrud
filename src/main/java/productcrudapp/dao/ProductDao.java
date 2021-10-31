package productcrudapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import productcrudapp.model.Product;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class ProductDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

//    create
    @Transactional
    public void createProduct(Product product){
        this.hibernateTemplate.save(product);
    }

//    get All products
    public List<Product> getProducts(){
        List<Product> products =  this.hibernateTemplate.loadAll(Product.class);
        return products;
    }

//    delete a single product
    @Transactional
    public void deleteProduct(int pid){
        Product p = this.hibernateTemplate.load(Product.class,pid);
        this.hibernateTemplate.delete(p);
    }

//    get single product
    public Product getProduct(int pid){
        return this.hibernateTemplate.get(Product.class,pid);
    }


}
