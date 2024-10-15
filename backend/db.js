const pgp = require('pg').Pool
const db = new pgp({
    user: 'postgres',
    password: 'oxyennozaebic',
    host: 'localhost',
    port: 5432,
    database: 'ProplyDb'
});

module.exports = db