# Changelog / 更新日志

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [3.0.0] — 2026-06-06

### Added / 新增

- 🏗️ **New project name: Obsidian Verdant** — more distinctive and memorable brand
- 🏗️ **新项目名称：Obsidian Verdant（苍翠主题）** — 更具辨识度的品牌名称
- 🪟 **Windows platform support** — dedicated font stack (Segoe UI + Microsoft YaHei + SimHei + Cascadia Code)
- 🪟 **新增 Windows 平台支持** — 独立字体方案（Segoe UI + 微软雅黑 + 黑体 + Cascadia Code）
- 🏗️ **Core + Platform layered architecture**: `core/obsidian-verdant.css` (shared) + `platforms/<os>/obsidian-verdant-fonts.css`
- 🏗️ **核心 + 平台双层架构**：核心样式跨平台共享，字体配置按平台隔离
- 📦 Windows font install script (`platforms/windows/fonts/install.ps1`) — one-click Cascadia Code + JetBrains Mono installation
- 📦 Windows 字体一键安装脚本 — 自动下载安装 Cascadia Code 与 JetBrains Mono
- 📖 Fully rewritten README with cross-platform installation instructions
- 📖 全面重写 README，含跨平台安装说明

### Changed / 变更

- ♻️ Repository restructured — CSS files moved to `core/` and `platforms/` directories
- ♻️ 仓库结构重构 — CSS 文件迁移到 `core/` 和 `platforms/` 目录
- ♻️ Core CSS header updated to "Obsidian Verdant" with v3.0.0 version bump
- ♻️ 核心 CSS 标头更新为 "Obsidian Verdant"，版本升至 v3.0.0
- 📝 Updated all documentation to reflect new project name and cross-platform structure

### Removed / 移除

- 🗑 Removed flat `obsidian-standard.css` and `fonts-macos.css` from repo root
- 🗑 移除仓库根目录的扁平 CSS 文件（已迁移到 core/ 和 platforms/ 目录）

---

## [2.1.0] — 2026-06-06

### Added / 新增

- 🎯 New `fonts-macos.css` — dedicated macOS Chinese/English font stack (Avenir Next + PingFang SC + Heiti SC + SF Mono)
- 🎯 新增 `fonts-macos.css` — macOS 中英混排专用字体方案（苹方/黑体/SF Mono）
- 📖 README updated to reflect two-file setup and installation instructions
- 📖 更新 README，反映双文件配置及安装说明

### Changed / 变更

- ♻️ `obsidian-standard.css` fully synced from local development — latest code-block enhancements, print optimization, and code-highlighting refinements
- ♻️ `obsidian-standard.css` 同步最新本地开发版本，完善代码块高亮和打印优化

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
