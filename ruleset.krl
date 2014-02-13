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
        }
        if count <= 5 then
            notify("Fired count", count) with sticky = true;
        fired {
            ent:count += 1 from 1;
        }
    }
    
    rule clear_check {
        select when pageview ".*" setting ()
        pre {
            query = page:url("query");
        }
        always {
            clear ent:count if query.match(re/clear=/)
        }
    }
}

