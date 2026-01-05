---
title: 热力学2
date: 2025-12-05 13:30:00
permalink: /classical-thermal-dynamics-2/
categories: 
    - [物理学,统计物理,经典热力学]
tags: 
    - 统计物理
    - 经典热力学
    - 基本概念
    - 例子
    - 数学关系
---

# 引言

这一篇我计划列举经典热力学中的许多有着重要历史地位和学习意义的例子，这些例子有些帮助我们建立了某一些热力学概念，有些加深了我们对热力学的理解。为了避免陈述的冗杂，我计划把大部分例子都放到一块儿集中展示，并且在阐释概念的时候引用必要的部分。除此之外，这一篇还将讨论和列举热力学和统计力学学习中所需的重要数学公式和一些量之间的转换关系，熟练掌握这些数学有助于我们更加充分地从更加全面的视角理解某个具体概念，使我们能更加深刻地把握物理内涵而不是在繁复的数学之中迷失。

## 物理实例

### 二态问题

考虑一个固定温度的二态系统，系统总共有两个微观态，一个能量为0，另一个能量为ε>0。
两个态出现的概率分别是：$$P(0)=\frac{1}{1+\mathrm{e}^{-\beta \epsilon}}$$
$$P(\epsilon)=\frac{\mathrm{e}^{-\beta \epsilon}}{1+\mathrm{e}^{-\beta \epsilon}}$$
那么系统的内能（平均微观态能量）为：
$$\langle E\rangle  =0 \cdot P(0)+\epsilon \cdot P(\epsilon) =\frac{\epsilon}{\mathrm{e}^{\beta \epsilon}+1}$$
![二态问题](\img\ScreenShot_2025-12-05_172857_948.png "二态问题")

如图所示：当温度很低时，内能趋于0，系统几乎呆在基态上；当温度很高时，两个态几乎被平均地占据。

### 等温大气（单粒子配分函数）

问题：将大气看作等温系统，估算大气中粒子数随海拔高度的分布。
解：求解粒子数随高度的分布，等价于求解一个单独的粒子随高度分布的概率。如果我们只考虑粒子的重力势能，那么不同高度就为粒子提供了不同能级。最终问题转化为了求给定温度下处在不同能级的概率分布，这就是玻尔兹曼分布。一个质量为m的粒子处在高度为z的“能级”的概率为：
$$P(z) \propto \mathrm{e}^{-m g z / k_{\mathrm{B}} T}$$
那么原问题中的粒子数分布为：
$$n(z)=n(0) \mathrm{e}^{-m g z / k_{\mathrm{B}} T}$$
其中$n(z)$是高度z处的粒子数密度。

讨论：
1. 高度z开始算的起点并不重要，如果变成z+c，那么只是在概率中乘了一个常数项，最后根据0海拔处的粒子数密度归一化就能得到相同的答案。
2. 玻尔兹曼分布是对系统的微观态的分布，他给出了微观态处于某一能量的概率。这个问题中，系统应该包含所有粒子，系统微观态的能量应当是所有粒子能量之和，但是我们却对单个的粒子使用了玻尔兹曼分布。这种处理是正确的，虽然并不直接，我们要通过介绍下面介绍的单粒子配分函数来证明这种处理方式的合理性。

对于近独立粒子系统，系统某一微观态S的能量是所有粒子单粒子态能量之和（第一个粒子单粒子态S1，第i个粒子单粒子态Si）：
$$ε_s=ε_{s1}+\cdot\cdot\cdot+ε_{si}+\cdot\cdot\cdot+ε_{sN}$$
系统的这个微观态其实包含着N个粒子都在各自的单粒子态Si：
$$\lbrace s \rbrace=\lbrace s_1,s_2,...,s_i,...,s_N \rbrace$$
那么系统的配分函数可以进行如下的“因子化”来写成单粒子配分函数之积的形式：
$$\begin{array}{l}\begin{aligned} Z=\sum_{\{s\}} e^{-\beta \varepsilon_{s}} & =\sum_{s_{1}} \sum_{s_{2}} \cdots \sum_{s_{i}} \cdots \sum_{s_{N}} e^{-\beta\left(\varepsilon_{s_{1}}+\cdots+\varepsilon_{s_i}+\cdots+\varepsilon_{s_ N}\right)} \\ & =\sum_{s_{1}} e^{-\beta \varepsilon_{s 1}} \cdots \sum_{s_{i}} e^{-\beta \varepsilon_{s i}} \cdots \sum_{s_N} e^{-\beta \varepsilon_{s_N}} \\ & =\prod_{i}\left(\sum_{s_i} e^{-\beta \varepsilon_{s i}}\right) \\ & =\prod_{i} Z_{i}\end{aligned} \end{array}$$
系统处在某个微观态s的概率也分解为了每个粒子处在相应态的概率之积（独立事件的概率相乘）：
$$P_{s}=\frac{1}{Z} e^{-\beta \varepsilon_{s}}=\prod_{i} \frac{1}{Z_{i}} e^{-\beta \varepsilon_{s_i}}=\prod_{i} P_{s_i}$$
其中$Z_i$、$P_{s_i}$分别是第i个粒子的配分函数和处在$s_i$单粒子态的概率：
$$Z_{i}=\sum_{s_{i}} e^{-\beta \varepsilon_{s_i}} \quad ; \quad P_{s_i}=\frac{1}{Z_{i}} e^{-\beta \varepsilon_{s_i}}$$
可见，近独立粒子系统中，单一粒子在其单粒子态上的分布与系统相似（这里也类似于玻尔兹曼分布），所以这里等温大气中某个粒子处在特定能级的概率也可以直接带玻尔兹曼分布。

## 数学关系