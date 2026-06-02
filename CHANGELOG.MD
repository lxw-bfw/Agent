# Changelog

> 项目：`paid-ai-writing-sop`
> 维护目标：记录当前仓库在技能封装、SOP 规则、安装能力、文档体系上的关键变更，方便跨窗口续接、对外说明和后续迭代

---

## [2026-06-02] 真实技术任务 forward test 与技术调研约束补强

### Added

- 新增一轮真实技术写作任务 forward test：
  - `从0撰写 + 技术向 + 教程型`
  - 测试题目方向：`OpenAI Responses API + Firecrawl + FastAPI`
- 新增技术向官方检索关键词范式：
  - `产品名 + 能力名 + official docs`
  - `产品名 + api reference`
  - `产品名 + guide / tutorial / release notes`
- 新增技术向调研去噪 / 裁剪要求：
  - 抓回页面后先提取相关段落、命令、参数、版本和限制条件
  - 去掉导航、验证码、登录提示和长段无关噪音

### Changed

- 更新 `Skills/paid-ai-writing-sop/references/technical-audience-and-engineering.md`
  - 增加技术向任务的官方检索关键词范式
  - 增加“不要把整页文档原样堆进调研稿”的硬约束
- 更新 `Skills/paid-ai-writing-sop/references/from-zero-mode.md`
  - 增加技术向外部调研时的关键词写法建议
  - 增加调研结果整理前的去噪 / 裁剪步骤
- 更新根级记忆层：
  - `Progress.md`
  - `context-handoff.md`
  - 记录 forward test 已完成，并移除其待办状态

### Why

- 之前虽然已经完成技术向分支迁移，但还缺一轮真实技术写作题目的前向验证
- 实测发现主流程可以跑通，但搜索词写法和长页面抓取噪音会影响技术调研质量
- 把这两条经验写回 skill，能减少后续技术向任务里“规则对了，但调研入口不稳”的问题

### Impact

- 现在可以更明确地确认：`paid-ai-writing-sop` 的技术向新分支已经通过一次真实任务 forward test
- 技术向从0写作任务在使用 `firecrawl` 时，会更偏向命中官方入口页，而不是依赖不稳定的传统 `site:` 语法
- 技术向调研稿会更强调“先裁剪、再整理”，避免把搜索工具原始输出误当成可直接写正文的资料

---

## [2026-06-02] 技术向与程序员受众写作能力完成迁移

### Added

- 新增技术向写作专用参考文件：
  - `Skills/paid-ai-writing-sop/references/technical-audience-and-engineering.md`
- 新增技术向主题分流：
  - `A` vibe coding / AI coding 经验
  - `B` AI workflow / agent workflow
  - `C` AI engineering
  - `D` framework / SDK / platform tutorial
  - `E` 源码解析 / 调用链 / 模块拆解
  - `F` 设计模式 / 架构 / 系统设计
- 新增技术向内容的硬性补齐项：
  - 版本信息
  - 环境要求
  - 依赖关系
  - 兼容性说明
  - 模块职责
  - 调用链
  - 工程权衡
  - 替代方案
  - 人工接管点

### Changed

- 更新 `Skills/paid-ai-writing-sop/SKILL.md`
  - 把“通用向 / 技术向”受众赛道判断接入主流程
  - 规定程序员、工程、源码、框架、架构类主题优先进入技术向分支
- 更新 `Skills/paid-ai-writing-sop/references/workflow-overview.md`
  - 把技术向受众判断插入到模式判断和文章类型判断之间
- 更新 `Skills/paid-ai-writing-sop/references/research-confirmation.md`
  - 让改写和从0写作都必须先确认是否面向程序员 / 技术人员
- 更新 `Skills/paid-ai-writing-sop/references/from-zero-mode.md`
  - 增加技术向任务卡字段、技术调研约束和工程化补充项
- 更新 `Skills/paid-ai-writing-sop/references/research-template.md`
  - 增加版本、环境、依赖、兼容性、源码 / 示例 / 测试、模块与调用链等占位
- 更新 `Skills/paid-ai-writing-sop/references/rewrite-mode.md`
  - 增加技术向改写时的事实核验、工程上下文和结构补强要求
- 更新 `Skills/paid-ai-writing-sop/references/article-types.md`
  - 让推荐型 / 教程型 / 方法论型在技术向语境下也有明确落点
