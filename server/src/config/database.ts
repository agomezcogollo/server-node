import mysql from 'promise-mysql';
import keysdba from './keysdb';

const pool = mysql.createPool(keysdba.database);

pool.getConnection()
  .then(connection => {
    pool.releaseConnection(connection);
  });

export default pool;