#' Retrieve Data From SNCF API
#'
#' @param dataset Name of the dataset to query
#'
#' @return a \code{data.frame}
#' @export
#' @importFrom crul HttpClient
#' @importFrom jsonlite fromJSON toJSON
#' @examples
#' \dontrun{
#' get_sncf("ponctualite-mensuelle-transilien")
#' }
get_sncf <- function(dataset = "ponctualite-mensuelle-transilien") {
                     cli <- HttpClient$new(
                       url = "https://ressources.data.sncf.com/api/records/1.0/search/"
                     )
                     res <- cli$get(query = list(rows = -1, dataset = dataset))
                     res$raise_for_status()
                     txt <- res$parse("UTF-8")
                     json <- fromJSON(txt)
                     return(json$records)
}
