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
            get_name = function(query) {
                res_arr = query.extract(re/name=(\w+)/g)
                res_arr[0]
            };
        }
        every {
            notify("Hello World", "This is a sample rule.") with sticky = true;
            notify("Another Notify", "Second notification.") with sticky = true;
            notify("Debug Notify", get_name(query)) with sticky = true;
            notify("Third Notify", query eq "" => "Hello Monkey" | "Hello " + query) with sticky = true;
        }
    }
}
