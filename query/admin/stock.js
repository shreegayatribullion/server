const pool = require("../../database");
const express = require('express');
const multer = require('multer');
const path = require('path');
const router = express.Router()
const moment = require('moment')



router.post('/xstock', (req, res) => {
  let body = req.body;
  const submit = async () => {

    if (body.action === "INSERT") {
      pool.query(
        `INSERT INTO gmb_stock_list ( name, code, cost ) 
              VALUES ( '${body.name}', '${body.code}', ${body.cost});`,
        async function (err, data) {
          if (data && data.affectedRows) {
            return res.status(200).json({
              success: true,
              messagecode: 101,
              message: "record added",
            });
          }
          if (err) {
            return res.status(422).json({
              success: false,
              messagecode: 422,
              message: err.sqlMessage
            });
          }
        }
      );
    } else if (body.action === "UPDATE") {
      pool.query(
        `Update gmb_stock_list SET 
        name='${body.name}',
        code='${body.code}', 
        cost=${body.cost}
        WHERE id=${body.id};`,
        async function (err, data) {
          if (data && data.affectedRows) {
            return res.status(200).json({
              success: true,
              messagecode: 101,
              message: "record updated",
            });
          }
          if (err) {
            return res.status(422).json({
              success: false,
              messagecode: 422,
              message: err.sqlMessage
            });
          }
        }
      );
    }
    else if (body.action === "DELETE") {
      pool.query(
        `DELETE FROM gmb_stock_list WHERE id=${body.id};`,
        async function (err, data) {
          if (data && data.affectedRows) {
            return res.status(200).json({
              success: true,
              messagecode: 101,
              message: "record updated",
            });
          }
          if (err) {
            return res.status(422).json({
              success: false,
              messagecode: 422,
              message: err.sqlMessage
            });
          }
        }
      );
    }
  }
  submit()
}, (error, req, res, next) => {
  res.status(400).send({ error: error.message })
})



router.get('/stock', (req, res) => {
  // let body = req.body;
  let body = req.query;
  const submit = async () => {
    let sql = `SELECT * FROM gmb_stock_list`
    pool.query(
      sql,
      async function (err, data) {
        if (err) {
          return res.status(442).json({
            success: false,
            messagecode: 442,
            message: err,
          });
        } else {
          return res.status(200).json({
            success: true,
            messagecode: 101,
            message: "records",
            data: data,
          });
        }
      }
    )

  }
  submit()
}, (error, req, res, next) => {
  res.status(400).send({ error: error.message })
})


module.exports = router