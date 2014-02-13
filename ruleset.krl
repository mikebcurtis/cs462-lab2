ruleset b505198x1 {
    meta {
        name "cs462 lab 2"
        author "mike curtis"
        logging off
    }
    dispatch {
        
    }
    rule first_rule {
        select when pageview ".*" setting ()
        pre {
            query = page:url("query");
        }
        if query eq "" {
            notify("Hello World", "This is a sample rule.") with sticky = true;
            notify("Another Notify", "Second notification.") with sticky = true;
            notify("Third Notify", "Hello Monkey") with sticky = true;
        }
        if query neq "" {
            notify("Hello World", "This is a sample rule.") with sticky = true;
            notify("Another Notify", "Second notification.") with sticky = true;
            notify("Third Notify", "Hello " + query) with sticky = true;
        }
    }
}
