#' linedf2SpatialLines
#' @description  This function converts a dataframe of IDs and coordinates into a SpatialLines object of the package "sp".
#' @name linedf2SpatialLines
#' @param linedf a data frame with the following columns:
#'  id = generic ids of the lines,
#'  fx = coordinates x of the first point of the line,
#'  fy = coordinates y of the first point of the line,
#'  tx = coordinates x of the second point of the line,
#'  tx = coordinates y of the second point of the line.
#' @export
#' @examples library("sp", "sptools")
#' sl = linedf2SpatialLines(data.frame(id=1, fx=0, fy=0, tx=2, ty=2))
#' class(sl)
#' plot(sl)

linedf2SpatialLines = function(linedf){
sl = list()
for(i in 1:nrow(linedf)){
  c1 = cbind(rbind(linedf$fx[i], linedf$tx[i]), rbind(linedf$fy[i], linedf$ty[i]))
  l1 = Line(c1)
  sl[[i]] = Lines(list(l1), ID = linedf$id[i])
}
SL = SpatialLines(sl)
return(SL)
}

