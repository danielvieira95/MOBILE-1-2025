const express = require('express');
const cors = require('cors');
const app = express();

// Libera CORS para todas as origens
app.use(cors());

// Permite envio de JSON
app.use(express.json());

// Suas rotas
app.use('/produtos', require('./routes/produtos'));
app.use('/usuarios', require('./routes/usuarios'));

// Inicializa o servidor
app.listen(3000, '0.0.0.0', () => {
  console.log('Servidor rodando em http://0.0.0.0:3000');
});
