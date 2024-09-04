package com.Revshop.services;

import java.util.List;

import com.Revshop.entities.Order;

public interface OrderService {
	List<Order> getAllOrdersByUserId(int UserId);
}