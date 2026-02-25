# Skill: Documentation Generation

## Overview
Creates and maintains comprehensive project documentation.

## Description
This skill generates various types of documentation:
- API documentation
- README files
- Code comments
- User guides
- Architecture diagrams
- Changelog
- Contributing guidelines

## Prerequisites
- Access to codebase
- Understanding of project structure
- Documentation standards knowledge

## Inputs
- **source**: Source code or existing docs (string or path)
- **type**: Documentation type
  - "api": API reference
  - "readme": Project README
  - "comments": Inline code comments
  - "guide": User guide
  - "architecture": Architecture documentation
- **format**: Output format ("markdown", "html", "pdf")
- **options**: Generation options (object)
  - `includeExamples`: boolean (default: true)
  - `includeTypes`: boolean (default: true)
  - `verbosity`: "minimal" | "standard" | "detailed" (default: "standard")

## Outputs
Returns generated documentation:
```json
{
  "content": "# Documentation Content...",
  "metadata": {
    "type": "api",
    "format": "markdown",
    "sections": 12,
    "wordCount": 2500
  },
  "files": {
    "README.md": "...",
    "API.md": "...",
    "CONTRIBUTING.md": "..."
  }
}
```

## Usage Examples

### Example 1: Generate API Documentation
```javascript
const result = await generateDocumentation({
  source: "./src/api",
  type: "api",
  format: "markdown",
  options: {
    includeExamples: true,
    includeTypes: true
  }
});
```

### Example 2: Create README
```javascript
const result = await generateDocumentation({
  source: "./",
  type: "readme",
  format: "markdown",
  options: {
    verbosity: "detailed"
  }
});
```

### Example 3: Add Code Comments
```javascript
const result = await generateDocumentation({
  source: "./src/utils.js",
  type: "comments",
  format: "inline",
  options: {
    includeTypes: true
  }
});
```

## Documentation Standards

### README Structure
```markdown
# Project Name
Brief description

## Features
- Feature 1
- Feature 2

## Installation
Step-by-step guide

## Usage
Examples and instructions

## API Reference
Link to detailed docs

## Contributing
Guidelines for contributors

## License
License information
```

### API Documentation
```markdown
## Function: processData

### Description
Processes input data and returns formatted result.

### Parameters
- `data` (Array): Input data to process
- `options` (Object): Configuration options
  - `format` (string): Output format (default: "json")
  - `validate` (boolean): Validate input (default: true)

### Returns
- `Promise<Object>`: Processed data

### Example
\`\`\`javascript
const result = await processData(items, {
  format: 'json',
  validate: true
});
\`\`\`

### Throws
- `ValidationError`: If input validation fails
- `ProcessingError`: If processing fails
```

## Error Handling

### Common Errors

**SourceNotFoundError**
- Cause: Source code/docs not found
- Solution: Verify path exists

**UnsupportedFormatError**
- Cause: Output format not supported
- Solution: Use supported format

**ParseError**
- Cause: Cannot parse source code
- Solution: Check code syntax

## Quality Criteria
Good documentation should:
1. Be clear and concise
2. Include practical examples
3. Cover edge cases
4. Stay up-to-date with code
5. Use consistent formatting
6. Be searchable and navigable
7. Include visual aids when helpful

## Dependencies
- Documentation parsers (JSDoc, Sphinx, etc.)
- Markdown processors
- Diagram generators

## Version History
- v1.0.0: Initial release
- v1.1.0: Added architecture docs
- v1.2.0: Enhanced API doc generation
