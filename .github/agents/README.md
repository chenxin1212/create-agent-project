# GitHub Agents Configuration

This directory contains configuration files for AI assistants working with this repository.

## Files

- **`custom_instructions.md`** - Universal instructions for all AI assistants (Claude, Cursor, GitHub Copilot)

## Purpose

This structure follows GitHub's standard for AI agent configurations, ensuring compatibility with:
- GitHub Copilot Workspace
- Claude Code
- Cursor
- Other AI-powered development tools

## How It Works

AI assistants that support this standard will automatically read the instructions in this directory when working on the repository, providing them with:
- Project structure understanding
- Available skills and capabilities
- Coding standards and best practices
- MCP server configurations
- Common workflows and patterns

## Compatibility

This project supports multiple AI IDE configurations:

1. **`.github/agents/custom_instructions.md`** - GitHub Copilot Workspace and universal format
2. **`claude.md`** (root) - Claude Code native format
3. **`.cursorrules`** (root) - Cursor native format
4. **`agent.md`** (root) - Agent behavior configuration

All formats are cross-compatible and reference the same underlying skills, documentation, and MCP configurations.
