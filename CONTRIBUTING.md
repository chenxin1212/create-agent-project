# Contributing to Create Agent Project

Thank you for your interest in contributing! This document provides guidelines for contributing to this project.

## How to Contribute

### 1. Fork and Clone
```bash
git clone https://github.com/your-username/create-agent-project.git
cd create-agent-project
```

### 2. Create a Branch
```bash
git checkout -b feature/your-feature-name
```

### 3. Make Changes
- Follow existing code patterns
- Update documentation as needed
- Add tests if applicable
- Ensure code quality

### 4. Commit Changes
```bash
git add .
git commit -m "Add: Brief description of changes"
```

Use conventional commit messages:
- `Add:` for new features
- `Fix:` for bug fixes
- `Update:` for updates to existing features
- `Docs:` for documentation changes
- `Refactor:` for code refactoring

### 5. Submit Pull Request
- Push to your fork
- Create a pull request
- Describe your changes clearly
- Link any related issues

## Contribution Areas

### Adding New Skills
1. Create skill file in `skills/` directory
2. Follow the skill template structure
3. Include all required sections:
   - Overview
   - Description
   - Prerequisites
   - Inputs/Outputs
   - Usage Examples
   - Error Handling
4. Add skill to `skills/README.md`
5. Test thoroughly

### Improving Documentation
- Fix typos or errors
- Add clarifying examples
- Expand existing sections
- Create new guides
- Update outdated information

### MCP Server Configurations
- Add new MCP server configurations
- Document setup procedures
- Provide usage examples
- Include troubleshooting tips

### Bug Fixes
- Identify the issue clearly
- Provide minimal reproduction steps
- Include fix with explanation
- Add tests if applicable

## Code Standards

### Documentation Style
- Use clear, concise language
- Include practical examples
- Add code snippets where helpful
- Keep formatting consistent
- Use proper markdown syntax

### Skill Structure
Every skill should include:
```markdown
# Skill: Name

## Overview
Brief description

## Description
Detailed capabilities

## Prerequisites
Required dependencies

## Inputs
Expected parameters

## Outputs
Return values

## Usage Examples
Practical examples

## Error Handling
Common errors and solutions

## Dependencies
Required libraries/tools

## Version History
Changelog
```

### File Organization
- Skills in `skills/` directory
- Documentation in `docs/` directory
- MCP configs in `mcp/` directory
- Keep related files together

## Testing

### For Skills
- Test all usage examples
- Verify error handling
- Check edge cases
- Validate outputs

### For Documentation
- Check all links work
- Verify code examples run
- Test commands and procedures
- Ensure clarity and accuracy

## Review Process

1. **Self Review**: Review your own changes first
2. **Documentation**: Ensure docs are updated
3. **Testing**: Test your changes thoroughly
4. **Pull Request**: Submit with clear description
5. **Feedback**: Address review comments
6. **Merge**: Maintainer will merge when ready

## Questions?

- Open an issue for discussion
- Review existing documentation
- Check previous pull requests
- Ask for clarification

## Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Help others learn
- Focus on the best solution
- Keep discussions professional

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

## Thank You!

Your contributions help make this project better for everyone. We appreciate your time and effort!
