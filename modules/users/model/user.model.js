const { Sequelize, DataTypes } = require("sequelize");
const { rogerSequelize } = require("../../../database/sequelize");

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
});

User.sync({ alter: true });

// Export the User model
module.exports = { User };
