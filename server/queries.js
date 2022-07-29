const Pool = require('pg').Pool;

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'test-task',
    password: 'root',
    port: 5432,
});

const getItems = () => {
    return new Promise(function (resolve, reject) {
        pool.query('SELECT * FROM public.transportation ORDER BY id ASC', (error, results) => {
            if (error) {
                reject(error)
            }
            resolve(results.rows);
        })
    })
}

module.exports = { getItems }