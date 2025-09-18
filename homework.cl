class StackNode {
    data : Int;
    next : StackNode;
    
    init(d : Int) : StackNode {
        {
            data <- d;
            self;
        }
    };
    
    getData() : Int {
        data
    };
    
    getNext() : StackNode {
        next  
    };
    
    setNext(n : StackNode) : Object {
        next <- n
    };
};

class Stack inherits IO {
    top : StackNode;
    size : Int;
    
    init() : Stack {
        {
            size <- 0;
            self;
        }
    };
    
    push(item : Int) : Object {
        let newNode : StackNode <- (new StackNode).init(item) in
        {
            if size = 0 then
                top <- newNode
            else {
                newNode.setNext(top);
                top <- newNode;
            }
            fi;
            size <- size + 1;
        }
    };
    
    pop() : Int {
        if isEmpty() then {
            out_string("Error: Cannot pop from empty stack\n");
            abort();
            0;
        }
        else {
            let data : Int <- top.getData() in
            {
                top <- top.getNext();
                size <- size - 1;
                data;
            };
        }
        fi
    };
    
    peek() : Int {
        if isEmpty() then {
            out_string("Error: Cannot peek empty stack\n");
            abort();
            0;
        }
        else
            top.getData()
        fi
    };
    
    isEmpty() : Bool {
        size = 0
    };
    
    print() : Object {
        {
            if isEmpty() then
                out_string("Stack: [empty]")
            else {
                out_string("Stack (top to bottom): ");
                out_int(top.getData());
            }
            fi;
            out_string("\n");
        }
    };
    
    getSize() : Int {
        size
    };
};

class Main inherits IO {
    main() : Object {
        {
            let stack : Stack <- (new Stack).init() in
            {
                -- Test 1: Empty stack operations
                out_string("Test 1: Empty Stack Operations\n");
                out_string("Is empty: ");
                if stack.isEmpty() then 
                    out_string("true")
                else 
                    out_string("false")
                fi;
                out_string("\n");
                stack.print();
                out_string("Size: ");
                out_int(stack.getSize());
                out_string("\n\n");
                
                -- Test 2: Push operations
                out_string("Test 2: Push Operations\n");
                out_string("Pushing: 10, 20, 30, 40\n");
                stack.push(10);
                stack.push(20);
                stack.push(30);
                stack.push(40);
                stack.print();
                out_string("Size: ");
                out_int(stack.getSize());
                out_string("\n\n");
                
                -- Test 3: Peek operation
                out_string("Test 3: Peek Operation\n");
                out_string("Top element: ");
                out_int(stack.peek());
                out_string("\n");
                stack.print();
                out_string("\n");
                
                -- Test 4: Pop operations
                out_string("Test 4: Pop Operations\n");
                out_string("Popping two elements:\n");
                out_string("Popped: ");
                out_int(stack.pop());
                out_string("\n");
                out_string("Popped: ");
                out_int(stack.pop());
                out_string("\n");
                stack.print();
                out_string("Size: ");
                out_int(stack.getSize());
                out_string("\n\n");
                
                -- Test 5: Mixed operations
                out_string("Test 5: Mixed Operations\n");
                out_string("Push 50, then push 60:\n");
                stack.push(50);
                stack.push(60);
                stack.print();
                out_string("Pop one element: ");
                out_int(stack.pop());
                out_string("\n");
                stack.print();
                out_string("\n");
                
                -- Test 6: Final state
                out_string("Test 6: Final State\n");
                out_string("Is empty: ");
                if stack.isEmpty() then 
                    out_string("true")
                else 
                    out_string("false")
                fi;
                out_string("\n");
                stack.print();
                out_string("Final size: ");
                out_int(stack.getSize());
                out_string("\n\n");
                
            };
        }
    };
};
