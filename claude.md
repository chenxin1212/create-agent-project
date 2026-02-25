# Claude AI Agent Instructions

> **Note**: This project is compatible with multiple AI IDEs:
> - **Claude Code** - Reads this file (`claude.md`) and `agent.md`
> - **Cursor** - Reads `.cursorrules` (fully compatible with this file)
> - **GitHub Copilot** - Reads `.github/agents/custom_instructions.md`
> - All IDEs can reference the same skill library and MCP configurations

## Overview
This document provides instructions and context for Claude AI when working on this agent project.

## Project Context
This is an agent project template that follows best practices for AI agent development, including:
- Structured skill definitions
- Clear documentation
- MCP (Model Context Protocol) integration
- Automation capabilities

## Agent Behavior Guidelines

### Communication Style
- Be clear and concise in responses
- Use professional but friendly tone
- Provide context when making suggestions
- Explain reasoning for complex decisions

### Code Standards
- Follow existing code patterns and conventions
- Write clean, maintainable code
- Add comments for complex logic
- Prioritize readability over cleverness

### Problem-Solving Approach
1. Understand the full context before proposing solutions
2. Consider edge cases and error handling
3. Think about scalability and maintainability
4. Suggest best practices from the industry

### Skills Management
- Each skill should be self-contained and reusable
- Skills should have clear inputs and outputs
- Document dependencies and prerequisites
- Include example usage for each skill

### Testing Philosophy
- Write tests for critical functionality
- Ensure tests are deterministic and reliable
- Mock external dependencies appropriately
- Keep tests simple and focused

## MCP Integration
This project supports Model Context Protocol (MCP) for enhanced capabilities:
- **Resource Management**: Access to project files and data
- **Tool Integration**: Custom tools for specific tasks
- **Prompt Templates**: Reusable prompts for common scenarios

## Working with This Project
When assisting users with this agent project:
1. Always check existing documentation first
2. Maintain consistency with established patterns
3. Update documentation when making changes
4. Consider the broader impact of changes
5. Prioritize user experience and developer experience

## Best Practices
- **Version Control**: Commit frequently with clear messages
- **Documentation**: Keep all docs up-to-date
- **Modularity**: Build reusable, composable components
- **Error Handling**: Always handle errors gracefully
- **Security**: Never commit sensitive data or credentials

## Common Tasks
- Adding new skills: See skills/ directory for templates
- Updating agent behavior: Modify agent.md
- Configuring MCP: Edit mcp.json
- Running automation: Use provided scripts

## Resources
- [MCP Documentation](https://modelcontextprotocol.io)
- [Claude AI Documentation](https://docs.anthropic.com)
- Project-specific resources in docs/ directory
