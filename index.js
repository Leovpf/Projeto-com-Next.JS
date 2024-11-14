const express = require('express');
const app = express();
const PORT = process.env.PORT || 8097;

app.get('/', (req, res) => {
  res.send('Aplicação em Node.js rodando no Docker');
});

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
