const http = require('http');

console.log('Testing API connectivity...');

const options = {
  hostname: 'localhost',
  port: 5008,
  path: '/api/products',
  method: 'GET',
  timeout: 5000
};

const req = http.request(options, (res) => {
  console.log(`STATUS: ${res.statusCode}`);
  console.log(`HEADERS: ${JSON.stringify(res.headers)}`);
  
  let data = '';
  res.on('data', (chunk) => {
    data += chunk;
  });
  
  res.on('end', () => {
    console.log('Response body length:', data.length);
    console.log('Response body preview:', data.substring(0, 100) + '...');
    console.log('API test completed successfully');
  });
});

req.on('error', (e) => {
  console.error(`API test failed: ${e.message}`);
  console.error('Error details:', e);
});

req.on('timeout', () => {
  console.error('Request timed out');
  req.abort();
});

req.end(); 