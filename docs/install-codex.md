# Codex 安装

## 目录约定

Codex 当前官方技能目录重点看两层：

- 用户级：`~/.agents/skills/paid-ai-writing-sop/`
- 项目级：`.agents/skills/paid-ai-writing-sop/`

本包的 `codex` 目标会安装到这两个位置中的一个，取决于 `-Scope`。

## 安装

```powershell
pwsh ./install.ps1 -Target codex -Scope user
```

```bash
bash ./install.sh --target codex --scope user
```

项目级安装：

```powershell
pwsh ./install.ps1 -Target codex -Scope project
```

说明：

- `project` scope 以执行脚本时的当前目录作为安装目标根目录。
- 如果目标目录已存在，脚本会先备份，再覆盖安装。

## 验证

1. 重启或新开一个 Codex 会话。
2. 打开技能选择器 `/skills`，确认能看到 `paid-ai-writing-sop`。
3. 或直接在对话里显式提及：`$paid-ai-writing-sop`。
4. 再发送一句测试语句：`用 paid-ai-writing-sop 改写一篇 AI 工具教程。`
