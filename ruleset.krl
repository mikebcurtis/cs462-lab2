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
            count = ent:count + 1;
        }
        if count <= 5 then
            notify("Fired count", count) with sticky = true;
        fired {
            ent:count += 1 from 0
        }
    }
}

