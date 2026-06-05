# Installation Guide / 安装指南

---

## English

### Prerequisites

- [Obsidian](https://obsidian.md) v1.0+ (recommended)
- Basic familiarity with your vault's `.obsidian` folder

Obsidian Verdant uses **two CSS files** that work together:
- `obsidian-verdant.css` — core theme (colors, syntax highlight, tables, blockquotes, print) — **required**
- `obsidian-verdant-fonts.css` — platform font configuration — **required** (pick your platform)

### Step-by-Step

#### 1. Download the CSS files

**Option A:** Clone the repository:
```bash
git clone https://github.com/tsingke/obsidian-verdant.git
```

**Option B:** Download directly from the [releases page](https://github.com/tsingke/obsidian-verdant/releases)

**Option C:** Use curl (recommended for quick setup):

**macOS:**
```bash
curl -o <your-vault>/.obsidian/snippets/obsidian-verdant.css \
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/core/obsidian-verdant.css
curl -o <your-vault>/.obsidian/snippets/obsidian-verdant-fonts.css \
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/platforms/macos/obsidian-verdant-fonts.css
```

**Windows (PowerShell):**
```powershell
curl -o <your-vault>\.obsidian\snippets\obsidian-verdant.css `
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/core/obsidian-verdant.css
curl -o <your-vault>\.obsidian\snippets\obsidian-verdant-fonts.css `
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/platforms/windows/obsidian-verdant-fonts.css
```

#### 2. Copy to snippets folder

```
<your-vault>/.obsidian/snippets/obsidian-verdant.css
<your-vault>/.obsidian/snippets/obsidian-verdant-fonts.css
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
5. Toggle **obsidian-verdant** and **obsidian-verdant-fonts** both to the **on** position

#### 4. Verify

- Open a note with headings (H1–H6) — they should appear in green tones
- Toggle between Light and Dark mode to see both variants
- Try `Ctrl+P` → "Export to PDF" to see the print-optimized version

### Windows Font Optimization (Optional)

For the best code display experience on Windows, install Cascadia Code or JetBrains Mono:

```powershell
# Run as Administrator
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\platforms\windows\fonts\install.ps1
```

See [`platforms/windows/fonts/`](platforms/windows/fonts/) for details.

### Uninstallation

1. Go to **Settings** → **Appearance** → **CSS snippets**
2. Toggle **obsidian-verdant** and **obsidian-verdant-fonts** both **off**
3. (Optional) Delete both files from your snippets folder

### Compatibility

| Obsidian Version | Status |
|:----------------|:-------|
| v1.8+ | ✅ Fully tested |
| v1.5–v1.7 | ✅ Compatible |
| v1.0–v1.4 | ✅ Likely works |
| < v1.0 | ⚠️ Not recommended |

### FAQ

**Q: Will this conflict with my current theme?**
A: No. This is a CSS snippet, not a full theme. It adds styles on top of your existing theme.

**Q: Does it work with plugins like Code Styler or Advanced Codeblock?**
A: Yes. The syntax highlighting rules avoid overriding Code Styler, and line-number styles are compatible with Advanced Codeblock's Prism.js structure.

**Q: Can I use it with other CSS snippets?**
A: Yes. CSS snippets layer on top of each other. If there are conflicts, the last-loaded snippet has higher priority. Rename files to control load order (alphabetical).

**Q: Which platform font file should I use?**
A: macOS users use `platforms/macos/obsidian-verdant-fonts.css`; Windows users use `platforms/windows/obsidian-verdant-fonts.css`.

---

## 中文

### 前提条件

- 已安装 [Obsidian](https://obsidian.md) v1.0+（推荐）
- 了解知识库的 `.obsidian` 文件夹的基本操作

Obsidian Verdant 使用**两个 CSS 文件**配合工作：
- `obsidian-verdant.css` — 核心主题（必装）
- `obsidian-verdant-fonts.css` — 平台字体配置（必装，根据系统选择）

### 详细步骤

#### 1. 下载 CSS 文件

**方式 A：克隆仓库**
```bash
git clone https://github.com/tsingke/obsidian-verdant.git
```

**方式 B：从 [releases 页面](https://github.com/tsingke/obsidian-verdant/releases) 直接下载**

**方式 C：使用 curl 快速安装**

**macOS：**
```bash
curl -o <你的vault>/.obsidian/snippets/obsidian-verdant.css \
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/core/obsidian-verdant.css
curl -o <你的vault>/.obsidian/snippets/obsidian-verdant-fonts.css \
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/platforms/macos/obsidian-verdant-fonts.css
```

**Windows (PowerShell)：**
```powershell
curl -o <你的vault>\.obsidian\snippets\obsidian-verdant.css `
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/core/obsidian-verdant.css
curl -o <你的vault>\.obsidian\snippets\obsidian-verdant-fonts.css `
  https://raw.githubusercontent.com/tsingke/obsidian-verdant/main/platforms/windows/obsidian-verdant-fonts.css
```

#### 2. 复制到 snippets 文件夹

```
<你的知识库>/.obsidian/snippets/obsidian-verdant.css
<你的知识库>/.obsidian/snippets/obsidian-verdant-fonts.css
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
5. 将 **obsidian-verdant** 和 **obsidian-verdant-fonts** 都切换为 **开启** 状态

#### 4. 验证效果

- 打开一个包含标题（H1–H6）的笔记 —— 它们应显示为绿色调
- 切换浅色/深色模式查看两种变体
- 尝试 `Ctrl+P` → "导出为 PDF" 查看打印优化效果

### Windows 字体优化（可选）

为获得最佳代码显示效果，推荐安装 Cascadia Code 或 JetBrains Mono：

```powershell
# 以管理员身份运行
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\platforms\windows\fonts\install.ps1
```

详见 [`platforms/windows/fonts/`](platforms/windows/fonts/)。

### 卸载方法

1. 进入 **设置** → **外观** → **CSS 代码片段**
2. 将 **obsidian-verdant** 和 **obsidian-verdant-fonts** 都切换为 **关闭**
3. （可选）从 snippets 文件夹删除两个 CSS 文件

### 兼容性

| Obsidian 版本 | 状态 |
|:-------------|:-----|
| v1.8+ | ✅ 已充分测试 |
| v1.5–v1.7 | ✅ 兼容 |
| v1.0–v1.4 | ✅ 大概率可用 |
| < v1.0 | ⚠️ 不推荐 |

### 常见问题

**问：会与我当前使用的主题冲突吗？**
答：不会。这是 CSS 片段，不是完整主题。它在现有主题之上叠加样式。

**问：与 Code Styler 或 Advanced Codeblock 插件兼容吗？**
答：兼容。语法高亮规则避免覆盖 Code Styler，行号样式兼容 Advanced Codeblock 的 Prism.js 结构。

**问：可以与其他 CSS 片段同时使用吗？**
答：可以。CSS 片段会层层叠加。如有冲突，最后加载的片段优先级更高。可通过重命名文件控制加载顺序（按字母顺序）。

**问：应该使用哪个平台的字体文件？**
答：macOS 用户使用 `platforms/macos/obsidian-verdant-fonts.css`；Windows 用户使用 `platforms/windows/obsidian-verdant-fonts.css`。
