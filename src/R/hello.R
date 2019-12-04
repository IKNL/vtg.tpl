hello <- function(client, name) {
    pkg.name <- getPackageName()

    image.name <- glue::glue("harbor.distributedlearning.ai/vantage/{pkg.name}:test")
    client$set.task.image(
        image.name,
        task.name="Hello"
    )

    responses <- client$call("hello", name)

    for (r in responses) {
        writeln(r$result)
    }

    return(responses)
}


