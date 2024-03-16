const { rogerSequelize } = require("../../database/sequelize");
const { User } = require("./model/user.model"); // Replace with the actual file name
const jwt = require("jsonwebtoken");
const { secret } = require("../../constant/secret.constant");

const userInit = new User();

async function fetchUsers(req, res) {
  try {
    const users = await User.findAll();

    res.status(200).json({
      message: "user fetched",
      data: users,
    });
    console.log(users);
  } catch (error) {
    console.error("Error:", error);
  } finally {
    // Close the database connection
  }
}

async function createUser(req, res) {
  try {
    const { name, mobile_no, password } = req.body.payload;
    const users = await User.create({ name, mobile_no, password });

    res.status(200).json({
      message: "user fetched",
      data: users,
    });
    console.log(users);
  } catch (error) {
    res.status(400).json({
      message: "Invalid data" + error,
    });
    console.error("Error:", error);
  } finally {
    // Close the database connection
  }
}

async function deleteUser(req, res) {
  try {
    const { mobile_no } = req.query;
    const users = await User.destroy({
      where: {
        mobile_no: mobile_no,
      },
    });

    res.status(200).json({
      message: "user fetched",
      data: users,
    });
    console.log(users);
  } catch (error) {
    res.status(400).json({
      message: "Invalid data" + error,
    });
    console.error("Error:", error);
  } finally {
    // Close the database connection
  }
}

async function authUser(req, res) {
  try {
    const { mobile_no, password } = req.body;
    const user = await User.findOne({
      where: {
        mobile_no: mobile_no,
        password: password,
        blocked: false,
      },
    });

    const loginStamp = await userInit.updateLoginStamp(mobile_no);
    // console.log(user);

    if (user) {
      const start = Date.now();
      var token = jwt.sign({ start }, secret, {
        expiresIn: 98640000,
        // expiresIn: 3600,
      });
      res.status(200).json({
        message: "user fetched",
        data: { ...user, token: token, loginStamp: loginStamp },
      });
    } else {
      res.status(400).json({
        message: "Invalid mobile no or password",
        data: null,
      });
    }
  } catch (error) {
    console.error("Error:", error);
  }
}

async function validate(req, res) {
  try {
    let token = req.headers.auth_token;
    let uid = req.headers.uid;
    const user = await User.findOne({
      where: {
        login_stamp: uid,
        blocked: false,
      },
    });

    jwt.verify(token, secret, function (err, decoded) {
      if (!err && user) {
        req.user_detail = decoded;
        res.status(200).json({
          message: "user fetched",
          data: "User is valid",
        });
      } else {
        res.status(401).json({
          message: "not allowed",
          code: 401,
        });
      }
    });
  } catch (error) {
    console.error("Error:", error);
  }
}

module.exports = { fetchUsers, createUser, deleteUser, authUser, validate };
