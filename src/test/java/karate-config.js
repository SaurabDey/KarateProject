function fn() {
  
  var config = {
    name: 'Saurab',
    baseURL: 'http://localhost:9090',
    diffBaseURL: 'https://jsonplaceholder.typicode.com'
  }
  
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  
  if (env == 'dev') {
    config.baseURL =  'http://student.com/dev'
  } 
  else if (env == 'qa') {
    config.baseURL =  'http://student.com/qa'
  }
  else if (env == 'uat') {
    config.baseURL = 'http://student.com/uat'
  }
  else if (env == 'prod') {
    config.baseURL =  'http://student.com/prod'
  }
  else
  {
   config.baseURL =  'http://localhost:9090'
  }
  
  
  return config;
}