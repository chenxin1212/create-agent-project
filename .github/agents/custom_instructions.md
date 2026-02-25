# Agent Project - Custom Instructions

> This file provides instructions for AI assistants (Claude, Cursor, GitHub Copilot) working on this agent project.

## Project Overview

This is an **agent project template** for creating AI agents with:
- Structured, reusable skills
- MCP (Model Context Protocol) integration
- Automation capabilities
- Best practices and documentation

## Project Structure

```
.
├── skills/               # Reusable agent capabilities
│   ├── code-analysis.md
│   ├── test-generation.md
│   ├── documentation.md
│   ├── debugging.md
│   └── api-integration.md
├── mcp/                  # Model Context Protocol configurations
│   ├── config.json       # MCP server settings
│   └── README.md
├── docs/                 # Documentation
│   ├── getting-started.md
│   └── QUICK_REFERENCE.md
├── examples/             # Automation examples
├── agent.md              # Agent configuration and behavior
└── claude.md             # Claude AI specific instructions
```

## Key Principles

1. **Use Existing Skills**: Always check `skills/` directory before creating new code
2. **Follow Patterns**: Maintain consistency with existing skill structure
3. **MCP First**: Utilize MCP servers (filesystem, git, github, search, memory)
4. **Document Everything**: Clear examples, inputs/outputs, error handling
5. **Compose Over Create**: Combine existing skills rather than building from scratch

## Available Skills

### 1. Code Analysis (`skills/code-analysis.md`)
- Code quality assessment
- Security vulnerability detection
- Performance optimization suggestions
- Best practice compliance

### 2. Test Generation (`skills/test-generation.md`)
- Unit test generation
- Integration test creation
- Edge case testing
- Mock data generation

### 3. Documentation (`skills/documentation.md`)
- API documentation generation
- README creation
- Code comments
- User guides

### 4. Debugging (`skills/debugging.md`)
- Error identification
- Root cause analysis
- Fix suggestions
- Performance profiling

### 5. API Integration (`skills/api-integration.md`)
- API client generation
- Authentication handling
- Retry logic
- Response caching

## MCP Servers Available

- **filesystem** - File operations
- **git** - Version control
- **github** - GitHub API integration
- **brave-search** - Web search
- **memory** - Persistent storage

## Code Standards

- Follow existing code patterns and conventions
- Write clean, maintainable code
- Add comments for complex logic
- Prioritize readability over cleverness
- Include comprehensive error handling
- Add usage examples for every function
- Document prerequisites and dependencies
- Use environment variables for sensitive data

## Problem-Solving Approach

1. Understand the full context before proposing solutions
2. Consider edge cases and error handling
3. Think about scalability and maintainability
4. Suggest best practices from the industry
5. Check existing skills and patterns first

## When Adding New Skills

1. Copy the skill template from existing skills
2. Include: Overview, Description, Prerequisites, Inputs, Outputs, Examples, Error Handling
3. Add skill to `skills/README.md`
4. Test thoroughly before committing
5. Document all dependencies

## When Creating Automations

- Use skills as building blocks
- Leverage MCP servers for external integrations
- Include configuration options
- Add error handling and logging
- Provide usage examples
- Document expected behavior

## Testing Philosophy

- Write tests for critical functionality
- Ensure tests are deterministic and reliable
- Mock external dependencies appropriately
- Keep tests simple and focused

## Best Practices

- **Version Control**: Commit frequently with clear messages
- **Documentation**: Keep all docs up-to-date
- **Modularity**: Build reusable, composable components
- **Error Handling**: Always handle errors gracefully
- **Security**: Never commit sensitive data or credentials

## Common Tasks

- **Adding new skills**: See `skills/` directory for templates
- **Updating agent behavior**: Modify `agent.md`
- **Configuring MCP**: Edit `mcp/config.json`
- **Running automation**: Use provided scripts in `examples/`

## Resources

- [Getting Started Guide](../../docs/getting-started.md)
- [Skills Overview](../../skills/README.md)
- [MCP Configuration](../../mcp/README.md)
- [Quick Reference](../../docs/QUICK_REFERENCE.md)
- [MCP Documentation](https://modelcontextprotocol.io)
- [Claude AI Documentation](https://docs.anthropic.com)

## Notes for AI Assistants

- Always check existing documentation before making changes
- Maintain consistency with established patterns
- Update documentation when making changes
- Consider the broader impact of changes
- Prioritize user experience and developer experience
- Reference specific skill files when suggesting implementations
