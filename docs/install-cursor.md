# Cursor 安装

## 先区分 Skills 和 Rules

这个包走的是 Skills，不是 `.cursor/rules/*.mdc`。

原因很简单：

- Rules 适合常驻、始终生效的系统级约束
- Skills 适合按需加载的流程型 SOP
- 这套付费教程写作能力更像“可调用工作流”，不是“常驻项目规则”

所以 v1 的主封装载体是 Skills。

## 目录约定

推荐安装路径：

- 用户级：`~/.cursor/skills/paid-ai-writing-sop/`
- 项目级：`.cursor/skills/paid-ai-writing-sop/`

兼容补充：

- 如果团队统一采用 Agent Skills 标准目录，项目级也可以使用 `.agents/skills/`
- 但本安装脚本的 `cursor` 目标默认写入 `.cursor/skills/`

## 安装

```powershell
pwsh ./install.ps1 -Target cursor -Scope user
```

```bash
bash ./install.sh --target cursor --scope user
```

## 验证

1. 重新打开 Cursor 或新开一个 Agent 会话。
2. 到 `Cursor Settings > Rules` 查看是否出现 `paid-ai-writing-sop`。
3. 在聊天中输入 `/paid-ai-writing-sop`，确认可显式调用。
4. 再发送测试语句：`按 paid-ai-writing-sop 先只输出一篇 Agent 教程的结构。`
