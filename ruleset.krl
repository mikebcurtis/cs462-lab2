ruleset b505198x1 {
    meta {
        name "cs462 lab 2"
        author "mike curtis"
        logging off
    }
    dispatch {
        
    }
    rule exercise_6 {
        select when pageview ".*" setting ()
        pre {
            count = ent:count + 1;
            query = page:url("query");
        }
        if count <= 5 then
            notify("Fired count", count) with sticky = true;
        fired {
            clear ent:count if query.match(re/clear=/);
            ent:count += 1 from 1;
        }
    }
}

