# Claude Code Project

This is a boilerplate project for building applications with Claude Code and AI assistance.

## Overview

Claude Code is an AI-powered development environment that helps you write, edit, and understand code more efficiently. This boilerplate provides a starting configuration to get you up and running quickly.

## Features

- 🤖 **AI-Powered Code Completion**: Get intelligent code suggestions as you type
- 💬 **Interactive Chat**: Ask questions and get help with your code
- ✏️ **Inline Editing**: Make changes directly with AI assistance
- 🔄 **Context Awareness**: Claude understands your entire project context
- 🔧 **Refactoring Support**: Automated code improvements and restructuring

## Project Structure

```
.
├── .claude/
│   └── setting.json    # Claude Code configuration
├── .mcp.json          # Model Context Protocol server configuration
├── claude.md          # This file - Claude Code documentation
├── agent.md           # Agent-specific documentation
└── README.md          # Project readme
```

## Getting Started

1. **Install Claude Code**: Make sure you have Claude Code installed and configured
2. **Configure Settings**: Review and customize `.claude/setting.json` for your project needs
3. **Set Up MCP Servers**: Configure Model Context Protocol servers in `.mcp.json`
4. **Start Coding**: Open the project in Claude Code and start building!

## Configuration

### Claude Settings (`.claude/setting.json`)

The settings file contains:
- Project metadata (name, description, version)
- Code style preferences (indent size, spacing, line endings)
- AI model configuration (model version, temperature, token limits)
- Feature toggles (auto-suggestions, context awareness, etc.)

### MCP Configuration (`.mcp.json`)

The MCP configuration defines Model Context Protocol servers that extend Claude's capabilities:
- **filesystem**: Access to local file system operations
- **github**: Integration with GitHub repositories
- **memory**: Persistent memory across sessions

## Environment Variables

Some MCP servers require environment variables:
- `GITHUB_PERSONAL_ACCESS_TOKEN`: Required for GitHub MCP server

## Customization

Feel free to modify the configuration files to match your project requirements:
- Adjust AI model parameters in `.claude/setting.json`
- Add or remove MCP servers in `.mcp.json`
- Update code style preferences to match your team's conventions

## Tips for Success

1. **Provide Context**: The more context Claude has about your project, the better suggestions you'll get
2. **Iterate Incrementally**: Make small changes and verify them before moving on
3. **Use Chat Effectively**: Ask specific questions and provide relevant code snippets
4. **Review AI Suggestions**: Always review and understand AI-generated code before accepting it

## Learn More

- [Claude Code Documentation](https://www.anthropic.com/claude)
- [Model Context Protocol](https://modelcontextprotocol.io/)
- [Agent Development Guide](./agent.md)

## Support

If you encounter issues or have questions:
1. Check the configuration files for errors
2. Review the logs in Claude Code
3. Consult the official documentation
4. Reach out to the community for help

---

Happy coding with Claude! 🚀
