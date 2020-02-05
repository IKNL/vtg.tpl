hello.mock <- function(name, splits=5) {
    datasets <- list()

    for (k in 1:splits) {
        # datasets[[k]] <- df[seq(k, nrow(df), by=splits), ]
        datasets[[k]] <- data.frame()
    }

    client <- vtg::MockClient(datasets)
    results <- hello(client, name)
    return(results)
}

