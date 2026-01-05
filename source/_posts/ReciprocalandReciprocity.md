---
title: 偏微分循环关系
date: 2025-10-22 15:00:00
permalink: /reciprocal-and-reciprocity/
categories: 
	- [数学处理,微积分]
tags: 

---

# Reciprocal and Reciprocity Theorem

$$\begin{aligned} & f(x, y, z)=0 \\ \Rightarrow & \left\{\begin{array}{l}1, x=x(y, z) \\ 2, z=z(x, y)\end{array}\right. \\ \Rightarrow & \left\{\begin{array}{l}1, d x=\left(\frac{\partial x}{\partial y}\right)_{z} d y+\left(\frac{\partial x}{\partial z}\right)_{y} d z \\ 2, d z=\left(\frac{\partial z}{\partial x}\right)_{y} d x+\left(\frac{\partial z}{\partial y}\right)_{x} d y\end{array}\right. \\ 2 & \rightarrow 1: \\ d x & =\left(\frac{\partial x}{\partial y}\right)_{z} d y+\left(\frac{\partial x}{\partial z}\right)_{y}\left[\left(\frac{\partial z}{\partial x}\right)_{y} d x+\left(\frac{\partial z}{\partial y}\right)_{x} d y\right] \\ & =\left(\frac{\partial x}{\partial z}\right)_{y}\left(\frac{\partial z}{\partial x}\right)_{y} d x+\left[\left(\frac{\partial x}{\partial y}\right)_{z}+\left(\frac{\partial x}{\partial z}\right)_{y}\left(\frac{\partial z}{\partial y}\right) x\right] d y \\ \Rightarrow & \left\{\begin{array}{l}\text { reciprocal: }\left(\frac{\partial x}{\partial z}\right)_{y}=\frac{1}{\left(\frac{\partial z}{\partial x}\right)_{y}} \\ \text { reciprocity: }\left(\frac{\partial x}{\partial z}\right)_{y}\left(\frac{\partial z}{\partial y}\right)_{x}\left(\frac{\partial y}{\partial x}\right)_{z}=-1\end{array}\right.\end{aligned}$$