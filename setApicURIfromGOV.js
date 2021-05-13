let hm = require('header-metadata')
let sm = require('service-metadata')

let origUri = sm.getVar('var://service/URI')
let origUriArr = origUri.split('/')
let basePath = origUriArr[2]
let apicPath = origUri.split('/rest/v1/')[1]
let apicUri = '/boi/cts/' + basePath + '/' + apicPath
sm.setVar('var://service/URI', apicUri);
