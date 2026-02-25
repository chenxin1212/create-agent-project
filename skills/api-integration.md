# Skill: API Integration

## Overview
Integrates with external APIs and services.

## Description
This skill handles API integration tasks:
- API client generation
- Request/response handling
- Authentication (OAuth, JWT, API keys)
- Rate limiting and retry logic
- Error handling and validation
- Response caching

## Prerequisites
- API documentation access
- Authentication credentials
- Network connectivity

## Inputs
- **api**: API specification (OpenAPI/Swagger) or endpoint URL
- **method**: HTTP method ("GET", "POST", "PUT", "DELETE", "PATCH")
- **options**: Integration options (object)
  - `auth`: Authentication config
  - `headers`: Custom headers
  - `params`: Query parameters
  - `body`: Request body
  - `retries`: Number of retry attempts (default: 3)
  - `timeout`: Request timeout in ms (default: 5000)

## Outputs
Returns API response and metadata:
```json
{
  "data": { ... },
  "status": 200,
  "headers": { ... },
  "metadata": {
    "responseTime": 245,
    "cached": false,
    "retries": 0
  }
}
```

## Usage Examples

### Example 1: Simple GET Request
```javascript
const result = await integrateAPI({
  api: "https://api.example.com/users",
  method: "GET",
  options: {
    params: { limit: 10 }
  }
});
```

### Example 2: POST with Authentication
```javascript
const result = await integrateAPI({
  api: "https://api.example.com/users",
  method: "POST",
  options: {
    auth: {
      type: "bearer",
      token: "your-jwt-token"
    },
    body: {
      name: "John Doe",
      email: "john@example.com"
    }
  }
});
```

### Example 3: OAuth Integration
```javascript
const result = await integrateAPI({
  api: "https://api.example.com/protected",
  method: "GET",
  options: {
    auth: {
      type: "oauth2",
      clientId: "your-client-id",
      clientSecret: "your-client-secret",
      refreshToken: "refresh-token"
    },
    retries: 3
  }
});
```

### Example 4: Generate API Client
```javascript
const client = await generateAPIClient({
  spec: "./openapi.yaml",
  language: "javascript",
  options: {
    includeTypes: true,
    includeValidation: true
  }
});
```

## Authentication Methods

### API Key
```javascript
{
  auth: {
    type: "apiKey",
    key: "your-api-key",
    location: "header", // or "query"
    name: "X-API-Key"
  }
}
```

### Bearer Token
```javascript
{
  auth: {
    type: "bearer",
    token: "your-jwt-token"
  }
}
```

### Basic Auth
```javascript
{
  auth: {
    type: "basic",
    username: "user",
    password: "pass"
  }
}
```

### OAuth 2.0
```javascript
{
  auth: {
    type: "oauth2",
    clientId: "client-id",
    clientSecret: "client-secret",
    authUrl: "https://auth.example.com/oauth/authorize",
    tokenUrl: "https://auth.example.com/oauth/token"
  }
}
```

## Error Handling

### Common API Errors

**NetworkError**
- Cause: Network connectivity issue
- Solution: Check connection, retry request

**AuthenticationError**
- Cause: Invalid or expired credentials
- Solution: Refresh tokens or update credentials

**RateLimitError**
- Cause: Exceeded API rate limit
- Solution: Implement backoff strategy

**ValidationError**
- Cause: Invalid request data
- Solution: Validate input against API schema

## Retry Strategy
```javascript
// Exponential backoff
const backoff = (attempt) => {
  return Math.min(1000 * Math.pow(2, attempt), 30000);
};

async function retryRequest(fn, retries = 3) {
  for (let i = 0; i < retries; i++) {
    try {
      return await fn();
    } catch (error) {
      if (i === retries - 1) throw error;
      await sleep(backoff(i));
    }
  }
}
```

## Response Caching
```javascript
const cache = new Map();

async function cachedRequest(url, options, ttl = 60000) {
  const key = `${url}-${JSON.stringify(options)}`;
  const cached = cache.get(key);
  
  if (cached && Date.now() - cached.timestamp < ttl) {
    return { ...cached.data, metadata: { cached: true } };
  }
  
  const data = await makeRequest(url, options);
  cache.set(key, { data, timestamp: Date.now() });
  
  return { ...data, metadata: { cached: false } };
}
```

## Dependencies
- HTTP client libraries (axios, fetch, requests)
- Authentication libraries
- Schema validation tools

## Version History
- v1.0.0: Initial release
- v1.1.0: Added OAuth support
- v1.2.0: Enhanced retry logic
- v1.3.0: Added response caching
