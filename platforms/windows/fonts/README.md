# Windows 字体安装指南

为了让 Obsidian Verdant 在 Windows 上获得最佳显示效果，推荐安装以下免费开源字体。

## 核心推荐

| 字体 | 用途 | 许可证 | 下载 |
|------|------|--------|------|
| **Cascadia Code** | 代码等宽字体 | SIL OFL | [GitHub Releases](https://github.com/microsoft/cascadia-code/releases) |
| **JetBrains Mono** | 代码等宽字体（带连字） | SIL OFL | [JetBrains Mono](https://www.jetbrains.com/lp/mono/) |

## 快速安装

### 方式一：一键安装脚本

以管理员身份运行 PowerShell，执行：

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\install.ps1
```

脚本会自动下载并安装 Cascadia Code 和 JetBrains Mono。

### 方式二：手动安装

1. 下载 `CascadiaCode.zip` 从 [GitHub Releases](https://github.com/microsoft/cascadia-code/releases)
2. 解压后，选中所有 `.ttf` 文件，右键 → **安装**
3. 同理安装 JetBrains Mono

## 字体效果说明

| 安装前 | 安装后 |
|--------|--------|
| 代码使用 Consolas（清晰但较细） | 代码使用 Cascadia Code（现代等宽，保留连字） |
| 仅依赖系统自带字体 | 中英文混排效果大幅提升 |

## 验证安装

安装后重启 Obsidian，Fonts CSS 中的字体会自动生效。代码块中应能看到 Cascadia Code 的编程连字符（`=>`、`!=`、`->` 等）。
