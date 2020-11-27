INSERT_CREATE = `
        INSERT INTO Products.orders (product_id, count, status) VALUES(?, ?, ?);
    `;

UPDATE_ORDER = `
        UPDATE Products.orders set product_id = ?, count = ? , status = ? where id = ?;
    `;

DELETE_ORDER = `
        DELETE FROM Products.orders where id = ?;
    `;

SELECT_ALL_ORDER = `
        SELECT p.id as productId, p.name, p.price, o.count, o.status, o.id as orderId
        FROM Products.products as p 
        inner join Products.orders as o on p.id = o.product_id;
    `;

SELECT_ORDER = `
        SELECT p.id as productId, p.name, p.price, o.count, o.status, o.id as orderId
        FROM Products.products as p 
        inner join Products.orders as o on p.id = o.product_id
        where p.name like ?;
    `;

SELECT_ORDER_BY_ID = `
        SELECT p.id as productId, p.name, p.price, o.count, o.status, o.id as orderId
        FROM Products.products as p 
        inner join Products.orders as o on p.id = o.product_id
        where o.id = ?;
    `;


module.exports = {
    INSERT_CREATE,
    UPDATE_ORDER,
    DELETE_ORDER,
    SELECT_ALL_ORDER,
    SELECT_ORDER,
    SELECT_ORDER_BY_ID
}