RPC_hello <- function(df, name) {
    # Write to the console (log)
    writeln('Hello')

    # Return the result
    return(glue::glue('Hello, {name}!!'))
}


