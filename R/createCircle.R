#' createCircle
#' @name createCircle
#' @description This function creates a an approximation of a circle as a SpatialPolygons object.
#' @param x,y The coordinates of the center of the circle.
#' @param r The radius of the circle.
#' @param start Angle of the start points in radiants.
#' @param end Angle of the end points in radiants.
#' @param nsteps Number of edges of the polygon approximating the circle.
#' @usage createCircle(x,y,r,start=0,end=2*pi,nsteps=20)
#' @examples # Plot a circle with origin 0,0 and radius 1
#' library("sp", "sptools")
#' plot(createCircle(0,0,1))

createCircle <- function(x,y,r,start=0,end=2*pi,nsteps=20){
  rs <- seq(start,end,len=nsteps)
  xc <- x+r*cos(rs)
  yc <- y+r*sin(rs)
  my_pol<-cbind(xc,yc)
  my_pol <- rbind(my_pol, my_pol[1,])
  P1 = Polygon(my_pol)
  Ps1 = Polygons(list(P1), ID = "a")
  SPs = SpatialPolygons(list(Ps1))
  SPs
}
