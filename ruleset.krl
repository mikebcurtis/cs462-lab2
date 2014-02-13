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
            fired = ent:fired + 1
        }
        if fired <= 5 then
            notify("Fired count", fired) with sticky = true;
    }
}

