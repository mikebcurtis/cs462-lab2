ruleset b505198x1 {
    meta {
        name "cs462 lab 2"
        author "mike curtis"
        logging off
    }
    dispatch {
       
    }
    rule exercise_7 {
        select when pageview ".*" setting ()
        pre {
            count = app:count + 1;
        }
        if count <= 5 then
            notify("Fired count", count) with sticky = true;
        fired {
            app:count += 1 from 1
        }
    }
}
