# 创建智能代理项目 / Create Agent Project

[English](#english) | [中文](#chinese)

---

<a name="chinese"></a>
## 🇨🇳 中文说明

### 快速开始

这是一个**开箱即用**的 AI 智能代理项目模板，专为 Claude Code 和 Cursor 等 AI IDE 优化。

#### 一键安装

```bash
# 克隆项目
git clone https://github.com/chenxin1212/create-agent-project.git
cd create-agent-project

# 运行安装脚本
bash setup.sh

# 开始使用！
```

**📖 详细使用指南：[USAGE.md](./USAGE.md)** - Cursor、Claude Code 和 VS Code 的分步说明

### ✨ 特性

- 🎯 **开箱即用** - 克隆后立即可用，无需额外配置
- 🤖 **AI IDE 优化** - 为 Claude Code 和 Cursor 预配置
- 📚 **结构化技能** - 5 个完整的可复用技能（代码分析、测试生成、文档编写、调试、API 集成）
- 🔌 **MCP 集成** - 预配置的模型上下文协议服务器
- 💡 **自动化示例** - 实用的自动化模式和示例
- 📖 **完整文档** - 中英文双语文档

### 📁 项目结构

```
create-agent-project/
├── .github/agents/       # AI 助手配置（GitHub Copilot 等）
├── .cursor/              # Cursor 专属配置
├── .cursorrules          # Cursor AI 规则（与 Claude 完全兼容）
├── .vscode/              # VS Code 配置
├── agent.md              # 智能代理配置
├── claude.md             # Claude AI 指令
├── skills/               # 可复用技能
│   ├── code-analysis.md      # 代码分析
│   ├── test-generation.md    # 测试生成
│   ├── documentation.md      # 文档编写
│   ├── debugging.md          # 调试
│   └── api-integration.md    # API 集成
├── mcp/                  # MCP 服务器配置
│   ├── config.json
│   └── README.md
├── docs/                 # 文档
├── examples/             # 自动化示例
└── setup.sh              # 一键安装脚本
```

**注意**：本项目采用**跨 IDE 兼容**结构。所有 AI 助手（Claude Code、Cursor、GitHub Copilot）都可以读取和使用相同的配置和技能。
1. 克隆项目
2. 用 Claude Code 打开
3. Claude 会自动读取 `claude.md` 和 `agent.md`
4. **与 Cursor 完全兼容** - 使用相同的技能库和配置
5. 立即开始使用预定义的技能！

#### 在 VS Code 中使用

1. 克隆项目
2. 用 VS Code 打开工作区文件：`agent-project.code-workspace`
3. 安装推荐的扩展（GitHub Copilot）
4. 开始编码！

### 📚 技能说明

#### 1. 代码分析 (Code Analysis)
- 代码质量评估
- 安全漏洞检测
- 性能优化建议
- 最佳实践检查

#### 2. 测试生成 (Test Generation)
- 单元测试生成
- 集成测试创建
- 边界用例测试
- Mock 数据生成

#### 3. 文档编写 (Documentation)
- API 文档生成
- README 创建
- 代码注释
- 用户指南

#### 4. 调试 (Debugging)
- 错误识别
- 根因分析
- 修复建议
- 性能分析

#### 5. API 集成 (API Integration)
- API 客户端生成
- 认证处理
- 重试逻辑
- 响应缓存

### 🔌 MCP 服务器

预配置的 MCP 服务器：

- **filesystem** - 文件系统操作
- **git** - Git 版本控制
- **github** - GitHub API 集成
- **brave-search** - 网页搜索
- **memory** - 持久化存储

### ⚙️ 配置

#### 环境变量设置

```bash
# 复制环境变量模板
cp .env.example .env

# 编辑 .env 添加你的 API 密钥
# GITHUB_TOKEN=你的_github_token
# BRAVE_API_KEY=你的_brave_api_key
```

### 💡 使用示例

#### 自动化代码审查

```javascript
// 使用代码分析技能
const analysis = await analyzeCode({
  code: './src/app.js',
  language: 'javascript',
  options: { checkSecurity: true }
});

// 发布审查到 GitHub
await github.createReview(prNumber, analysis);
```

### 📖 文档

- [快速开始](./docs/getting-started.md) - 完整安装指南
- [技能总览](./skills/README.md) - 所有可用技能
- [MCP 配置](./mcp/README.md) - MCP 服务器设置
- [快速参考](./docs/QUICK_REFERENCE.md) - 常用命令
- [自动化示例](./examples/README.md) - 实用示例

### 🤝 贡献

欢迎贡献！请查看 [CONTRIBUTING.md](./CONTRIBUTING.md)

### 📄 许可证

MIT License - 请自由使用于您的项目！

---

<a name="english"></a>
## 🇬🇧 English

### Quick Start

This is a **ready-to-use** AI agent project template, optimized for AI IDEs like Claude Code and Cursor.

#### One-Command Setup

```bash
# Clone the project
git clone https://github.com/chenxin1212/create-agent-project.git
cd create-agent-project

# Run setup script
bash setup.sh

# Start using!
```

### ✨ Features

- 🎯 **Ready to Use** - Clone and use immediately, no extra configuration needed
- 🤖 **AI IDE Optimized** - Pre-configured for Claude Code and Cursor
- 📚 **Structured Skills** - 5 complete reusable skills (code analysis, test generation, documentation, debugging, API integration)
- 🔌 **MCP Integration** - Pre-configured Model Context Protocol servers
- 💡 **Automation Examples** - Practical automation patterns and examples
- 📖 **Complete Documentation** - Bilingual documentation (Chinese & English)

### 📁 Project Structure

```
create-agent-project/
├── .cursorrules          # Cursor IDE configuration
├── .vscode/              # VS Code configuration
├── agent.md              # Agent configuration
├── claude.md             # Claude AI instructions
├── skills/               # Reusable skills
│   ├── code-analysis.md      # Code analysis
│   ├── test-generation.md    # Test generation
│   ├── documentation.md      # Documentation
│   ├── debugging.md          # Debugging
│   └── api-integration.md    # API integration
├── mcp/                  # MCP server configuration
├── docs/                 # Documentation
├── examples/             # Automation examples
└── setup.sh              # One-command setup script
```

### 🚀 Usage

#### Using with Cursor

1. Clone the project
2. Open project folder in Cursor
3. Cursor automatically reads `.cursorrules`
4. Start building your agent!

#### Using with Claude Code

1. Clone the project
2. Open with Claude Code
3. Claude automatically reads `claude.md` and `agent.md`
4. Start using pre-defined skills immediately!

#### Using with VS Code

1. Clone the project
2. Open workspace file in VS Code: `agent-project.code-workspace`
3. Install recommended extensions (GitHub Copilot)
4. Start coding!

### 📚 Skills Overview

#### 1. Code Analysis
- Code quality assessment
- Security vulnerability detection
- Performance optimization suggestions
- Best practice compliance

#### 2. Test Generation
- Unit test generation
- Integration test creation
- Edge case testing
- Mock data generation

#### 3. Documentation
- API documentation generation
- README creation
- Code comments
- User guides

#### 4. Debugging
- Error identification
- Root cause analysis
- Fix suggestions
- Performance profiling

#### 5. API Integration
- API client generation
- Authentication handling
- Retry logic
- Response caching

### 🔌 MCP Servers

Pre-configured MCP servers:

- **filesystem** - File system operations
- **git** - Git version control
- **github** - GitHub API integration
- **brave-search** - Web search
- **memory** - Persistent storage

### ⚙️ Configuration

#### Environment Variables Setup

```bash
# Copy environment template
cp .env.example .env

# Edit .env to add your API keys
# GITHUB_TOKEN=your_github_token
# BRAVE_API_KEY=your_brave_api_key
```

### 💡 Usage Examples

#### Automated Code Review

```javascript
// Use code analysis skill
const analysis = await analyzeCode({
  code: './src/app.js',
  language: 'javascript',
  options: { checkSecurity: true }
});

// Post review to GitHub
await github.createReview(prNumber, analysis);
```

### 📖 Documentation

- [Getting Started](./docs/getting-started.md) - Complete setup guide
- [Skills Overview](./skills/README.md) - All available skills
- [MCP Configuration](./mcp/README.md) - MCP server setup
- [Quick Reference](./docs/QUICK_REFERENCE.md) - Common commands
- [Automation Examples](./examples/README.md) - Practical examples

### 🤝 Contributing

Contributions welcome! See [CONTRIBUTING.md](./CONTRIBUTING.md)

### 📄 License

MIT License - Feel free to use in your projects!
