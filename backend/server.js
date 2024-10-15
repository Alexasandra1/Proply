const express = require('express');
const swaggerUi = require('swagger-ui-express');
const swaggerDocument = require('./swagger'); 
const cors = require('cors');
const pdf = require('pdfkit');
const fs = require('fs');
const bodyParser = require('body-parser');
const path = require('path');


const userRouter = require('../backend/routes/user.routes');
const roleRouter = require('../backend/routes/role.routes');
const userphotoRouter = require('../backend/routes/userphoto.routes');
const objecttypeRouter = require('../backend/routes/objecttype.routes');
const objectstateRouter = require('../backend/routes/objectstate.routes');
const objectphotoRouter = require('../backend/routes/objectphoto.routes');
const consultantRouter = require('../backend/routes/consultant.routes');
const realeestateobjectRouter = require('../backend/routes/realeestateobject.routes');
const sortRouter = require('../backend/routes/sort.routes');

const app = express();
const port = process.env.PORT || 8000;

app.use(cors());
app.use(bodyParser.json());

app.post('/create-pdf', (req, res) => {
  let doc = new pdf;
  
  const date = new Date();
  const fileName = `file_${date.getTime()}.pdf`;

  const filePath = path.join(__dirname, 'files', fileName);
  doc.pipe(fs.createWriteStream(filePath));
  
  req.body.data.forEach(item => {
    doc.text(item);
    doc.moveDown();
  });

  doc.end();
  res.send('PDF Created');
});

app.use(function (req, res, next) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
  res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
  res.setHeader('Access-Control-Allow-Credentials', true);
  next();
});

app.use(express.json());
app.use(express.urlencoded({extended: true})); //chat
app.use('/api', userRouter);
app.use('/api', roleRouter);
app.use('/api', userphotoRouter);
app.use('/api', objecttypeRouter);
app.use('/api', objectstateRouter);
app.use('/api', objectphotoRouter);
app.use('/api', consultantRouter);
app.use('/api', realeestateobjectRouter);
app.use('/api', sortRouter);

// Добавление маршрута для Swagger UI
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocument));

app.listen(port, () => {
  console.log('Server is running on port ' + port);
});