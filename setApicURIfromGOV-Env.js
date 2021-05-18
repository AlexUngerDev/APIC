let hm = require('header-metadata')
let sm = require('service-metadata')
let catalogName = session.parameters.catalog

let origUri = sm.getVar('var://service/URI')
let origUriArr = origUri.split('/')
let basePath = origUriArr[3]
let apicPath = origUri.split('/rest/v1/')[1]
let apicUri = '/boi/' + catalogName + '/' + basePath + '/' + apicPath
sm.setVar('var://service/URI', apicUri);
