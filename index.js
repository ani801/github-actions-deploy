import express from "express";
const app = express();

app.get("/", (req, res) => {
  res.send("Hello World, This is my first containerized Node.js application!");
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});