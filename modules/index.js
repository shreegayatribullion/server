const express = require("express");
const users = require("./users");

const router = express.Router();

router.use("/user", users);

module.exports = router;
