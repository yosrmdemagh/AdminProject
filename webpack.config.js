const path = require('path');
 module.exports = {
 mode: 'production',
 entry: './SourceCode/index.js',
 output: {
 path: path.join(__dirname, 'build'),
 publicPath: '/',
 filename: 'index.js',
 },
 target: 'node',
 };
