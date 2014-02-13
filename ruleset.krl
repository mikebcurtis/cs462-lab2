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
        
        notify("Hello World", "This is a sample rule.") with sticky = true;
        notify("Another Notify", "Second notification.") with sticky = true and position = bottom-right;
    }
}
