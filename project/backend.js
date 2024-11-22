const express = require('express');

const app = express();
const port = 8080;

app.get('/test', (req, res) => {
  res.send('tested')
})

app.listen(port, () => {
  console.log(`backend on port ${port}`)
})
