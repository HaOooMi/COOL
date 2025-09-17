(* COOL Stack Implementation - Simple Version
   Author: HaOooMi  
   Description: Stack (LIFO) data structure
*)

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
            out_string("Pushed ");
            out_int(item);
            out_string("\n");
        }
    };
    
    pop() : Int {
        if size = 0 then {
            out_string("Stack is empty\n");
            0;
        }
        else {
            let data : Int <- top.getData() in
            {
                top <- top.getNext();
                size <- size - 1;
                out_string("Popped ");
                out_int(data);
                out_string("\n");
                data;
            };
        }
        fi
    };
    
    peek() : Int {
        if size = 0 then {
            out_string("Stack is empty\n");
            0;
        }
        else {
            let data : Int <- top.getData() in {
                out_string("Top: ");
                out_int(data);
                out_string("\n");
                data;
            };
        }
        fi
    };
    
    isEmpty() : Bool {
        size = 0
    };
    
    print() : Object {
        {
            out_string("Stack size: ");
            out_int(size);
            out_string("\n");
        }
    };
};

class Main inherits IO {
    main() : Object {
        {
            out_string("=== COOL Stack Test ===\n");
            
            let stack : Stack <- (new Stack).init() in
            {
                out_string("Test 1: Empty stack\n");
                if stack.isEmpty() then 
                    out_string("Stack is empty: true\n")
                else 
                    out_string("Stack is empty: false\n")
                fi;
                stack.print();
                
                out_string("\nTest 2: Push elements\n");
                stack.push(10);
                stack.push(20);
                stack.push(30);
                stack.print();
                
                out_string("\nTest 3: Peek\n");
                stack.peek();
                
                out_string("\nTest 4: Pop elements\n");  
                let val1 : Int <- stack.pop() in
                let val2 : Int <- stack.pop() in
                {
                    stack.print();
                };
                
                out_string("\nTest 5: Check if empty\n");
                if stack.isEmpty() then 
                    out_string("Stack is empty: true\n")
                else 
                    out_string("Stack is empty: false\n")
                fi;
                
                out_string("\nAll tests completed!\n");
            };
        }
    };
};