ruleset b505198x1 {
    meta {
        name "cs462 lab 2"
        author "mike curtis"
        logging off
    }
    dispatch {
       
    }
    rule exercise_4 {
        select when pageview ".*" setting ()
        pre {
            get_name = function(query) {
                res_arr = query.extract(re/name=(\w+)/g)
                res_arr[0]
            };
            name = get_name(page:url("query"))
        }
        every {
            notify("Third Notify", name eq "" => "Hello Monkey" | "Hello " + name) with sticky = true;
        }
    }
}
