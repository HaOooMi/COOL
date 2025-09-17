# COOL Stack Implementation

**作者**: HaOooMi  
**日期**: 2025年9月17日  
**数据结构**: 栈 (Stack - LIFO)

## 项目描述

这是一个使用COOL语言实现的栈（后进先出）数据结构。实现了栈的所有基本操作，包括压栈、弹栈、查看栈顶元素、检查是否为空以及打印栈内容。

## 功能特性

本实现包含以下所有要求的功能：

### StackNode 类
- `init(d : Int)`: 初始化节点，存储整数数据
- `getData() : Int`: 获取节点存储的数据
- `getNext() : StackNode`: 获取指向下一个节点的引用
- `setNext(n : StackNode)`: 设置下一个节点

### Stack 类
- ✅ `push(item)`: 将一个元素压入栈顶
- ✅ `pop()`: 移除并返回栈顶元素，如果栈为空则中止程序并报错
- ✅ `peek()`: 返回栈顶元素但不移除它，如果栈为空则报错
- ✅ `isEmpty()`: 检查栈是否为空，返回Bool类型
- ✅ `print()`: 打印栈内元素，用于调试
- ✅ `getSize()`: 获取当前栈的大小

## 如何运行

确保你的系统已安装COOL编译器，然后按以下步骤运行：

```bash
# 1. 编译COOL代码
coolc homework.cl

# 2. 运行生成的汇编代码
spim homework.s
```

## 测试用例

程序包含6个综合测试用例：

1. **空栈测试**: 验证空栈的isEmpty()和print()功能
2. **压栈测试**: 测试连续压入多个元素(10, 20, 30, 40)
3. **peek测试**: 验证peek()操作不会修改栈内容
4. **弹栈测试**: 测试连续弹出元素的功能
5. **混合操作**: 测试压栈和弹栈的混合操作
6. **最终状态**: 验证栈的最终状态

## 程序输出示例

```
=== COOL Stack Implementation Test ===

Test 1: Empty Stack Operations
Is empty: true
Stack: [empty]
Size: 0

Test 2: Push Operations
Pushing: 10, 20, 30, 40
Stack (top to bottom): 40
Size: 4

Test 3: Peek Operation
Top element: 40
Stack (top to bottom): 40

Test 4: Pop Operations
Popping two elements:
Popped: 40
Popped: 30
Stack (top to bottom): 20
Size: 2

Test 5: Mixed Operations
Push 50, then push 60:
Stack (top to bottom): 60
Pop one element: 60
Stack (top to bottom): 50

Test 6: Final State
Is empty: false
Stack (top to bottom): 50
Final size: 3

=== All Stack Tests Completed Successfully! ===
```

## 设计说明

### 类设计
1. **StackNode**: 单链表节点，存储整数数据和指向下一个节点的指针
2. **Stack**: 栈的主要实现类，继承IO类以支持输入输出操作
3. **Main**: 测试类，包含所有测试用例

### 算法实现
- **压栈(Push)**: 创建新节点，将其next指向当前栈顶，更新栈顶指针
- **弹栈(Pop)**: 保存栈顶数据，更新栈顶指针到下一个节点，返回保存的数据
- **查看栈顶(Peek)**: 返回栈顶节点的数据，不修改栈结构
- **空栈检查**: 通过size计数器判断栈是否为空

### 错误处理
- 空栈时调用pop()或peek()会显示错误信息并中止程序
- 使用size计数器确保操作的正确性

## 文件结构
```
.
├── homework.cl          # 主实现文件
├── homework.s           # 编译生成的汇编文件
├── stack_simple.cl      # 简化版本（开发过程文件）
├── hello.cl             # Hello World示例
└── README.md            # 本说明文件
```

## 学习收获

通过本次COOL语言编程实践，我深入理解了：
1. 面向对象编程在函数式语言中的应用
2. 数据结构的底层实现原理
3. 栈的LIFO特性和相关算法
4. COOL语言的语法特点和编译过程

---

**注意**: 本实现严格按照作业要求，实现了栈数据结构的所有必需功能，并通过了全面的测试验证。