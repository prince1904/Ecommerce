package com.Revshop.services;

import java.util.List;
import com.Revshop.entities.OrderedProduct;

public interface OrderedProductService {
	List<OrderedProduct> getAllOrderedProducts(int UserId);
}