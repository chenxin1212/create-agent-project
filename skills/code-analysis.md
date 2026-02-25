# Skill: Code Analysis

## Overview
Analyzes code for quality, structure, best practices, and potential issues.

## Description
This skill performs comprehensive code analysis including:
- Code quality assessment
- Security vulnerability detection
- Performance optimization opportunities
- Best practice compliance
- Code complexity metrics
- Dependency analysis

## Prerequisites
- Access to codebase
- Programming language knowledge
- Code analysis tools (optional)

## Inputs
- **code**: Source code to analyze (string or file path)
- **language**: Programming language (e.g., "python", "javascript", "java")
- **options**: Analysis options (object)
  - `checkSecurity`: boolean (default: true)
  - `checkPerformance`: boolean (default: true)
  - `checkStyle`: boolean (default: true)
  - `complexityThreshold`: number (default: 10)

## Outputs
Returns an analysis report containing:
```json
{
  "summary": {
    "totalIssues": 5,
    "critical": 1,
    "warnings": 3,
    "suggestions": 1
  },
  "issues": [
    {
      "type": "security",
      "severity": "critical",
      "line": 42,
      "message": "SQL injection vulnerability detected",
      "suggestion": "Use parameterized queries"
    }
  ],
  "metrics": {
    "linesOfCode": 250,
    "cyclomaticComplexity": 8,
    "maintainabilityIndex": 72
  },
  "recommendations": [
    "Consider refactoring function 'processData' to reduce complexity",
    "Add input validation for user-provided data"
  ]
}
```

## Usage Examples

### Example 1: Basic Analysis
```javascript
const result = await analyzeCode({
  code: `
    function getUserData(userId) {
      const query = "SELECT * FROM users WHERE id = " + userId;
      return db.execute(query);
    }
  `,
  language: "javascript"
});
```

### Example 2: Custom Options
```javascript
const result = await analyzeCode({
  code: sourceCode,
  language: "python",
  options: {
    checkSecurity: true,
    checkPerformance: true,
    checkStyle: false,
    complexityThreshold: 15
  }
});
```

### Example 3: File Analysis
```javascript
const result = await analyzeCode({
  code: "./src/main.py",
  language: "python",
  options: { checkSecurity: true }
});
```

## Error Handling

### Common Errors

**UnsupportedLanguageError**
- Cause: Language not supported
- Solution: Check supported languages list

**InvalidCodeError**
- Cause: Code syntax is invalid
- Solution: Verify code syntax before analysis

**FileNotFoundError**
- Cause: Specified file doesn't exist
- Solution: Check file path

## Implementation Details
```javascript
async function analyzeCode({ code, language, options = {} }) {
  // Validate inputs
  if (!code) throw new Error("Code is required");
  if (!language) throw new Error("Language is required");
  
  // Apply default options
  const config = {
    checkSecurity: true,
    checkPerformance: true,
    checkStyle: true,
    complexityThreshold: 10,
    ...options
  };
  
  // Perform analysis
  const issues = [];
  const metrics = {};
  
  // Security check
  if (config.checkSecurity) {
    issues.push(...detectSecurityIssues(code, language));
  }
  
  // Performance check
  if (config.checkPerformance) {
    issues.push(...detectPerformanceIssues(code, language));
  }
  
  // Style check
  if (config.checkStyle) {
    issues.push(...detectStyleIssues(code, language));
  }
  
  // Calculate metrics
  metrics.linesOfCode = countLines(code);
  metrics.cyclomaticComplexity = calculateComplexity(code, language);
  metrics.maintainabilityIndex = calculateMaintainability(code);
  
  // Generate recommendations
  const recommendations = generateRecommendations(issues, metrics);
  
  return {
    summary: summarizeIssues(issues),
    issues,
    metrics,
    recommendations
  };
}
```

## Dependencies
- Static analysis tools (language-specific)
- Security scanners
- Complexity calculators

## Version History
- v1.0.0: Initial release
- v1.1.0: Added complexity metrics
- v1.2.0: Enhanced security checks
