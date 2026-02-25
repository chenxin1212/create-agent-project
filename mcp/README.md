# MCP (Model Context Protocol) Configuration

## Overview
This directory contains MCP server configurations for enhanced agent capabilities.

## What is MCP?
Model Context Protocol (MCP) is an open protocol that enables AI models to securely access external data sources and tools. It provides a standardized way to connect AI assistants to various services and resources.

## Available MCP Servers

### 1. Filesystem Server
**Purpose**: Access to project files and directories  
**Capabilities**:
- Read file contents
- List directory contents
- Search files
- Monitor file changes

**Configuration**:
```json
{
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-filesystem", "."]
}
```

### 2. Git Server
**Purpose**: Git operations and repository management  
**Capabilities**:
- View commit history
- Check repository status
- Create branches
- View diffs

**Configuration**:
```json
{
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-git"]
}
```

### 3. GitHub Server
**Purpose**: GitHub API integration  
**Capabilities**:
- Create and manage issues
- Review pull requests
- Access repository metadata
- Manage labels and milestones

**Setup**:
1. Create GitHub personal access token
2. Set `GITHUB_TOKEN` environment variable
3. Configure in `config.json`

**Configuration**:
```json
{
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-github"],
  "env": {
    "GITHUB_TOKEN": "${GITHUB_TOKEN}"
  }
}
```

### 4. Brave Search Server
**Purpose**: Web search capabilities  
**Capabilities**:
- Search the web
- Get current information
- Research topics
- Find documentation

**Setup**:
1. Get Brave Search API key from https://brave.com/search/api/
2. Set `BRAVE_API_KEY` environment variable

**Configuration**:
```json
{
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-brave-search"],
  "env": {
    "BRAVE_API_KEY": "${BRAVE_API_KEY}"
  }
}
```

### 5. Memory Server
**Purpose**: Persistent memory across sessions  
**Capabilities**:
- Store context and facts
- Recall previous conversations
- Maintain user preferences
- Build knowledge base

**Configuration**:
```json
{
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-memory"]
}
```

## Setup Instructions

### 1. Install Node.js
Ensure Node.js 18+ is installed:
```bash
node --version
```

### 2. Configure Environment Variables
Create a `.env` file in the project root:
```bash
# GitHub integration
GITHUB_TOKEN=your_github_token_here

# Brave Search
BRAVE_API_KEY=your_brave_api_key_here
```

### 3. Test MCP Servers
Test individual servers:
```bash
# Test filesystem server
npx -y @modelcontextprotocol/server-filesystem .

# Test git server
npx -y @modelcontextprotocol/server-git
```

### 4. Configure Claude Desktop (Optional)
To use with Claude Desktop, add to configuration file:

**macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`  
**Windows**: `%APPDATA%/Claude/claude_desktop_config.json`

Copy the content from `config.json` to the Claude configuration.

## Custom MCP Servers

### Creating a Custom Server
1. Install MCP SDK:
```bash
npm install @modelcontextprotocol/sdk
```

2. Create server implementation:
```javascript
import { Server } from '@modelcontextprotocol/sdk/server/index.js';
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js';

const server = new Server({
  name: 'custom-server',
  version: '1.0.0'
});

// Register tools
server.setRequestHandler('tools/list', async () => ({
  tools: [{
    name: 'custom_tool',
    description: 'Does something useful',
    inputSchema: {
      type: 'object',
      properties: {
        input: { type: 'string' }
      }
    }
  }]
}));

// Start server
const transport = new StdioServerTransport();
await server.connect(transport);
```

3. Add to `config.json`:
```json
{
  "custom-server": {
    "command": "node",
    "args": ["./path/to/custom-server.js"],
    "description": "Custom MCP server"
  }
}
```

## Automation Examples

### Example 1: Automated Code Review
```javascript
// Uses GitHub + Git servers
async function automateCodeReview(prNumber) {
  // Get PR details via GitHub server
  const pr = await github.getPullRequest(prNumber);
  
  // Get diff via Git server
  const diff = await git.diff(pr.base, pr.head);
  
  // Analyze code
  const issues = await analyzeCode(diff);
  
  // Post review via GitHub server
  await github.createReview(prNumber, issues);
}
```

### Example 2: Documentation Sync
```javascript
// Uses Filesystem + Memory servers
async function syncDocumentation() {
  // Read code files
  const files = await filesystem.list('./src');
  
  // Check what's documented
  const documented = await memory.recall('documented_files');
  
  // Generate docs for new files
  const newFiles = files.filter(f => !documented.includes(f));
  for (const file of newFiles) {
    const doc = await generateDocs(file);
    await filesystem.write(`./docs/${file}.md`, doc);
  }
  
  // Update memory
  await memory.store('documented_files', files);
}
```

### Example 3: Research Assistant
```javascript
// Uses Brave Search + Memory servers
async function researchTopic(topic) {
  // Check if already researched
  const cached = await memory.recall(`research:${topic}`);
  if (cached) return cached;
  
  // Search for information
  const results = await braveSearch.search(topic);
  
  // Synthesize findings
  const summary = await synthesize(results);
  
  // Store for future reference
  await memory.store(`research:${topic}`, summary);
  
  return summary;
}
```

## Security Best Practices

1. **Never commit API keys**: Use environment variables
2. **Limit filesystem access**: Restrict to project directory
3. **Validate inputs**: Always validate data from external sources
4. **Use minimal permissions**: Request only necessary scopes
5. **Rotate credentials**: Regularly update API keys and tokens
6. **Monitor usage**: Track API calls and resource usage
7. **Audit logs**: Keep logs of all MCP server interactions

## Troubleshooting

### Server Not Starting
- Check Node.js version (18+ required)
- Verify NPX is available
- Check server logs for errors

### Authentication Failures
- Verify environment variables are set
- Check token/key validity
- Ensure proper permissions/scopes

### Performance Issues
- Limit concurrent requests
- Implement caching
- Use appropriate timeouts

## Resources
- [MCP Documentation](https://modelcontextprotocol.io)
- [MCP GitHub Repository](https://github.com/modelcontextprotocol)
- [Available MCP Servers](https://github.com/modelcontextprotocol/servers)
- [MCP SDK](https://github.com/modelcontextprotocol/typescript-sdk)

## Version History
- v1.0.0: Initial MCP configuration
- v1.1.0: Added custom server support
- v1.2.0: Enhanced security documentation
