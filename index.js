const express = require('express');
const app = express();
app.get("/", (req, res) => {
  res.send("Hello, this is a minimal Node.js Express server.");
});
const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}...`));
