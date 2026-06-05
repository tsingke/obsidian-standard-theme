# Installation Guide / 安装指南

---

## English

### Prerequisites

- [Obsidian](https://obsidian.md) v1.0+ (recommended)
- Basic familiarity with your vault's `.obsidian` folder

You can use **both** CSS files together — they complement each other:
- `obsidian-standard.css` — core theme (colors, syntax highlight, tables, blockquotes, print)
- `fonts-macos.css` — macOS font optimization (Avenir Next + PingFang SC + Heiti SC + SF Mono)

### Step-by-Step

#### 1. Download the CSS files

**Option A:** Clone the repository:
```bash
git clone https://github.com/tsingke/obsidian-standard-theme.git
```

**Option B:** Download directly:
- Visit the [releases page](https://github.com/tsingke/obsidian-standard-theme/releases)
- Download the latest `obsidian-standard.css` and `fonts-macos.css`

**Option C:** Copy the raw files:
- Open `obsidian-standard.css` or `fonts-macos.css` on GitHub
- Click the "Raw" button
- Save the page as the respective filename

#### 2. Copy to snippets folder

Place both files in your Obsidian vault's CSS snippets directory:

```
<your-vault>/.obsidian/snippets/obsidian-standard.css
<your-vault>/.obsidian/snippets/fonts-macos.css
```

> **Note:** The `.obsidian` folder is hidden by default.
> - **macOS:** Press `Cmd+Shift+.` to show hidden files in Finder
> - **Windows:** Enable "Show hidden files" in File Explorer
> - **Linux:** The folder is hidden by convention; use `Ctrl+H` in most file managers

#### 3. Enable in Obsidian

1. Open Obsidian
2. Go to **Settings** → **Appearance**
3. Scroll down to **CSS snippets**
4. Click the **reload** button (↻) to scan for new snippets
5. Toggle **obsidian-standard** and **fonts-macos** both to the **on** position

![Enable snippet](https://placehold.co/600x200?text=Enable+Screenshot)

#### 4. Verify

- Open a note with headings (H1–H6) — they should appear in green tones
- Toggle between Light and Dark mode to see both variants
- Try `Ctrl+P` → "Export to PDF" to see the print-optimized version

### Uninstallation

1. Go to **Settings** → **Appearance** → **CSS snippets**
2. Toggle **obsidian-standard** and **fonts-macos** both **off**
3. (Optional) Delete `obsidian-standard.css` and `fonts-macos.css` from your snippets folder

### Compatibility

| Obsidian Version | Status |
|:----------------|:-------|
| v1.8+ | ✅ Fully tested |
| v1.5–v1.7 | ✅ Compatible |
| v1.0–v1.4 | ✅ Likely works |
| < v1.0 | ⚠️ Not recommended |

### FAQ

**Q: Will this conflict with my current theme?**
A: No. This is a CSS snippet, not a full theme. It adds styles on top of your existing theme. The `!important` flags ensure the heading and element styles take effect regardless of the base theme.

**Q: Does it work with plugins like Code Styler or Advanced Codeblock?**
A: Yes. The syntax highlighting rules avoid overriding Code Styler, and line-number styles are compatible with Advanced Codeblock's Prism.js structure.

**Q: Can I use it with other CSS snippets?**
A: Yes. CSS snippets layer on top of each other. If there are conflicts, the last-loaded snippet has higher priority. Rename files to control load order (alphabetical).

**Q: The heading colors look different from the screenshots.**
A: Make sure you have restarted Obsidian or reloaded snippets after adding the file. Some themes may override certain styles — try disabling other CSS snippets to isolate.

---

## 中文

### 前提条件

- 已安装 [Obsidian](https://obsidian.md) v1.0+（推荐）
- 了解知识库的 `.obsidian` 文件夹的基本操作

### 详细步骤

可同时启用**两个 CSS 文件**，效果互补：
- `obsidian-standard.css` — 核心主题（颜色、语法高亮、表格、引用块、打印）
- `fonts-macos.css` — macOS 字体优化（苹方/黑体/SF Mono）

#### 1. 下载 CSS 文件

**方式 A：克隆仓库**
```bash
git clone https://github.com/tsingke/obsidian-standard-theme.git
```

**方式 B：直接下载**
- 访问 [releases 页面](https://github.com/tsingke/obsidian-standard-theme/releases)
- 下载最新的 `obsidian-standard.css` 和 `fonts-macos.css`

**方式 C：复制原始文件**
- 在 GitHub 上打开 `obsidian-standard.css` 或 `fonts-macos.css`
- 点击 "Raw" 按钮
- 将页面另存为对应文件名

#### 2. 复制到 snippets 文件夹

将两个文件放入 Obsidian 知识库的 CSS 代码片段目录：

```
<你的知识库>/.obsidian/snippets/obsidian-standard.css
<你的知识库>/.obsidian/snippets/fonts-macos.css
```

> **注意：** `.obsidian` 文件夹默认是隐藏的。
> - **macOS：** 在访达中按 `Cmd+Shift+.` 显示隐藏文件
> - **Windows：** 在资源管理器中开启"显示隐藏文件"
> - **Linux：** 该文件夹按惯例隐藏，在文件管理器中按 `Ctrl+H`

#### 3. 在 Obsidian 中启用

1. 打开 Obsidian
2. 进入 **设置** → **外观**
3. 向下滚动到 **CSS 代码片段**
4. 点击 **刷新** 按钮 (↻) 扫描新片段
5. 将 **obsidian-standard** 和 **fonts-macos** 都切换为 **开启** 状态

#### 4. 验证效果

- 打开一个包含标题（H1–H6）的笔记 —— 它们应显示为绿色调
- 切换浅色/深色模式查看两种变体
- 尝试 `Ctrl+P` → "导出为 PDF" 查看打印优化效果

### 卸载方法

1. 进入 **设置** → **外观** → **CSS 代码片段**
2. 将 **obsidian-standard** 和 **fonts-macos** 都切换为 **关闭**
3. （可选）从 snippets 文件夹删除 `obsidian-standard.css` 和 `fonts-macos.css`

### 兼容性

| Obsidian 版本 | 状态 |
|:-------------|:-----|
| v1.8+ | ✅ 已充分测试 |
| v1.5–v1.7 | ✅ 兼容 |
| v1.0–v1.4 | ✅ 大概率可用 |
| < v1.0 | ⚠️ 不推荐 |

### 常见问题

**问：会与我当前使用的主题冲突吗？**
答：不会。这是 CSS 片段，不是完整主题。它在现有主题之上叠加样式。`!important` 标记确保标题和元素样式优先级高于基础主题。

**问：与 Code Styler 或 Advanced Codeblock 插件兼容吗？**
答：兼容。语法高亮规则避免覆盖 Code Styler，行号样式兼容 Advanced Codeblock 的 Prism.js 结构。

**问：可以与其他 CSS 片段同时使用吗？**
答：可以。CSS 片段会层层叠加。如有冲突，最后加载的片段优先级更高。可通过重命名文件控制加载顺序（按字母顺序）。

**问：标题颜色与截图不同。**
答：请确认已重启 Obsidian 或添加文件后刷新了代码片段。某些主题可能覆盖部分样式——尝试禁用其他 CSS 片段以隔离问题。
