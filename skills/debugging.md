# Skill: Debugging

## Overview
Identifies and fixes code issues systematically.

## Description
This skill provides comprehensive debugging capabilities:
- Error identification and analysis
- Stack trace interpretation
- Root cause analysis
- Fix generation and validation
- Performance profiling
- Memory leak detection

## Prerequisites
- Access to code and logs
- Understanding of programming concepts
- Debugging tools (optional)

## Inputs
- **error**: Error message or stack trace (string)
- **code**: Source code context (string or file path)
- **language**: Programming language
- **options**: Debugging options (object)
  - `verbose`: boolean (default: false)
  - `suggestFixes`: boolean (default: true)
  - `analyzePerformance`: boolean (default: false)

## Outputs
Returns debugging analysis and fixes:
```json
{
  "errorType": "ReferenceError",
  "rootCause": "Variable 'userData' is not defined in scope",
  "location": {
    "file": "src/user.js",
    "line": 42,
    "column": 15
  },
  "analysis": "The variable is used before declaration...",
  "suggestedFixes": [
    {
      "description": "Declare variable before use",
      "code": "const userData = await fetchUser(id);",
      "confidence": 0.95
    }
  ],
  "relatedIssues": []
}
```

## Usage Examples

### Example 1: Debug Runtime Error
```javascript
const result = await debug({
  error: "ReferenceError: userData is not defined",
  code: "./src/user.js",
  language: "javascript",
  options: { suggestFixes: true }
});
```

### Example 2: Analyze Performance Issue
```javascript
const result = await debug({
  error: "Slow query execution",
  code: "./src/database.js",
  language: "javascript",
  options: {
    analyzePerformance: true,
    verbose: true
  }
});
```

### Example 3: Memory Leak Detection
```javascript
const result = await debug({
  error: "Memory usage continuously increasing",
  code: "./src/server.js",
  language: "javascript",
  options: { analyzePerformance: true }
});
```

## Debugging Strategies

### 1. Reproduce the Issue
- Identify conditions that trigger the error
- Create minimal reproducible example
- Document steps to reproduce

### 2. Analyze Error Message
- Parse error type and message
- Examine stack trace
- Identify error location

### 3. Investigate Root Cause
- Review related code sections
- Check variable states
- Trace execution flow

### 4. Generate Fix
- Propose solution
- Validate fix doesn't break existing functionality
- Test edge cases

## Common Error Patterns

### Null/Undefined Errors
```javascript
// Problem
const name = user.profile.name; // user.profile is undefined

// Fix
const name = user?.profile?.name || 'Unknown';
```

### Async/Await Issues
```javascript
// Problem
const data = fetchData(); // Missing await
processData(data);

// Fix
const data = await fetchData();
processData(data);
```

### Type Errors
```javascript
// Problem
const total = "10" + 20; // "1020" instead of 30

// Fix
const total = parseInt("10") + 20; // 30
```

## Error Handling

### Common Debugging Challenges

**InsufficientContextError**
- Cause: Not enough code context to analyze
- Solution: Provide more surrounding code

**AmbiguousErrorError**
- Cause: Error message is unclear
- Solution: Provide stack trace or logs

**ComplexIssueError**
- Cause: Multiple interacting issues
- Solution: Debug step by step

## Best Practices
1. Use console.log/print strategically
2. Leverage debugger breakpoints
3. Check assumptions with assertions
4. Isolate problem area
5. Test one change at a time
6. Keep version control history
7. Document findings

## Dependencies
- Debugger tools (browser DevTools, pdb, gdb)
- Profiling tools
- Logging libraries

## Version History
- v1.0.0: Initial release
- v1.1.0: Added performance profiling
- v1.2.0: Enhanced fix suggestions
