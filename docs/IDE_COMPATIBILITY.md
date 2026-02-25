# AI IDE 兼容性说明 / AI IDE Compatibility Guide

[中文](#中文说明) | [English](#english)

---

## 中文说明

### 跨 IDE 兼容架构

本项目采用**完全兼容**的多 IDE 配置架构，确保在不同 AI 开发工具中都能获得一致的体验。

### 目录结构

```
.
├── .github/agents/
│   ├── custom_instructions.md  # GitHub Copilot Workspace 配置
│   └── README.md
├── .cursor/
│   └── README.md               # Cursor 配置说明
├── .cursorrules                # Cursor 原生配置文件
├── claude.md                   # Claude Code 原生配置文件
└── agent.md                    # 通用代理配置
```

### 配置文件映射

| AI IDE | 主配置文件 | 兼容文件 |
|--------|-----------|---------|
| **Cursor** | `.cursorrules` | `claude.md`, `agent.md`, `.github/agents/custom_instructions.md` |
| **Claude Code** | `claude.md`, `agent.md` | `.cursorrules`, `.github/agents/custom_instructions.md` |
| **GitHub Copilot Workspace** | `.github/agents/custom_instructions.md` | `claude.md`, `agent.md` |

### Cursor 与 Claude Code 的完全兼容性

**重要**：Cursor 设计为**完全兼容** Claude Code 的配置格式。这意味着：

1. ✅ Cursor 可以读取 `.cursorrules`（原生格式）
2. ✅ Cursor 可以读取 `claude.md`（Claude Code 格式）
3. ✅ Cursor 可以读取 `agent.md`（通用代理配置）
4. ✅ Cursor 可以读取 `.github/agents/custom_instructions.md`（GitHub 标准）

**配置优先级**（Cursor）：
1. `.cursorrules` - Cursor 原生配置（优先）
2. `claude.md` - Claude 格式（完全兼容）
3. `agent.md` - 代理行为配置
4. `.github/agents/custom_instructions.md` - 通用配置

### 为什么采用多配置文件？

1. **最大兼容性**：不同 IDE 可能优先读取不同的配置文件
2. **标准化**：遵循各 IDE 的官方推荐结构
3. **灵活性**：用户可以根据需要自定义特定 IDE 的行为
4. **未来兼容**：为新的 AI IDE 提供标准接入点

### 配置内容一致性

所有配置文件都指向相同的：
- ✅ 技能库（`skills/` 目录）
- ✅ MCP 服务器配置（`mcp/config.json`）
- ✅ 文档（`docs/` 目录）
- ✅ 示例（`examples/` 目录）

这确保无论使用哪个 IDE，都能访问相同的功能和资源。

### 如何验证兼容性

```bash
# 1. 在 Cursor 中打开项目
# Cursor 会自动读取 .cursorrules，也可以读取 claude.md

# 2. 在 Claude Code 中打开项目  
# Claude 会自动读取 claude.md 和 agent.md

# 3. 在两个 IDE 中测试相同的功能
# 应该看到一致的行为和响应
```

---

## English

### Cross-IDE Compatible Architecture

This project uses a **fully compatible** multi-IDE configuration architecture, ensuring a consistent experience across different AI development tools.

### Directory Structure

```
.
├── .github/agents/
│   ├── custom_instructions.md  # GitHub Copilot Workspace config
│   └── README.md
├── .cursor/
│   └── README.md               # Cursor configuration notes
├── .cursorrules                # Cursor native config file
├── claude.md                   # Claude Code native config file
└── agent.md                    # Universal agent configuration
```

### Configuration File Mapping

| AI IDE | Primary Config | Compatible Files |
|--------|---------------|------------------|
| **Cursor** | `.cursorrules` | `claude.md`, `agent.md`, `.github/agents/custom_instructions.md` |
| **Claude Code** | `claude.md`, `agent.md` | `.cursorrules`, `.github/agents/custom_instructions.md` |
| **GitHub Copilot Workspace** | `.github/agents/custom_instructions.md` | `claude.md`, `agent.md` |

### Full Compatibility Between Cursor and Claude Code

**Important**: Cursor is designed to be **fully compatible** with Claude Code's configuration format. This means:

1. ✅ Cursor can read `.cursorrules` (native format)
2. ✅ Cursor can read `claude.md` (Claude Code format)
3. ✅ Cursor can read `agent.md` (universal agent config)
4. ✅ Cursor can read `.github/agents/custom_instructions.md` (GitHub standard)

**Configuration Priority** (Cursor):
1. `.cursorrules` - Cursor native config (priority)
2. `claude.md` - Claude format (fully compatible)
3. `agent.md` - Agent behavior config
4. `.github/agents/custom_instructions.md` - Universal config

### Why Multiple Configuration Files?

1. **Maximum Compatibility**: Different IDEs may prioritize different config files
2. **Standardization**: Follow each IDE's official recommended structure
3. **Flexibility**: Users can customize behavior for specific IDEs
4. **Future-Proof**: Provides standard entry points for new AI IDEs

### Configuration Content Consistency

All configuration files point to the same:
- ✅ Skills library (`skills/` directory)
- ✅ MCP server configurations (`mcp/config.json`)
- ✅ Documentation (`docs/` directory)
- ✅ Examples (`examples/` directory)

This ensures access to the same features and resources regardless of which IDE you use.

### How to Verify Compatibility

```bash
# 1. Open project in Cursor
# Cursor will automatically read .cursorrules, and can also read claude.md

# 2. Open project in Claude Code
# Claude will automatically read claude.md and agent.md

# 3. Test the same functionality in both IDEs
# You should see consistent behavior and responses
```

---

## 技术细节 / Technical Details

### 配置文件格式 / Configuration File Formats

所有配置文件都使用 Markdown 格式，包含：
All configuration files use Markdown format, containing:

- 项目概述 / Project overview
- 技能说明 / Skills description
- MCP 服务器列表 / MCP server list
- 代码标准 / Code standards
- 最佳实践 / Best practices

### 更新配置 / Updating Configurations

当修改项目配置时，建议：
When modifying project configuration, it's recommended to:

1. 更新主配置文件 / Update primary config files
2. 保持各配置文件内容同步 / Keep all config files in sync
3. 测试所有支持的 IDE / Test all supported IDEs
4. 更新相关文档 / Update related documentation

---

## 支持 / Support

如有问题或建议，请查看：
For questions or suggestions, please see:

- [README.md](../README.md) - 项目主文档 / Main project documentation
- [USAGE.md](../USAGE.md) - 使用指南 / Usage guide
- [CONTRIBUTING.md](../CONTRIBUTING.md) - 贡献指南 / Contributing guide
