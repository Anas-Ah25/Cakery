'use client';
import React, { useState, useEffect } from 'react';
import Breadcrumb from '../components/breadcrumb';
import OrderItem from '../components/orderItem';

export default function CustomerOrders() {
  
  const [orderItems, setOrderItems] = useState([
    // { cartItemId: 1, productId: 1, customCakeId: null, price: 30.0, quantity: 2 },
    // { cartItemId: 2, productId: 2, customCakeId: null, price: 47.0, quantity: 1 },
  ]);
  useEffect(() => {
    const fetchOrderItems = async () => {
      try {
        const res = await fetch('/Customer/Orders');
        if (!res.ok) {
          throw new Error('Failed to fetch orders');
        }
        const data = await res.json();
        if (Array.isArray(data.orderItems)) {
          setOrderItems(data.orderItems);
        }
      } catch (error) {
        console.error('error while fetching orders:', error.message);
      }
    };
    fetchOrderItems();
  }, []);


  return (
    <>
      <Breadcrumb title="My Orders" />
      <section className="shopping-cart spad">
        <div className="container">
          <div className="row">
            <div className="col-lg-8">
              <div className="shopping__cart__table">
                <table>
                  <thead>
                    <tr>
                      <th>Order</th>
                      <th>Status</th>
                      <th>Total</th>
                      <th></th>
                    </tr>
                  </thead>
                  <tbody>
                    {orderItems.map((item) => (
                      <OrderItem
                        key={item.orderId}
                        orderId={item.orderId}
                        totalPrice={item.totalPrice}
                        status={item.status}
                        orderDate={item.orderDate}
                        deliveryDate={item.deliveryDate}
                      />
                    ))}
                  </tbody>
                </table>
              </div>
             
            </div>
            
          </div>
        </div>
      </section>
    </>
  );
}