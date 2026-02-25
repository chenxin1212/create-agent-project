# How to Use This Project / 使用指南

> **跨 IDE 兼容 / Cross-IDE Compatible**: 本项目完全兼容 Cursor、Claude Code 和 GitHub Copilot。详见 [IDE兼容性指南](./docs/IDE_COMPATIBILITY.md)

[English](#english) | [中文](#chinese)

---

<a name="chinese"></a>
## 🇨🇳 中文使用指南

### 方法一：使用 Cursor

1. **克隆项目**
   ```bash
   git clone https://github.com/chenxin1212/create-agent-project.git
   cd create-agent-project
   ```

2. **运行设置脚本**
   ```bash
   bash setup.sh
   ```

3. **在 Cursor 中打开**
   - 启动 Cursor
   - 选择 "File" → "Open Folder"
   - 选择克隆的项目文件夹
   
4. **开始使用！**
   - Cursor 会自动读取 `.cursorrules` 文件
   - AI 会自动了解项目结构和可用技能
   - 直接开始创建你的智能代理！

#### Cursor 中的示例对话

```
你: 帮我分析一下这段代码的安全问题

Cursor AI: 我会使用 code-analysis 技能来检查代码安全性。
这个技能在 skills/code-analysis.md 中定义，
可以检测 SQL 注入、XSS 等常见安全漏洞...
```

---

### 方法二：使用 Claude Code (Claude Desktop)

1. **克隆项目**
   ```bash
   git clone https://github.com/chenxin1212/create-agent-project.git
   cd create-agent-project
   ```

2. **运行设置脚本**
   ```bash
   bash setup.sh
   ```

3. **在 Claude Code 中打开**
   - 启动 Claude Desktop 或 Claude Code
   - 打开项目文件夹
   
4. **Claude 会自动读取：**
   - `claude.md` - Claude AI 的指令
   - `agent.md` - 智能代理配置
   - `skills/` - 所有可用技能
   - `mcp/config.json` - MCP 服务器配置

5. **开始使用技能**
   ```
   你: 使用代码分析技能检查我的代码
   
   Claude: 好的，我会使用 code-analysis 技能。
   根据 skills/code-analysis.md 中的定义...
   ```

#### 配置 MCP 服务器（可选）

编辑 Claude Desktop 配置文件：

**macOS:**
```bash
nano ~/Library/Application\ Support/Claude/claude_desktop_config.json
```

**Windows:**
```bash
notepad %APPDATA%\Claude\claude_desktop_config.json
```

将 `mcp/config.json` 的内容复制到配置文件中。

---

### 方法三：使用 VS Code + GitHub Copilot

1. **克隆项目**
   ```bash
   git clone https://github.com/chenxin1212/create-agent-project.git
   cd create-agent-project
   ```

2. **运行设置脚本**
   ```bash
   bash setup.sh
   ```

3. **打开工作区**
   - 启动 VS Code
   - 选择 "File" → "Open Workspace from File"
   - 打开 `agent-project.code-workspace`

4. **安装推荐扩展**
   - VS Code 会提示安装推荐的扩展
   - 点击 "Install All"
   - 安装 GitHub Copilot 和 Copilot Chat

5. **开始编码**
   - 使用 Copilot Chat 询问关于技能的问题
   - 参考 `skills/` 目录中的技能
   - 使用 `agent.md` 中定义的模式

---

### 常见使用场景

#### 场景 1：自动化代码审查

```bash
# 1. 查看代码分析技能
cat skills/code-analysis.md

# 2. 查看自动化示例
cat examples/code-review-automation.md

# 3. 在你的 IDE 中使用
# Cursor/Claude: "使用代码分析技能审查这个 PR"
# Copilot: 参考 skills/code-analysis.md 创建审查脚本
```

#### 场景 2：生成测试

```bash
# 1. 查看测试生成技能
cat skills/test-generation.md

# 2. 在 IDE 中使用
# "为这个函数生成单元测试"
```

#### 场景 3：创建文档

```bash
# 1. 查看文档技能
cat skills/documentation.md

# 2. 在 IDE 中使用
# "为这个 API 生成文档"
```

---

### 环境变量配置

```bash
# 编辑 .env 文件
nano .env

# 添加你的 API 密钥
GITHUB_TOKEN=你的_github_token_这里
BRAVE_API_KEY=你的_brave_api_key_这里
```

---

### 测试 MCP 服务器

```bash
# 测试文件系统服务器
npx -y @modelcontextprotocol/server-filesystem .

# 测试 Git 服务器
npx -y @modelcontextprotocol/server-git

# 测试内存服务器
npx -y @modelcontextprotocol/server-memory
```

---

### 获取帮助

- 📖 [快速开始指南](./docs/getting-started.md)
- 📋 [快速参考](./docs/QUICK_REFERENCE.md)
- 🎯 [技能总览](./skills/README.md)
- 🔌 [MCP 配置](./mcp/README.md)
- 💡 [自动化示例](./examples/README.md)

---

<a name="english"></a>
## 🇬🇧 English Usage Guide

### Method 1: Using Cursor

1. **Clone the Project**
   ```bash
   git clone https://github.com/chenxin1212/create-agent-project.git
   cd create-agent-project
   ```

2. **Run Setup Script**
   ```bash
   bash setup.sh
   ```

3. **Open in Cursor**
   - Launch Cursor
   - Select "File" → "Open Folder"
   - Choose the cloned project folder
   
4. **Start Using!**
   - Cursor automatically reads `.cursorrules`
   - AI automatically understands project structure and available skills
   - Start creating your agent immediately!

#### Example Conversation in Cursor

```
You: Help me analyze this code for security issues

Cursor AI: I'll use the code-analysis skill to check for security.
This skill is defined in skills/code-analysis.md and can detect
common vulnerabilities like SQL injection, XSS...
```

---

### Method 2: Using Claude Code (Claude Desktop)

1. **Clone the Project**
   ```bash
   git clone https://github.com/chenxin1212/create-agent-project.git
   cd create-agent-project
   ```

2. **Run Setup Script**
   ```bash
   bash setup.sh
   ```

3. **Open in Claude Code**
   - Launch Claude Desktop or Claude Code
   - Open the project folder
   
4. **Claude Automatically Reads:**
   - `claude.md` - Instructions for Claude AI
   - `agent.md` - Agent configuration
   - `skills/` - All available skills
   - `mcp/config.json` - MCP server configuration

5. **Start Using Skills**
   ```
   You: Use the code analysis skill to check my code
   
   Claude: Sure, I'll use the code-analysis skill.
   According to the definition in skills/code-analysis.md...
   ```

#### Configure MCP Servers (Optional)

Edit Claude Desktop configuration file:

**macOS:**
```bash
nano ~/Library/Application\ Support/Claude/claude_desktop_config.json
```

**Windows:**
```bash
notepad %APPDATA%\Claude\claude_desktop_config.json
```

Copy the contents from `mcp/config.json` to the configuration file.

---

### Method 3: Using VS Code + GitHub Copilot

1. **Clone the Project**
   ```bash
   git clone https://github.com/chenxin1212/create-agent-project.git
   cd create-agent-project
   ```

2. **Run Setup Script**
   ```bash
   bash setup.sh
   ```

3. **Open Workspace**
   - Launch VS Code
   - Select "File" → "Open Workspace from File"
   - Open `agent-project.code-workspace`

4. **Install Recommended Extensions**
   - VS Code will prompt to install recommended extensions
   - Click "Install All"
   - Install GitHub Copilot and Copilot Chat

5. **Start Coding**
   - Use Copilot Chat to ask about skills
   - Reference skills in `skills/` directory
   - Use patterns defined in `agent.md`

---

### Common Use Cases

#### Use Case 1: Automated Code Review

```bash
# 1. View code analysis skill
cat skills/code-analysis.md

# 2. View automation example
cat examples/code-review-automation.md

# 3. Use in your IDE
# Cursor/Claude: "Use code analysis skill to review this PR"
# Copilot: Reference skills/code-analysis.md to create review script
```

#### Use Case 2: Generate Tests

```bash
# 1. View test generation skill
cat skills/test-generation.md

# 2. Use in IDE
# "Generate unit tests for this function"
```

#### Use Case 3: Create Documentation

```bash
# 1. View documentation skill
cat skills/documentation.md

# 2. Use in IDE
# "Generate documentation for this API"
```

---

### Environment Variables Setup

```bash
# Edit .env file
nano .env

# Add your API keys
GITHUB_TOKEN=your_github_token_here
BRAVE_API_KEY=your_brave_api_key_here
```

---

### Test MCP Servers

```bash
# Test filesystem server
npx -y @modelcontextprotocol/server-filesystem .

# Test Git server
npx -y @modelcontextprotocol/server-git

# Test memory server
npx -y @modelcontextprotocol/server-memory
```

---

### Get Help

- 📖 [Getting Started Guide](./docs/getting-started.md)
- 📋 [Quick Reference](./docs/QUICK_REFERENCE.md)
- 🎯 [Skills Overview](./skills/README.md)
- 🔌 [MCP Configuration](./mcp/README.md)
- 💡 [Automation Examples](./examples/README.md)
