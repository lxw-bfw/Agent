# Claude Code 安装

## 目录约定

Claude Code 原生技能目录：

- 用户级：`~/.claude/skills/paid-ai-writing-sop/`
- 项目级：`.claude/skills/paid-ai-writing-sop/`

Claude 会把目录名作为命令名，因此安装后可直接使用：

```text
/paid-ai-writing-sop
```

## 安装

```powershell
pwsh ./install.ps1 -Target claude -Scope user
```

```bash
bash ./install.sh --target claude --scope user
```

## 验证

1. 新开 Claude Code 会话。
2. 输入 `/paid-ai-writing-sop`，确认命令可见。
3. 发送一句测试语句：`用 paid-ai-writing-sop 从 0 写一篇 AI Skills 入门教程。`

补充：

- 本包不设置 `disable-model-invocation: true`，所以既支持显式 `/paid-ai-writing-sop`，也允许模型按描述自动命中。
- 如果你更偏向项目内共享，优先使用 `.claude/skills/` 并纳入版本控制。
