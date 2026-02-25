# Create Agent Project

> **开箱即用的 AI 智能代理项目模板 | Ready-to-use AI Agent Project Template**

**[中文文档](./README_CN.md)** | **[English](#english)**

---

## 🚀 Quick Start

**Clone and use immediately - optimized for Claude Code and Cursor!**

```bash
# Clone the repository
git clone https://github.com/chenxin1212/create-agent-project.git
cd create-agent-project

# One-command setup
bash setup.sh

# Start building your agent!
```

<a name="english"></a>
## Overview

This is a **ready-to-use** template for creating AI agent projects, optimized for AI IDEs like **Claude Code** and **Cursor**. Just clone and start using - no extra configuration needed!

### ✨ Key Features

- 🎯 **Ready to Use** - Clone and use immediately with Claude Code, Cursor, or any AI IDE
- 📚 **Structured Skills** - 5 complete, reusable skills (code analysis, testing, documentation, debugging, API integration)
- 🤖 **AI IDE Optimized** - Pre-configured with `.cursorrules`, `claude.md`, and VS Code settings
- 🔌 **MCP Integration** - Model Context Protocol servers pre-configured (filesystem, git, GitHub, web search, memory)
- ⚙️ **Automation Ready** - Complete examples and patterns for building automated workflows
- 📖 **Bilingual Documentation** - Complete guides in both Chinese and English
- 🛠️ **One-Command Setup** - `setup.sh` script for instant initialization

### 🎯 Works With

- ✅ **Claude Code** - Reads `claude.md` and `agent.md` automatically
- ✅ **Cursor** - Uses `.cursorrules` for project-specific AI behavior
- ✅ **VS Code + GitHub Copilot** - Workspace and settings pre-configured
- ✅ **Any AI IDE** - Standard project structure works everywhere

## Features

### 🎯 Pre-built Skills
- **Code Analysis**: Analyze code quality, security, and performance
- **Test Generation**: Automatically generate comprehensive test suites
- **Documentation**: Create and maintain project documentation
- **Debugging**: Identify and fix code issues systematically
- **API Integration**: Connect to external services and APIs

### 🔧 MCP Server Integration
- **Filesystem**: Access project files and directories
- **Git**: Repository management and operations
- **GitHub**: Issues, PRs, and repository automation
- **Brave Search**: Web search for current information
- **Memory**: Persistent context across sessions

### 📋 Best Practices
- Clear documentation standards
- Modular, composable skills
- Comprehensive error handling
- Security considerations
- Testing guidelines

## Project Structure

```
.
├── agent.md              # Agent configuration and behavior
├── claude.md             # Claude AI instructions
├── skills/               # Reusable agent skills
│   ├── code-analysis.md
│   ├── test-generation.md
│   ├── documentation.md
│   ├── debugging.md
│   └── api-integration.md
├── mcp/                  # MCP server configurations
│   ├── config.json       # MCP server settings
│   └── README.md         # MCP documentation
├── docs/                 # Additional documentation
│   └── getting-started.md
└── README.md             # This file
```

## Documentation

- **[Getting Started](./docs/getting-started.md)** - Complete setup guide
- **[Agent Configuration](./agent.md)** - Agent behavior and capabilities
- **[Claude Instructions](./claude.md)** - Instructions for Claude AI
- **[Skills Directory](./skills/README.md)** - Available skills and how to create new ones
- **[MCP Configuration](./mcp/README.md)** - MCP server setup and usage

## Usage Examples

### Example 1: Automated Code Review
```javascript
// Use code analysis skill
const analysis = await analyzeCode({
  code: './src/app.js',
  language: 'javascript',
  options: { checkSecurity: true, checkPerformance: true }
});

// Post results to GitHub
await github.createReview(pullRequestId, analysis);
```

### Example 2: Generate Tests
```javascript
// Generate comprehensive test suite
const tests = await generateTests({
  code: './src/calculator.js',
  language: 'javascript',
  framework: 'jest',
  options: { edgeCases: true, mocks: true }
});

// Write tests to file
await filesystem.writeFile('./tests/calculator.test.js', tests.tests);
```

### Example 3: Automated Documentation
```javascript
// Generate API documentation
const docs = await generateDocumentation({
  source: './src/api',
  type: 'api',
  format: 'markdown',
  options: { includeExamples: true }
});

// Save documentation
await filesystem.writeFile('./docs/API.md', docs.content);
```

## Configuration

### Environment Variables
Create a `.env` file with your API keys:
```bash
# GitHub integration
GITHUB_TOKEN=your_github_token

# Brave Search (optional)
BRAVE_API_KEY=your_brave_api_key
```

### MCP Servers
Configure MCP servers in `mcp/config.json`. Customize which servers are enabled and their settings based on your needs.

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Update documentation
6. Submit a pull request

## Best Practices

1. **Keep Skills Focused**: Each skill should have a single, clear purpose
2. **Document Everything**: Add clear descriptions, examples, and error handling
3. **Test Thoroughly**: Validate skills before using in production
4. **Handle Errors**: Always include proper error handling
5. **Use Version Control**: Commit frequently with clear messages
6. **Security First**: Never commit sensitive credentials

## Resources

- [Model Context Protocol Documentation](https://modelcontextprotocol.io)
- [Claude AI Documentation](https://docs.anthropic.com)
- [MCP Servers Repository](https://github.com/modelcontextprotocol/servers)

## License

MIT License - feel free to use this template for your projects!

## Support

For questions and support:
- Check the [documentation](./docs/getting-started.md)
- Review [skill examples](./skills/README.md)
- Open an issue on GitHub

---

**Ready to build amazing AI agents?** Start with the [Getting Started Guide](./docs/getting-started.md)!
