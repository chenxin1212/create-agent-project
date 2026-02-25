# Skills Directory

This directory contains reusable skills that the agent can utilize to perform various tasks.

## Structure
Each skill should be organized in its own file or subdirectory:
- `skill-name.md` or `skill-name/` for simple skills
- `skill-name/index.md` for complex skills with multiple components

## Skill Template
Each skill should include:
1. **Name**: Clear, descriptive name
2. **Description**: What the skill does
3. **Prerequisites**: Required tools, libraries, or context
4. **Inputs**: Expected parameters or data
5. **Outputs**: What the skill produces
6. **Examples**: Usage examples
7. **Error Handling**: Common errors and solutions

## Available Skills
- [Code Analysis](./code-analysis.md) - Analyze code quality and structure
- [Test Generation](./test-generation.md) - Generate test cases
- [Documentation](./documentation.md) - Create and update documentation
- [Debugging](./debugging.md) - Debug and fix code issues
- [API Integration](./api-integration.md) - Integrate with external APIs

## Creating New Skills
1. Copy the skill template
2. Fill in all sections
3. Test the skill thoroughly
4. Add it to the list above
5. Update any related documentation

## Best Practices
- Keep skills focused and single-purpose
- Make skills composable
- Document dependencies clearly
- Include error handling
- Provide usage examples
- Version skills when making breaking changes
