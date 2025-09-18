# COOL Stack

一个用 COOL 语言实现的简洁栈（LIFO）示例，包含基础功能：push / pop / peek / isEmpty / getSize / print，并在 Main 类中内置测试。

## 运行
```bash
coolc homework.cl   # 编译生成 homework.s
spim homework.s     # 运行程序
```

## 文件
- homework.cl  栈实现与测试入口
- stack_simple.cl  开发过程的简化版本
- hello.cl  示例程序

## 示例输出
```
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
