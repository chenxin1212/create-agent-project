# Skill: Test Generation

## Overview
Automatically generates test cases for code to ensure quality and reliability.

## Description
This skill creates comprehensive test suites including:
- Unit tests
- Integration tests
- Edge case testing
- Mock data generation
- Test fixtures and helpers
- Code coverage analysis

## Prerequisites
- Access to source code
- Testing framework knowledge
- Understanding of code structure

## Inputs
- **code**: Source code to test (string or file path)
- **language**: Programming language
- **framework**: Testing framework (e.g., "jest", "pytest", "junit")
- **options**: Generation options (object)
  - `testType`: "unit" | "integration" | "e2e" (default: "unit")
  - `coverage`: boolean (default: true)
  - `edgeCases`: boolean (default: true)
  - `mocks`: boolean (default: true)

## Outputs
Returns generated test code and metadata:
```json
{
  "tests": "// Generated test code",
  "metadata": {
    "testCount": 15,
    "coverageTarget": 80,
    "frameworks": ["jest"],
    "mockedDependencies": ["database", "api"]
  },
  "fixtures": {
    "users.json": "{ ... }",
    "config.json": "{ ... }"
  }
}
```

## Usage Examples

### Example 1: Generate Unit Tests
```javascript
const result = await generateTests({
  code: `
    function calculateTotal(items) {
      return items.reduce((sum, item) => sum + item.price, 0);
    }
  `,
  language: "javascript",
  framework: "jest",
  options: { testType: "unit" }
});
```

### Example 2: Integration Tests with Mocks
```javascript
const result = await generateTests({
  code: "./src/services/user-service.js",
  language: "javascript",
  framework: "jest",
  options: {
    testType: "integration",
    mocks: true,
    edgeCases: true
  }
});
```

### Example 3: Python Unit Tests
```javascript
const result = await generateTests({
  code: "./src/calculator.py",
  language: "python",
  framework: "pytest",
  options: {
    testType: "unit",
    coverage: true
  }
});
```

## Generated Test Example
```javascript
// Input: calculateTotal function
// Output: Jest test suite

describe('calculateTotal', () => {
  it('should return 0 for empty array', () => {
    expect(calculateTotal([])).toBe(0);
  });
  
  it('should calculate total for single item', () => {
    const items = [{ price: 10 }];
    expect(calculateTotal(items)).toBe(10);
  });
  
  it('should calculate total for multiple items', () => {
    const items = [
      { price: 10 },
      { price: 20 },
      { price: 30 }
    ];
    expect(calculateTotal(items)).toBe(60);
  });
  
  it('should handle negative prices', () => {
    const items = [{ price: -10 }];
    expect(calculateTotal(items)).toBe(-10);
  });
  
  it('should handle decimal prices', () => {
    const items = [{ price: 10.99 }, { price: 20.50 }];
    expect(calculateTotal(items)).toBe(31.49);
  });
});
```

## Error Handling

### Common Errors

**NoTestFrameworkError**
- Cause: Testing framework not specified or supported
- Solution: Specify a supported framework

**InvalidCodeStructureError**
- Cause: Code structure prevents test generation
- Solution: Refactor code for testability

**DependencyError**
- Cause: Required testing dependencies not available
- Solution: Install testing framework

## Test Quality Guidelines
Generated tests should:
1. Cover happy path scenarios
2. Test edge cases and boundaries
3. Validate error handling
4. Use descriptive test names
5. Include setup and teardown
6. Mock external dependencies
7. Be deterministic and isolated

## Dependencies
- Testing frameworks (jest, pytest, junit, etc.)
- Mocking libraries
- Coverage tools

## Version History
- v1.0.0: Initial release with basic unit test generation
- v1.1.0: Added integration test support
- v1.2.0: Enhanced edge case detection
- v1.3.0: Added fixture generation
