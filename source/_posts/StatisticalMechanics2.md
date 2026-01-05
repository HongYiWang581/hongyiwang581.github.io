---
title: 统计力学2
date: 2025-12-01 17:00:00
permalink: /statistical-mechanics-2/
categories: 
    - [物理学,统计物理,统计力学]
tags: 
    - 统计物理
    - 统计力学
    - 基本概念

---

# 引言

## 三种系综的微观态分布

### 微正则系综与等概率分布

在微正则系综中，系统与外界既不进行能量交换也不进行物质交换，因此具有相同的能量与粒子数。系统每个微观态出现的概率相等：
$$P_{\text {microstate}}= const.$$
这正是等概率原理

### 正则系综与Boltzmann分布

在正则系综中，系统保持温度的恒定，但是系统能量存在涨落，我们希望研究这些不同能量的微观态随能量的分布情况。

显然这些微观态不再是概率相等的了，因为等概率原理与各态遍历假设只适用于微正则系综。我们并没有直接可用来研究正则系综的公理或假设，但是可以把正则系综构造成微正则系综：假设系统与一个比他自己远远大的热源相接触，他们之间只能通过热传导的方式进行能量交换，且热源大到不论如何跟系统交换能量，他自身的温度都保持不变（或变化无穷小）。那么系统温度恒定的这个条件就等价为了与大热源接触，这样做的好处是我们可以将大热源与系统的整体看作是孤立系统，从而可以用微正则系综的研究方法来研究他
![系统与大热源](\img\ScreenShot_2025-12-02_110638_678.png "系统温度恒定")

对于这个整体，他们拥有能量E，且整体的每一种微观态都概率相等。设系统某一特定的微观状态能量为ε，那么热源的能量就是E-ε，这一特定系统微观态出现的概率$P(ε)$就正比于相应的整体所包含的微观状态数：$$P(ε)\propto \Omega(E-ε)\times1$$

由于ε⋘E，我们可以作泰勒展开：
$$\ln \Omega(E-\epsilon)=\ln \Omega(E)-\frac{\mathrm{d} \ln \Omega(E)}{\mathrm{d} E} \epsilon+\cdots$$
使用温度的定义，我们把第二项换成热源的温度T（由于热平衡，这同样也是系统的温度T）：
$$\ln \Omega(E-\epsilon)=\ln \Omega(E)-\frac{\epsilon}{k_{\mathrm{B}} T}+\cdots$$
$$\Omega(E-\epsilon)=\Omega(E) \mathrm{e}^{-\epsilon / k_{\mathrm{B}} T}$$
又因为$\Omega(E)$是个常数，因此能量为$E_s$的一个系统微观态的概率就是：
$$P(E_s) = \frac{1}{Z}\cdot\mathrm{e}^{-E_s / k_{\mathrm{B}} T}=\frac{1}{Z}\cdot\mathrm{e}^{-\beta E_s}$$
其中：
- $E_s$是微观态s的能量
- β是$1 / k_{\mathrm{B}} T$
- Z是正则配分函数（归一化因子）（对微观态求和）：$$Z=\sum_{s}\mathrm{e}^{-\beta E_s}$$
- $P(E_s)$是系统确定N,V,T这几个状态量后，处于微观态s的概率。

### 巨正则系综与Gibbs分布 {#熵S的偏微分关系}

考虑一个系统固定温度和化学势（体积因为不涉及所以也默认固定），我们还是假想他与一个大热源同时也是大粒子源接触，他们的总能量U以及总粒子数N固定。那么对于能量为ε、粒子数为N的一个特定系统微观态来说，他的概率就正比于源此时包含的微观状态数$Ω(U-ε,N-n)=e^{S(U-ε,N-n)/k_B}$

因为现在源和系统处于热平衡和化学平衡态，所以源的温度就是系统的温度，源的化学势就是系统的化学势。

对源进行泰勒展开：$$S(U-\varepsilon, N-n)=S(U, N)-\varepsilon\left(\frac{\partial S}{\partial U}\right)_{N, V}- n\left(\frac{\partial S}{\partial N}\right)_{U, V} 
$$

为了知道展开的线性项，我们S写为U、V、N的函数然后跟热力学基本方程做对比有：
$$S=S(U, V, N) \Rightarrow d S=\left(\frac{\partial S}{\partial U}\right)_{N, V} d U+\left(\frac{\partial S}{\partial V}\right)_{N, U} d V+\left(\frac{\partial S}{\partial N}\right)_{U, V} dN$$
$$d U=T d S-p d V+\mu d N \Rightarrow d S=\frac{d U}{T}+\frac{p d V}{T}-\frac{\mu d N}{T}$$

得到如下关系：$$\left(\frac{\partial S}{\partial U}\right)_{N, V}=\frac{1}{T} ;\left(\frac{\partial S}{\partial V}\right)_{N, U}=\frac{p}{T} ; \left(\frac{\partial S}{\partial N}\right)_{U, V}=-\frac{\mu}{T}$$

