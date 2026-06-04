# Changelog / 更新日志

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [2.0.0] — 2026-06-04

### Added / 新增

- 🔢 Editor mode code-block line numbers via pure CSS counter (no plugin needed)
- 🔢 编辑模式代码块行号通过纯 CSS counter 实现，无需额外插件
- 🖼️ Image and Mermaid sizing constraints (`max-height: 80vh`) preventing oversized renders
- 🖼️ 图片/Mermaid 图表约束最大高度 80vh，防止大图撑爆视口
- 🧩 Code Block Enhancer (CBE) plugin compatibility — hides language label, unifies border
- 🧩 适配 Code Block Enhancer 插件，隐藏语言标签、统一外边框

### Changed / 变更

- ♻️ Full CSS rewrite with `--code-*` variable unification — Light / Dark / Print share one color source
- ♻️ 全面重构，`--code-*` 变量统一配色，Light / Dark / Print 三模式共用一个颜色源
- 🖨️ Print mode refactored to use `var(--code-*)` variables instead of hardcoded values
- 🖨️ 打印模式改用 `var(--code-*)` 变量替代硬编码值
- 📝 Simplified Chinese-only comments (removed redundant bilingual documentation)
- 📝 精简为纯中文注释，去除冗余的中英双语说明
- 📄 Updated README to reflect v2.0 improvements
- 📄 更新 README 反映 v2.0 变化

### Removed / 移除

- 🗑 Removed separate Advanced Codeblock plugin section (merged into CBE compatibility)
- 🗑 移除独立的 Advanced Codeblock 插件适配段（合并到 CBE 适配中）
- 🗑 Removed bilingual (Chinese + English) CSS comments for conciseness
- 🗑 去除中英双语 CSS 注释，保持代码紧凑

---

## [1.1.0] — 2026-06-04

### Added / 新增

- 🖥 Interactive browser-based preview page (`docs/preview.html`) with Light/Dark toggle
- 🖥 交互式浏览器预览页面 `docs/preview.html`，支持实时浅色/深色切换
- 🎨 High-quality SVG hero preview image replaces old PNG screenshots
- 🎨 高质量 SVG 主题预览图，替代旧版 PNG 截图
- 📝 Full Chinese Markdown example document (`example/范例.md`) covering all Obsidian elements
- 📝 完整的中文 Markdown 范例文档，覆盖 Obsidian 全部元素

### Changed / 变更

- 📄 Rewritten README — cleaner structure, reduced image count, bilingual but not duplicated
- 📄 重写 README，结构更清晰，精简图片数量，双语不重复
- 🔗 Fixed repository URLs throughout (pointing to github.com/tsingke)
- 🔗 统一修正仓库 URL 指向

### Removed / 移除

- 🗑 Old PNG screenshots that did not match actual rendering results
- 🗑 移除与真实渲染效果不符的旧版 PNG 截图

---

## [1.0.0] — 2026-06-04

### Added / 新增

- Initial release of Obsidian Standard Theme
- 首次发布 Obsidian Standard Theme

### Features / 功能

- 🌿 Green accent color palette with hierarchical heading styles (H1–H6)
- 🌿 绿色强调色调色板，层级标题样式（H1–H6）
- ☀️ / 🌙 Light and Dark mode support
- ☀️ / 🌙 浅色和深色模式支持
- 🖨️ Print / PDF export optimization with `print-color-adjust: exact`
- 🖨️ 打印/PDF 导出优化
- 🔤 Comprehensive syntax highlighting for code blocks (all major languages)
- 🔤 全面的代码块语法高亮（覆盖所有主流语言）
- 📊 Styled tables with green headers, zebra stripes, dark mode
- 📊 绿色表头表格，斑马纹，暗色模式适配
- 💬 Elegant blockquote styling with green left border
- 💬 绿色左边框的优雅引用块样式
- 🔢 Editor line number gutter + Prism.js line-numbers plugin support
- 🔢 编辑器行号和 Prism.js 行号插件支持
- 🌐 Bilingual CSS comments (Chinese + English)
- 🌐 双语 CSS 注释（中文 + 英文）
