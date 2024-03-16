const { Sequelize, DataTypes, DATE } = require("sequelize");
const { rogerSequelize } = require("../../../database/sequelize");
const { v4: uuidv4 } = require('uuid');
const User = rogerSequelize.define("shree_gayatri_bullion_users", {
  // Model attributes are defined here
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  mobile_no: {
    unique: true,
    type: DataTypes.STRING,
    // allowNull defaults to true
  },
  password: {
    type: DataTypes.STRING,
    // allowNull defaults to true
  },
  blocked: {
    type: DataTypes.BOOLEAN,
    defaultValue: false,
  },
  login_stamp: {
    type: DataTypes.STRING,
    defaultValue: false,
  },
});

// Method to update login_stamp
User.prototype.updateLoginStamp = async function (mobile_no) {
  try {
    const stamp = uuidv4();
    const response = await User.update(
      { ["login_stamp"]: stamp },
      { where: { mobile_no: mobile_no }, returning: true }
    );
    return stamp;
  } catch (error) {
    console.error("Error updating login_stamp:", error);
    throw error;
  }
};

User.sync();

// Export the User model
module.exports = { User };
