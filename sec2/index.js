/* exports.handler = (event, context, callback) => {
  callback(null, 'executed')
} */

exports.handler = async (event) => {
  const response = {
    statusCode: 200,
    body: JSON.stringify('executed')
  }
  return response
}

// STUB: callbackWaitsForEmptyEventLoop