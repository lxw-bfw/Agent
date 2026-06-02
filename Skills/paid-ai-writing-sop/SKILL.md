---
name: paid-ai-writing-sop
description: 用于付费 AI 教程改写、从 0 撰写新稿、工具推荐、教程型与方法论型长文，也适用于偏程序员与技术人员的 vibe coding、AI 开发工作流、AI 工程实践、源码解析、设计模式、技术框架类文章。用户提到改写教程、重写 AI 文章、从 0 写教程、写工具推荐、工作流、Prompt、Agent、Skills、AI 编程、技术框架、源码解析时使用。若工作模式不明确必须先问；若为从 0 撰写，必须先发送默认调研模板确认话术并等待用户确认或提供自定义模板后再调研。
---

# paid-ai-writing-sop

这是一个“付费级 AI 教程写作 SOP”主技能。主文件只负责分流、约束和装配，详细流程放在 `references/` 与 `assets/`。

## 激活条件

当任务属于以下任一场景时使用本技能：

- 改写已有 AI 教程、Agent 教程、Prompt 教程、工具教程、工作流教程
- 根据主题从 0 撰写付费级教程、工具推荐长文、方法论文章
- 根据主题撰写偏程序员 / 技术人员的 AI 编程、vibe coding、AI 工程、源码解析、设计模式、技术框架类文章
- 用户明确要求“先出结构，不写全文”

如果任务只是普通润色、短文案、海报文案、纯观点输出，不要强行套用完整 SOP。

## 固定执行顺序

### 1. 先判断工作模式

只做二选一：

- 模式 A：改写已有原稿
- 模式 B：从 0 撰写新稿

判断不明确时，必须先问用户：

```text
你这次是要我基于已有原稿改写，还是根据主题从 0 撰写？
```

没有确认模式前，不进入全文写作。

先加载：

- [workflow-overview](references/workflow-overview.md)

### 2. 再判断受众赛道

如果主题明显属于：

- AI 编程
- vibe coding
- AI 开发工作流
- AI 工程实践
- SDK / API / CLI / MCP / Agent 框架
- 源码解析
- 技术框架
- 设计模式
- 软件架构

则先判断受众赛道：

- 通用向
- 技术向

如果用户没有明确说清，必须先问：

```text
这篇内容主要是写给通用 AI 使用者，还是写给程序员 / 技术人员 / 架构师？
```

如果确认属于技术向，继续加载：

- [technical-audience-and-engineering](references/technical-audience-and-engineering.md)

### 3. 再判断文章类型

只做三选一：

- 推荐型
- 教程型
- 方法论型

路由规则见：

- [article-types](references/article-types.md)
- [article-templates](assets/article-templates.md)
- [title-and-intro-patterns](assets/title-and-intro-patterns.md)

如果满足下面两个条件：

1. 模式 B：从 0 撰写新稿
2. 文章类型：教程型

则额外加载：

- [tutorial-audience-and-visuals](references/tutorial-audience-and-visuals.md)

并在正式调研前确认教程受众层级：

- `1` 完全零基础
- `2` 用过一点但仍属小白
- `3` 已入门，想进阶到资深

如果已经确认属于技术向，并且文章类型属于“教程型”，技术向确认后面仍然要继续完成上面的 `1 / 2 / 3` 分层。

### 4. 根据模式选择引用文件

如果是模式 A，继续加载：

- [rewrite-mode](references/rewrite-mode.md)
- [style-strategy](references/style-strategy.md)
- [review-checklist](references/review-checklist.md)
- [article-templates](assets/article-templates.md)
- [style-extraction-template](assets/style-extraction-template.md)
- [title-and-intro-patterns](assets/title-and-intro-patterns.md)
- [prompts-rewrite](assets/prompts-rewrite.md)

如果是模式 B，先严格执行确认环节：

- [research-confirmation](references/research-confirmation.md)

发送标准确认话术后，等待用户：

- 提供自定义调研模板，或
- 明确回复“没问题，开始工作吧”或等效确认

在用户确认前，不得开始正式调研，不得开始全文写作。

确认后再加载：

- [from-zero-mode](references/from-zero-mode.md)
- [research-template](references/research-template.md)
- [style-strategy](references/style-strategy.md)
- [review-checklist](references/review-checklist.md)
- [article-templates](assets/article-templates.md)
- [style-extraction-template](assets/style-extraction-template.md)
- [title-and-intro-patterns](assets/title-and-intro-patterns.md)
- [prompts-from-zero](assets/prompts-from-zero.md)

如果文章类型属于“教程型”，还要继续遵守：

- 受众层级不明确时，必须先确认 `1 / 2 / 3`
- 正文深度、术语解释密度、案例组织方式，必须随受众层级调整
- 合适位置优先加入 Mermaid 流程图、目录树、表格、伪输出示意
- 高质量第三方资料要同时覆盖英文资料与高质量中文资料

如果受众赛道属于“技术向”，还要继续遵守：

- 技术事实和工程判断，不能只靠风格作者背书
- 默认优先看官方文档、源码、examples、tests、maintainer 说明
- 默认补技术栈、版本、依赖、目录、调用链、排错线索和工程权衡
- 源码解析 / 框架解析 / 设计模式类文章，事实判断继续以源码和官方文档为主

### 5. 如果用户要求“只先出结构”

仍然要先完成模式判断和文章类型判断。

- 改写模式：先做任务卡、问题识别、新结构
- 从 0 模式：仍然先走调研模板确认

结构优先场景使用：

- [prompts-structure-only](assets/prompts-structure-only.md)
- [style-extraction-template](assets/style-extraction-template.md)

这类任务在结构阶段停止，不进入全文。

### 6. 正式输出顺序

除非用户明确要求直接成稿，否则优先按这个顺序输出：

1. 模式判断
2. 受众赛道判断
3. 文章类型判断
4. 任务卡
5. 资料优先级 / 调研计划
6. 风格策略
7. 风格提取表
8. 新结构
9. 正文

## 硬约束

### 改写模式

- 不是简单润色
- 允许重组原结构
- 必须补原稿缺失的信息、判断、边界、踩坑和核验项

### 从 0 撰写模式

- 必须先调研，再写作
- 官方一手资料优先
- 未确认默认调研模板前，不得进入正式调研
- 如果文章类型属于教程型，且受众层级不明确，必须先确认受众层级
- 教程型正文要按受众层级决定是否先给完整案例、再拆术语、再带做第二个案例
- 如果受众赛道属于技术向，必须先确认技术向与技术主题细分，再进入正式调研
- 技术向任务必须补版本、环境、依赖、兼容性、工程边界和替代方案

### 所有成稿

结尾或适当位置必须显式补齐：

1. 核验日期
2. 误区纠偏
3. 踩坑提醒
4. 适用边界
5. 资料来源清单

如果受众赛道属于技术向，优先再补：

6. 技术前提与版本范围
7. 最小可运行闭环
8. 工程权衡或设计取舍

交付前优先按下面文件复核：

- [review-checklist](references/review-checklist.md)

## 输出标准

- 不要只把资料堆起来
- 不要把文章写成“AI 整理稿”
- 要主动补事实核验、选择标准、边界判断、适合谁与不适合谁
- 要根据文章类型显式套用对应正文骨架，而不是临场泛化发挥
- 优先让读者获得“可执行结果”或“更清晰的判断框架”
- 参考风格时，优先先产出风格提取表，而不是只口头说“参考某位作者”
- 如果文章偏程序员 / 技术人员，不要把“中文写得像人”误当成技术可信度本身