那么一开始的展开：$$S(U-\varepsilon, N-n)=S(U, N)-\varepsilon \cdot \frac{1}{T}+n \cdot \frac{\mu}{T}$$

系统处于能量为ε、粒子数为N的概率：$P(\varepsilon, n) \propto e^{\beta(\mu n-\varepsilon)}$

对于给定温度和化学势的系统，其能量为$E_i$、粒子数为$N_i$的微观态的概率为：$$P i=\frac{1}{Z} \cdot e^{\beta\left(\mu N_{i}-E_{i}\right)} \quad ; \quad Z=\sum_{i} e^{\beta\left(\mu N_{i}-E_{i}\right)}$$
其中Z是巨配分函数。

## 最大熵原理推导系综微观态分布

我们根据最大熵原理，结合不同系综对应的约束条件，同样可以推导出微观态的分布函数。在数学上，就是使得熵$S=-k_B\sum_{i}P_ilnP_i$在满足特定约束的情况下取得极值，可以使用拉格朗日乘子法。

### 微正则系综

约束条件：

1. 概率归一化：$\sum_{i} p_{i}=1$
2. 能量精确固定：当且仅当取孤立系统的固定能量时:$E_{i} = E$，微观态才有可能出现：$p_{i}\neq 0$

构造拉格朗日函数：

$$\mathcal{L}=-k_{B} \sum^{\prime} p_{i} \ln p_{i}+\lambda\left(1-\sum^{\prime} p_{i}\right)$$

其中仅仅对$E_{i} = E$的态求和即可。对$p_i$求导：

$$\frac{\partial \mathcal{L}}{\partial p_{i}}=-k_{B}\left(\ln p_{i}+1\right)-\lambda=0$$
解得：$p_{i}=e^{-\lambda / k_{B}-1}$

可见所有能量为E的微观态都具有相等的概率，归一化就得到：$$p_{i}=\frac{1}{\Omega(E)}$$

即微正则系综所有可能微观态概率相同，这就是等概率原理！值得注意的是：作为统计力学的基本原理，等概率原理应当是不能被推出来的，但为什么这里“推出”了呢？因为这里推导的过程我们已经“知道”了熵的具体表达式（以熵的表达式作为出发点），而我们最开始是从等概率原理出发推导温度的表达式，进而比较得出熵的具体表达式的。因此，等概率原理和熵的表达式二选一有一个必须作为基本原理，然后才可以推出另外一个。

### 正则系综

约束条件：

1. 概率归一化：$\sum_{i} p_{i}=1$
2. 温度固定（温度固定是热力学强度量，而使用统计方法应当从可测量的统计量出发，在这里温度固定就意味着系统的平均能量固定，因为系统的平均能量是温度的正相关函数）：$\sum_i p_{i} E_{i}=\langle E\rangle$

引入拉格朗日乘子α和β，构造拉格朗日函数：
$$\mathcal{L}=-k_{B} \sum_{i} p_{i} \ln p_{i}+\alpha\left(1-\sum_{i} p_{i}\right)+\beta\left(\langle E\rangle-\sum_{i} p_{i} E_{i}\right)$$
对每个$p_i$求导：
$$\frac{\partial \mathcal{L}}{\partial p_{i}}=-k_{B}\left(\ln p_{i}+1\right)-\alpha-\beta E_{i}=0$$
得到：$$\ln p_{i}=-\frac{\alpha}{k_{B}}-1-\frac{\beta}{k_{B}} E_{i}$$

令常数$\frac{\alpha}{k_{B}}+1=\ln Z$，则有：
$$p_{i}=\frac{1}{Z} e^{-\frac{\beta}{k_{B}} E_{i}}$$
这样可以看出α是确定Z相关的，而Z就是正则系综的配分函数！

现在我们要确定拉格朗日乘子β的物理含义（其实这个β乘子一般统计力学常用的那个β就相差了一个玻尔兹曼常量），我们用上面得到的$p_i$计算熵有：
$$\begin{array}{c}S=-k_{B} \sum_{i} p_{i} \ln p_{i}=k_{B} \sum_{i} p_{i}\left(\ln Z+\frac{\beta}{k_{B}} E_{i}\right) \\ S=k_{B} \ln Z+\beta\langle E\rangle\end{array}$$

而热力学中的内能“U”，就对应于统计力学中的能量平均值——系统所有可能微观状态的统计平均（或能量的系综平均）：$U \equiv\langle E\rangle=\sum_{i} p_{i} E_{i}$（对态求和）

又正则系综固定体积和粒子数：
$$\beta = \left(\frac{\partial S}{\partial\langle E\rangle}\right) = \left(\frac{\partial S}{\partial U}\right)_{V,N}= \frac{1}{T}$$

最终我们得到了玻尔兹曼分布：
$$\begin{array}{l}p_{i}=\frac{1}{Z} e^{-E_{i} /\left(k_{B} T\right)} \\ Z=\sum_{i} e^{-E_{i} /\left(k_{B} T\right)}\end{array}$$