- 更新 `Skills/paid-ai-writing-sop/references/style-strategy.md`
  - 把“技术权威参考”和“中文成稿风格参考”拆成两层
  - 保留 `宝玉` 作为技术解释桥接参考
  - 收窄 `歸藏`、`数字生命卡兹克`、`翔宇工作流` 在深工程判断中的职责
  - 补入更适合技术主题的参考池：
    - `Simon Willison`
    - `Chip Huyen`
    - `Andrej Karpathy`
    - `Martin Fowler / Thoughtworks`
- 更新 `Skills/paid-ai-writing-sop/references/tutorial-audience-and-visuals.md`
  - 让技术向教程继续沿用 `1 / 2 / 3` 分层，但在术语密度和工程深度上做区分
- 更新 `Skills/paid-ai-writing-sop/references/review-checklist.md`
  - 增加技术向交付的自检项
- 更新 `Skills/paid-ai-writing-sop/assets/article-templates.md`
  - 给技术向推荐型 / 教程型 / 方法论型补齐对应正文骨架
- 更新 `Skills/paid-ai-writing-sop/assets/prompts-from-zero.md`
  - 让从0写作提示先确认技术受众赛道，再进入调研
- 更新 `Skills/paid-ai-writing-sop/assets/prompts-rewrite.md`
  - 让改写提示先确认技术受众赛道，再进入重构
- 更新 `Skills/paid-ai-writing-sop/assets/prompts-structure-only.md`
  - 让只出结构模式也保留技术向分流
- 更新 `Skills/paid-ai-writing-sop/assets/style-extraction-template.md`
  - 增加技术判断来源和中文成稿表达来源的分层提取
- 更新 `Skills/paid-ai-writing-sop/assets/usage-prompts.md`
  - 增加程序员 / AI 工程 / vibe coding / 源码解析类示例调用
- 更新 `Skills/paid-ai-writing-sop/README.MD`
  - 补充技术向受众与工程主题支持说明
- 同步更新 `sop-docs/`
  - 把技术向判断、技术参考策略和工程化补齐项写回人类可读 SOP

### Why

- 原流程更适合通用 AI 教程、工具推荐和工作流文章，不足以稳定胜任程序员、架构师和工程团队读者的深技术内容
- 原中文作者参考池适合结构、表达和选题启发，但不能默认承担源码、架构、工程判断的权威来源职责
- 技术向文章如果不单独约束版本、环境、依赖、调用链和工程权衡，最终很容易写成“像技术文，但不能真的指导开发”

### Impact

- 从现在开始，涉及程序员、技术人员、AI 工程、源码解析、设计模式、技术框架等主题时，主流程会先确认是否进入“技术向”赛道
- “从0撰写 + 教程型 + 技术向”任务，除了默认调研模板确认和 `1 / 2 / 3` 受众分层外，还会强制补技术环境与工程化上下文
- 技术向成稿不再只追求中文表达顺滑，而会明确要求事实依据、工程边界、模块关系和适用前提
- 当前 `paid-ai-writing-sop` 已能更稳定地支持：
  - vibe coding 经验总结
  - AI 开发工作流
  - AI 工程方法论
  - 框架 / SDK / 平台教程
  - 源码解析
  - 设计模式 / 架构类文章

---

## [2026-05-31] 教程型从0撰写规则补强

### Added

- 新增教程型从0撰写的受众分层规则：
  - `1` 完全零基础
  - `2` 用过一点但仍属小白
  - `3` 已入门，想进阶到资深
- 新增“从 0 撰写 + 教程型”任务的前置确认要求：
  - 如果受众层级不明确，必须先补问 `1 / 2 / 3`
- 新增小白教程的默认组织方式：
  - 完整案例
  - 术语拆解
  - 第二个完整案例
- 新增教程型内容的可视化表达要求：
  - Mermaid 流程图
  - Mermaid 时序图
  - 目录树
  - 对比表格
  - 伪输出 / 伪界面示意
- 新增教程型第三方资料的中文来源补充要求：
  - 知乎
  - 掘金
  - 阿里云开发者社区
  - GitHub README / Issues / Discussions / Examples
  - 国内高质量博主或社区作者文章
- 新增技能参考文件：
  - `Skills/paid-ai-writing-sop/references/tutorial-audience-and-visuals.md`
- 新增根目录变更日志：
  - `CHANGELOG.MD`

### Changed

