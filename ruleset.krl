ruleset b505198x1 {
    meta {
        name "cs462 lab 2"
        author "mike curtis"
        logging off
    }
    dispatch {
        
    }
    rule example_5 {
        select when pageview ".*" setting ()
        pre {
            ent:count = ent:count + 1
        }
        if ent:count <= 5 then
            notify("Fired count", ent:count) with sticky = true;
    }
}

