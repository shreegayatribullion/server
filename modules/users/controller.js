const { rogerSequelize } = require("../../database/sequelize");
const { User } = require("./model/user.model"); // Replace with the actual file name

// Example usage
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

module.exports = { fetchUsers, createUser, deleteUser };
