ruleset b505198x1 {
    meta {
        name "cs462 lab 2"
        author "mike curtis"
        logging off
    }
    dispatch {
       
    }
    rule exercise_5_first {
        select when pageview ".*" setting ()
        pre {
        }
        every {
            notify("Hello World", "This is a sample rule.") with sticky = true;
            notify("Another Notify", "Second notification.") with sticky = true;
        }
    }
    
    rule exercise_5_second {
        select when pageview ".*" setting ()
        pre {
            query = page:url("query");
        }
        every {
            notify("Third Notify", query eq "" => "Hello Monkey" | "Hello " + query) with sticky = true;
        }
    }
}
