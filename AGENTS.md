# paid-ai-writing-sop 兜底入口

如果当前 Agent 不支持原生 Skills，请把 `Skills/paid-ai-writing-sop/SKILL.md` 视为主入口，并按其中引用的文件继续执行。

最低执行要求：

1. 先判断是“改写已有原稿”还是“从 0 撰写新稿”。
2. 模式不明确时，必须先问用户，不得直接开写。
3. 从 0 撰写时，必须先发送默认调研模板确认话术，等待用户确认或提供自定义模板。
4. 再判断文章类型：推荐型、教程型、方法论型。
5. 成稿必须补齐：核验日期、误区纠偏、踩坑提醒、适用边界、资料来源清单。

标准内容位于：

- `Skills/paid-ai-writing-sop/SKILL.md`
- `Skills/paid-ai-writing-sop/references/`
- `Skills/paid-ai-writing-sop/assets/`
