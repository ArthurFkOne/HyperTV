const express 	= require("express");
const app = express();
var cors = require('cors');


app.use(express.json());
app.use(express.urlencoded({extended: true}));

app.use(cors());

//cargamos el archivo de rutas
app.use(require('./routes/clientes'));
app.use(require('./routes/usuarios'));
app.use(require('./routes/reportes'));
app.use(require('./routes/inventario'));
/*

app.use(require('./routes/roles'));
*/


const PORT = process.env.PORT;
app.listen(PORT,() => {
	console.log('El servidor escucha en el puerto '+ PORT);
});
module.exports = app;