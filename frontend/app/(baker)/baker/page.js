import Link from 'next/link';
import React from 'react';
import { cookies } from 'next/headers';

async function Page() {
  const cookieStore = await cookies();
  const token = await cookieStore.get('token');
  const orders = await (
    await fetch(`${process.env.backend}/user/baker/orders`, {
      headers: {
        Authorization: `Bearer ${token.value}`,
        Accept: 'application/json',
        'Content-Type': 'application/json',
      },
    })
  ).json();
  return (
    <>
      <table className="table table-hover pt-1 table-borderless">
        <thead>
          <tr>
            <th scope="col">Name</th>
            <th scope="col">Due Date</th>
            <th scope="col">Order ID</th>
            <th scope="col">Phone</th>
          </tr>
        </thead>
        <tbody>
          {orders.map((el) => {
            <tr>
              {/* <th scope="row">1</th> */}
              <td>{el.customer.name}</td>
              <td>20-10-2022</td>
              <td>
                <Link href={`tel:${el.customer.phone}`}></Link>
              </td>
              <td>
                <Link href={`/baker/viewOrder/${el.orderID}`}>View</Link>
              </td>
            </tr>;
          })}
        </tbody>
      </table>
    </>
  );
}

export default Page;