- 更新 `Skills/paid-ai-writing-sop/SKILL.md`
  - 把教程受众分层正式接入主入口
  - 明确从0教程型任务需要额外加载 `tutorial-audience-and-visuals.md`
- 更新 `Skills/paid-ai-writing-sop/references/from-zero-mode.md`
  - 增加教程型任务卡附加字段
  - 增加受众层级确认
  - 增加中文高质量资料补充要求
- 更新 `Skills/paid-ai-writing-sop/references/research-confirmation.md`
  - 增加教程型任务的追加确认话术
- 更新 `Skills/paid-ai-writing-sop/references/research-template.md`
  - 增加教程受众层级字段
  - 增加教程型可视化表达计划
  - 增加中文高质量资料占位
- 更新 `Skills/paid-ai-writing-sop/references/workflow-overview.md`
  - 把“教程受众分层确认”接入总流程
- 更新 `Skills/paid-ai-writing-sop/assets/prompts-from-zero.md`
  - 让从0模式提示骨架显式提到教程型受众分层
- 更新 `Skills/paid-ai-writing-sop/README.MD`
  - 补充教程型分层、可视化兜底、第二案例迁移等设计说明
- 更新 `sop-docs/付费AI教程改写标准流程-SOP.md`
  - 把教程型从0写作的分层规则写入人类可读 SOP
- 更新 `sop-docs/付费AI教程改写总控入口.md`
  - 把教程型受众分层追问接入总控入口
- 更新 `sop-docs/从0撰写模式下的标准调研输出模板.md`
  - 增加教程受众层级、第二案例、可视化表达计划、中文资料补充
- 更新 `sop-docs/付费教程成稿模板-推荐型教程型方法论型.md`
  - 增加教程型分层规则
  - 增加完整案例与第二案例的成稿骨架
- 更新 `sop-docs/README.MD`
  - 补当前增强能力的总说明
- 更新根目录记忆层：
  - `AGENTS.md`
  - `context-handoff.md`
  - `Progress.md`
  - `README.MD`

### Why

- 解决“小白教程写得太抽象、术语太密、缺少完整案例、读者看不懂”的质量问题
- 把一次成功改稿经验沉淀为可复用、可检查、可跨窗口复现的规则
- 避免以后再次出现“写给小白，却默认按进阶者理解粒度去写”的错误

### Impact

- 从现在开始，只要是“从0撰写 + 教程型”，Agent 会先确认教程写给哪一层人
- 小白教程默认更偏案例驱动，而不是概念堆砌
- 教程型成稿更倾向于出现 Mermaid、目录树和伪输出示意
- 第三方资料的调研结果会更贴近中文读者的真实理解障碍和本地化踩坑

---

## [2026-05-30] 仓库整理为可安装 Skill 结构

### Added

- 新增 `Skills/paid-ai-writing-sop/`
- 新增 `install.ps1`
- 新增 `install.sh`
- 新增 `AGENTS.md`
- 新增 `context-handoff.md`
- 新增 `Progress.md`
- 新增 `docs/`
- 新增项目级安装验证目录 `verify-install/`

### Changed

- 仓库从临时资料目录收敛为标准 Skills 仓库
- 主 skill 采用：
  - `SKILL.md`
  - `references/`
  - `assets/`
  的稳定结构
- `README.MD` 改造为安装优先、兼顾说明和调用示例

### Impact

- 当前 skill 可以安装到：
  - Codex
  - Claude Code
  - Cursor
- 不支持原生 Skills 的环境，可以退化为：
  - `AGENTS.md`
  - `Skills/paid-ai-writing-sop/SKILL.md`
  的兜底读取方式

---

## [2026-05-29] 建立付费级 AI 教程写作 SOP 基础体系

### Added

- 建立双模式写作 SOP：
  - 改写已有原稿
  - 从0撰写新稿
- 建立三类文章类型分流：
  - 推荐型
  - 教程型
  - 方法论型
- 建立从0撰写模式的默认调研确认话术
- 建立成稿强制补齐模块：
  - 核验日期
  - 误区纠偏
  - 踩坑提醒
  - 适用边界
  - 资料来源清单

### Changed

- 原本偏“单次写作提示”的资料，逐步收敛为可执行的流程体系
- 把“先调研、再整理、再结构、最后成稿”的思路固定成主线

### Impact

- 这套能力不再只是一次性提示词，而是开始具备稳定复用的流程骨架
- 后续的技能封装和安装脚本，都是在这一层 SOP 基础上继续展开
