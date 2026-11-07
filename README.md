# cpal-railways-pack

**当前版本：v0.0.1.0**（版本规则见主仓库 AGENTS.md：a.b.c.x，x=0 为用户确认的稳定版，x≠0 为 AI 修改后待用户确认的测试版，每新建一个文件 x 加一）  

CpAl Railways 的数据包 + 资源包组合包：探测铁轨触发指令方块，向玩家输出多语言铁路信号/调度信息。  
设计方案与实现要点见 [设计方案.md](设计方案.md)。  

## 仓库信息  

- 远程仓库：<https://github.com/ResAlexander/cpal-packs>（origin，已配置）  
- 独立 git 仓库，位于主文档仓库 `Cpal-minecraft-city-docs/` 内，将来作为 submodule 挂回主仓库。  

## 目录结构  

- `data/cpalrailways/function/` —— 自定义指令（datapack 逻辑）  
- `assets/cpalrailways/lang/` —— 多语言文案（resource pack 语言文件）  

语言覆盖策略：zh_* → 中文文案（zh_cn/zh_tw/zh_hk/zh_sg/zh_mo），en_* → 英文文案（en_us/en_gb/en_au/en_ca/en_nz），ja_jp → 日文。Minecraft 只加载与所选语言完全同名的文件（缺键统一回退 en_us），故用内容副本覆盖各变体；将来若需精确到地区再拆分。  

## 当前状态  

- [x] 原型文件就位（detector_rail 路由、whereami 坐标示例、三语言文件）  
- [x] `pack.mcmeta` 采用 1.21.9+ 新格式 `min_format`/`max_format`（26.2：datapack 107.1、resourcepack 88.0；范围 88–121 兼顾两者与近期版本，旧 `supported_formats` 字段已被移除，用旧写法会显示 incompatible or broken）  
- [ ] 验证探测铁轨 → 指令方块 → function 触发链路  
- [ ] 验证语言切换效果（改游戏语言后 F3+T 刷新资源包；资源包未加载时 translate 键会原样显示，表现为"一直是英文键名"）  

## 手动测试命令  

在聊天栏直接执行（无需等矿车压过探测铁轨）：  

```text
function cpalrailways:detector_rail {track:"service"}
function cpalrailways:whereami
```