### 巨正则系综

约束条件：

1. 概率归一化：$\sum_{i} p_{i}=1$
2. 固定的平均能量（恒温）：$\sum_i p_{i} E_{i}=\langle E\rangle$
3. 固定的平均粒子数（恒化学势）：$\sum_i p_{i} N_{i}=\langle N\rangle$

引入拉格朗日乘子α、β、μ，构造拉格朗日函数：
$$\mathcal{L}=-k_{B} \sum_{i} p_{i} \ln p_{i} + \alpha\left(1-\sum_{i} p_{i}\right)+\beta\left(\langle E\rangle-\sum_{i} p_{i} E_{i}\right)+\mu\left(\langle N\rangle-\sum_{i} p_{i} N_{i}\right) $$
对所有$p_i$求偏导有：
$$\frac{\partial \mathcal{L}}{\partial p_{i}}=-k_{B}\left(\ln p_{i}+1\right)-\alpha-\beta E_{i}-\mu N_{i}=0$$
$$\ln p_{i}=-\frac{\alpha}{k_{B}}-\frac{\beta E_{i}}{k_{B}}-\frac{\mu N_{i}}{k_{B}}-1=-\ln Z-\frac{1}{k_{B}}\left(\beta E_{i}+\mu N_{i}\right) $$
得到：$p_{i}=\frac{1}{Z} e^{-k_{B}\left(\beta E_{i}+\mu N_{i}\right)}$
同样地，为了明确上式的分布中包含的拉格朗日乘子的含义，我们把他带入熵的表达式计算出来：
$$\begin{array}{l} S=k_{B} \frac{1}{Z} \sum_{i} e^{-\frac{1}{k_{B}}\left(\beta E_{i}+\mu N_{i}\right)} \cdot\left[\ln Z+\frac{1}{k_{B}}\left(\beta E_{i}+\mu N_{i}\right)\right] \\ =k_{B} \ln Z+\sum_{i} p_{i}\left(\beta E_{i}+\mu N_{i}\right)=k_{B} \ln Z+\beta\langle E\rangle+\mu\langle N\rangle \end{array}$$
得到：$$\beta=\frac{\partial S}{\partial \langle E\rangle}=\frac{\partial S}{\partial U}=\frac{1}{T} ; \mu = \frac{\partial S}{\partial \langle N\rangle}=\frac{\partial S}{\partial N}=-\frac{\mu}{T}$$
把乘子的表达式带入，得到最终的Gibbs分布：
$$\begin{array}{l}
p_{i}=\frac{1}{Z} e^{-\beta\left(E_{i}-\mu N_{i}\right)} \\ Z=\sum_{i} e^{-\beta\left(E_{i}-\mu N_{i}\right)}\end{array}$$
其中$E_{i}\ ，N_{i}$分别是微观态i的能量和粒子数，Z是巨配分函数（对所有微观态求和）。


## 系统的微观态

微观态是研究特定系统时必须考虑的事，并且有着极高的重要性，如果我们不能准确理解和分析系统的微观态及其数目分布特征，我们将无法正确地进行任何深入研究。然而，对于不同的系统，微观态可能代表着不同的含义，这些含义的区别正是表现出了其物理内涵的不同。

在经典的可分辨全同粒子系统中，确定系统的微观状态就是确定每一个粒子的单粒子态；而在量子力学的语境下，一个系统的微观状态指的是系统中每一个粒子在各个量子态上的一种占据方式，即明确每个单粒子量子态上占据的粒子数。

若一个近独立粒子系统有确定的粒子数N，能量E，和体积V，这N个粒子按能级的分布为：

| 能级   | 简并度 | 粒子数 |
| :----: | :----: | :----: |
| $ε_1$  | $ω_1$  | $a_1$  |
| $ε_2$  | $ω_2$  | $a_2$  |
| ...    | ...    | ...    |
| $ε_l$  | $ω_l$  | $a_l$  |
| ...    | ...    | ...    |

简并度ω就是指处在同一能级的不同态的个数。“$l$”标记能级（level）“$s$”标记态（state）。
$$\lbrace a_l \rbrace=\lbrace a_1,a_2,...,a_l,... \rbrace$$被称为粒子数表象中按能级的一个分布，且满足约束条件：
$$\sum_{l}a_l=N
\ ;\ \
\sum_{l}a_l\cdotε_l=E$$
前面所说的近独立性则体现在能量约束条件中，由于粒子之间没有相互作用，总能量可以按能级乘以粒子数相加。

上面的约束条件就是系统所处的宏观态N，V，E给出的条件，由此也可以看出一个宏观态能对应于多个微观态。

## Boltzmann 系统

### Boltzmann 系统微观状态数

## Bose 系统

### Bose-Einstein 分布

### Bose 系统微观状态数

## Fermi 系统

### Fermi-Dirac 分布

### Fermi 系统微观状态数
