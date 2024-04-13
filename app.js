const express = require("express");
const app = express();

app.get("/", (req, res) => res.send("hello"));
app.listen(3000, () => console.log("Hello ASL 4/13/2024"));
