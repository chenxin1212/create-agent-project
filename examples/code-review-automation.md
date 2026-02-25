# Automated Code Review Example

## Overview
Automatically reviews code changes in pull requests using the code analysis skill and GitHub integration.

## Use Case
- Review PRs automatically when opened or updated
- Check code quality, security, and best practices
- Post review comments with findings
- Save developer time on routine reviews

## Prerequisites
- GitHub token with repo access
- MCP GitHub server configured
- Code analysis skill available

## Conceptual Flow

```
1. PR opened/updated
   ↓
2. Fetch PR details (GitHub MCP)
   ↓
3. Get changed files (GitHub MCP)
   ↓
4. Analyze each file (Code Analysis Skill)
   ↓
5. Generate review comments
   ↓
6. Post review to GitHub (GitHub MCP)
```

## Key Components

### 1. Get PR Changes
```javascript
// Fetch PR details via GitHub MCP
const pr = await github.getPullRequest(prNumber);

// Get changed files
const files = await github.getPullRequestFiles(prNumber);
```

### 2. Analyze Code
```javascript
// For each changed file
for (const file of files) {
  const content = await github.getFileContent(file.filename);
  
  const analysis = await analyzeCode({
    code: content,
    language: detectLanguage(file.filename),
    options: {
      checkSecurity: true,
      checkPerformance: true,
      checkStyle: true
    }
  });
  
  allIssues.push(...analysis.issues);
}
```

### 3. Post Review
```javascript
// Generate review comments
const comments = generateReviewComments(allIssues);

// Post review
await github.createReview({
  pull_number: prNumber,
  event: allIssues.length > 0 ? 'COMMENT' : 'APPROVE',
  comments: comments,
  body: generateReviewSummary(allIssues)
});
```

## Integration Options

### GitHub Actions
```yaml
name: Automated Code Review
on:
  pull_request:
    types: [opened, synchronize]

jobs:
  review:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Run Review
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: node automation/review-pr.js
```

### Webhook
Set up a webhook endpoint to trigger reviews on PR events.

### Scheduled
Run reviews periodically on open PRs to catch new issues.

## Expected Output

### Review Summary
```markdown
## 🤖 Automated Code Review

**Summary:**
- 🔴 Critical Issues: 1
- ⚠️ Warnings: 2
- 💡 Suggestions: 3

⚠️ Please address critical issues before merging.
```

### Individual Comment
```markdown
🔴 **security** (critical)

SQL injection vulnerability detected

**Suggestion:** Use parameterized queries
```

## Configuration

### Analysis Options
```javascript
{
  checkSecurity: true,      // Security scanning
  checkPerformance: true,   // Performance checks
  checkStyle: true,         // Code style
  complexityThreshold: 10   // Max complexity
}
```

### Review Behavior
```javascript
{
  autoApprove: true,        // Approve if no issues
  minSeverity: 'warning',   // Comment threshold
  requestChanges: true      // Request changes on critical
}
```

## Customization

### Filter Files
Skip certain files or patterns:
```javascript
const skipFiles = [
  'package-lock.json',
  '*.test.js',
  'dist/*'
];
```

### Add Custom Checks
```javascript
function customChecks(code, language) {
  // Add project-specific validations
  // Return array of issues
}
```

### Adjust Thresholds
```javascript
const severityThresholds = {
  critical: 0,     // Block merge
  warning: 5,      // Allow but comment
  suggestion: 10   // Informational only
};
```

## Best Practices

1. **Start Conservative**: Begin with warnings only
2. **Iterate**: Refine rules based on feedback
3. **Document Exceptions**: Note any skipped checks
4. **Monitor**: Track false positives
5. **Educate**: Help team understand issues

## Next Steps

1. Set up GitHub Actions workflow
2. Configure analysis thresholds
3. Add custom validation rules
4. Monitor effectiveness
5. Refine based on team feedback

## Related Resources

- [Code Analysis Skill](../skills/code-analysis.md)
- [MCP GitHub Server](../mcp/README.md)
- [Test Coverage Monitor](./test-coverage-monitor.md)
