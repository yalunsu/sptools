### SPTools

Duccio Aiazzi

*SPTools* is a package to create, edit and convert spatial objects of the package "sp".


#### Installation

Install SPTools from its
[GitHub repository](https://github.com/duccioa/sptools). You first need to
install the [sp](https://cran.r-project.org/web/packages/sp/index.html) and [devtools](https://github.com/hadley/devtools) packages.

```r
install.packages(c("sp", "devtools"))
```

Then install SPTools using the `install_github` function in the
[devtools](https://github.com/hadley/devtools) package.

```r
library(devtools)
install_github("duccioa/sptools")
```

#### Example use
**splitLines** splits each single line contained in a SpatialLines object into segments of a specific length.   
```r
library("sptools")
c1 = cbind(c(0,2,5,7), c(0,2,3,3))
l1 = Line(c1)
sl = list(Lines(list(l1), ID = 1))
SP = SpatialLines(sl)
plot(SP)
#SPs = splitLines(SP, 0.4, plot.results = T)
```
**linedf2SpatialLines** converts a dataframe with IDs and coordinates into a SpatialLines object.    
**SpatialLines** performes the reverse operation, extracting the coordinates and IDs of each lines of a SpatialLines object and put into a dataframe.    
**createBox** and **createCircle** create a rectangle and a polygon approximating a circle in the form of a SpatialPolugons object.    

#### Licenses

The SPTools package as a whole is distributed under
[GPL-3 (GNU General Public License version 3)[http://www.gnu.org/licenses/gpl-3.0.en.html].

