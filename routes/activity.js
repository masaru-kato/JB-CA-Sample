'use strict';
var util = require('util');

// Deps
const Path = require('path');
const JWT = require(Path.join(__dirname, '..', 'lib', 'jwtDecoder.js'));
var util = require('util');
var http = require('https');

exports.logExecuteData = [];

function logData(req) {
  exports.logExecuteData.push({
    body: req.body,
    headers: req.headers,
    trailers: req.trailers,
    method: req.method,
    url: req.url,
    params: req.params,
    query: req.query,
    route: req.route,
    cookies: req.cookies,
    ip: req.ip,
    path: req.path,
    host: req.host,
    fresh: req.fresh,
    stale: req.stale,
    protocol: req.protocol,
    secure: req.secure,
    originalUrl: req.originalUrl
  });
  console.log("body: " + util.inspect(req.body));
  console.log("headers: " + req.headers);
  console.log("trailers: " + req.trailers);
  console.log("method: " + req.method);
  console.log("url: " + req.url);
  console.log("params: " + util.inspect(req.params));
  console.log("query: " + util.inspect(req.query));
  console.log("route: " + req.route);
  console.log("cookies: " + req.cookies);
  console.log("ip: " + req.ip);
  console.log("path: " + req.path);
  console.log("host: " + req.host);
  console.log("fresh: " + req.fresh);
  console.log("stale: " + req.stale);
  console.log("protocol: " + req.protocol);
  console.log("secure: " + req.secure);
  console.log("originalUrl: " + req.originalUrl);
}

/*
 * POST Handler for / route of Activity (this is the edit route).
 */
exports.edit = function (req, res) {
  // Data from the req and put it in an array accessible to the main app.
  //console.log( req.body );
  logData(req);
  res.send(200, 'Edit');
};

/*
 * POST Handler for /save/ route of Activity.
 */
exports.save = function (req, res) {
  // Data from the req and put it in an array accessible to the main app.
  //console.log( req.body );
  logData(req);
  res.send(200, 'Save');
};

/*
 * POST Handler for /execute/ route of Activity.
 */
exports.execute = function (req, res) {

  var decodedArgs = "";
  var contactKey = "";
  var inParams = "";

  // example on how to decode JWT
  JWT(req.body, process.env.jwtSecret, (err, decoded) => {

    // verification error -> unauthorized request
    if (err) {
      console.error(err);
      return res.status(401).end();
    }

    if (decoded && decoded.inArguments && decoded.inArguments.length > 0) {
      // ok
      // decoded in arguments
      var decodedArgs = decoded.inArguments[0];

      console.log(`PARAMETERS: ${JSON.stringify(decoded.inArguments)}`);

      contactKey = decodedArgs.contactKey;
      inParams = decoded.inArguments;

    } else {
      // NG
      console.error('inArguments invalid.');
      return res.status(400).end();
    }
  });

  /*
  // From
  const querystring = require('querystring');
  const https = require('https');
          
  var param1 = contactKey;
  var params = "?a=nodea&b=nodeb&c=nodec&d=" + param1;
  var urlpath = encodeURI('/45sk4d4xhvf' + params);
  //var urlpath = '45sk4d4xhvf' + params;
  console.log(`PATH: ${urlpath}`);
 
  const options = {
    protocol: 'https:',
    host: 'fe3915707564057a721674.pub.s10.sfmc-content.com',
    path: urlpath,
    method: 'GET',
  };
 
  const req = https.request(options, (res) => {
      res.on('data', (chunk) => {
          console.log(`BODY: ${chunk}`);
      });
      res.on('end', () => {
          console.log('No more data in response.');
      });
  })
 
  req.on('error', (e) => {
    console.error(`problem with request: ${e.message}`);
  });
 
  req.end();
  */

  // Mongo Start
  const mongodb = require('mongodb');

  try {
    var dt = new Date();
    var formatted = dt.toString();

    let seedData = {
      contactkey: contactKey,
      params: inParams,
      date: formatted
    };

    let uri = process.env.MONGODB_URI
    let dbname = uri.split("/").pop();
    let colname = decodedArgs.setting1;
    console.log(`MONGO DB NAME/COLLECTION: ${dbname}/${colname}`);

    mongodb.MongoClient.connect(uri, function (err, client) {
      if (err) throw err;

      let db = client.db(dbname);
      let contacts = db.collection(colname);

      console.log(`MONGO INSERT DATA: ${JSON.stringify(seedData)}`);
      contacts.insertOne(seedData, function (err, result) {

        if (err) throw console.log(`MONGO INSERT error!!!`);

        console.log(`MONGO INSERT result: ${result}`);
      });
    });
  } catch (ex) {
    console.error(`Exception!!!: ${JSON.stringify(ex)}`);
    res.send(500, 'Execute');
  }
  // Mondo End

  logData(req);
  res.send(200, 'Execute');

};


/*
 * POST Handler for /publish/ route of Activity.
 */
exports.publish = function (req, res) {
  // Data from the req and put it in an array accessible to the main app.
  //console.log( req.body );
  logData(req);
  res.send(200, 'Publish');
};

/*
 * POST Handler for /validate/ route of Activity.
 */
exports.validate = function (req, res) {
  // Data from the req and put it in an array accessible to the main app.
  //console.log( req.body );
  logData(req);
  res.send(200, 'Validate');
};