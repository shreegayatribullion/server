const express = require("express");
const controller = require("./controller");

const router = express.Router();

/* GET USERS */
router.get("/", controller.fetchUsers);
/* CREATE USERS */
router.post("/", controller.createUser);
/* DELETE USER */
router.delete("/", controller.deleteUser);
/* AUTH */
router.post("/auth", controller.authUser);

module.exports = router;
