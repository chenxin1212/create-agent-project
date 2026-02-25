# Quick Reference Guide

## Project Structure

```
create-agent-project/
├── agent.md              # Agent behavior configuration
├── claude.md             # Claude AI instructions
├── README.md             # Project overview
├── .gitignore            # Git ignore patterns
├── .env.example          # Environment variables template
├── LICENSE               # MIT License
├── CONTRIBUTING.md       # Contribution guidelines
│
├── skills/               # Reusable agent skills
│   ├── code-analysis.md
│   ├── test-generation.md
│   ├── documentation.md
│   ├── debugging.md
│   └── api-integration.md
│
├── mcp/                  # Model Context Protocol
│   ├── config.json       # MCP server configuration
│   └── README.md         # MCP documentation
│
└── docs/                 # Additional documentation
    └── getting-started.md
```

## Quick Commands

### Setup
```bash
# Clone repository
git clone https://github.com/chenxin1212/create-agent-project.git

# Configure environment
cp .env.example .env
# Edit .env with your API keys

# Test MCP server
npx -y @modelcontextprotocol/server-filesystem .
```

### File Overview

| File | Purpose |
|------|---------|
| `agent.md` | Defines agent identity, capabilities, and principles |
| `claude.md` | Instructions for Claude AI when working on this project |
| `skills/*.md` | Individual skill definitions with examples |
| `mcp/config.json` | MCP server configurations |
| `.env.example` | Template for environment variables |

## Skills at a Glance

| Skill | Purpose |
|-------|---------|
| **code-analysis** | Analyze code quality, security, and performance |
| **test-generation** | Generate comprehensive test suites |
| **documentation** | Create and maintain documentation |
| **debugging** | Identify and fix code issues |
| **api-integration** | Connect to external APIs |

## MCP Servers

| Server | Purpose | Requires |
|--------|---------|----------|
| **filesystem** | File operations | - |
| **git** | Git operations | - |
| **github** | GitHub integration | GITHUB_TOKEN |
| **brave-search** | Web search | BRAVE_API_KEY |
| **memory** | Persistent storage | - |

## Common Patterns

### Using a Skill
```javascript
const result = await skillName({
  input: data,
  options: { ... }
});
```

### Error Handling
```javascript
try {
  const result = await operation();
} catch (error) {
  console.error('Operation failed:', error);
}
```

### MCP Server Usage
```javascript
// Via configured server
const files = await filesystem.list('./src');
const commits = await git.log();
```

## Environment Variables

```bash
# Required for GitHub integration
GITHUB_TOKEN=ghp_xxxxx

# Optional for web search
BRAVE_API_KEY=BSA_xxxxx
```

## Key Concepts

### Agent
- Defined in `agent.md`
- Has specific capabilities (skills)
- Follows operating principles
- Uses MCP for enhanced functionality

### Skills
- Self-contained capabilities
- Reusable across projects
- Well-documented with examples
- Composable for complex tasks

### MCP
- Connects agent to external resources
- Provides tools and data access
- Enables automation
- Maintains context/memory

## Next Steps

1. ✅ Review [Getting Started Guide](./docs/getting-started.md)
2. ✅ Configure environment variables
3. ✅ Explore available skills
4. ✅ Set up MCP servers
5. ✅ Build your first automation

## Resources

- [Full Documentation](./README.md)
- [Getting Started](./docs/getting-started.md)
- [Skills Overview](./skills/README.md)
- [MCP Setup](./mcp/README.md)
- [Contributing](./CONTRIBUTING.md)

## Tips

- Start with existing skills before creating new ones
- Compose skills for complex tasks
- Test thoroughly before deploying
- Keep documentation up-to-date
- Use version control for all changes
- Never commit sensitive credentials

## Support

- 📖 Check documentation
- 🔍 Review examples
- 💬 Open an issue
- 🤝 Contribute improvements
