INSERT_PRODUCT = `
    INSERT INTO store.products (idproducts, product_name, price,
            status, color, description, quantity) VALUES(?, ?, ?, ?, ?, ?, ?);
`;

UPDATE_PRODUCT = `
    UPDATE store.products set product_name = ?, price = ?, status = ?, 
            color = ?, description= ?, quantity = ? where id = ?;
`;

DELETE_PRODUCT = `
    DELETE FROM store.products where id = ?;
`;

SELECT_ALL_PRODUCT = `
    SELECT id, name, price, description FROM store.products;
`;

SELECT_PRODUCT = `
    SELECT id, name, price, description FROM store.products where name like ?;
`;

SELECT_PRODUCT_BY_ID = `
    SELECT id, name, price, description FROM store.products where id = ?;
`;

module.exports = {
    INSERT_PRODUCT,
    UPDATE_PRODUCT,
    DELETE_PRODUCT,
    SELECT_ALL_PRODUCT,
    SELECT_PRODUCT,
    SELECT_PRODUCT_BY_ID
};