% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Source_MT5.R
\name{MT5.QuickLastRow_GetSymbol}
\alias{MT5.QuickLastRow_GetSymbol}
\title{Load last row from MT5}
\usage{
MT5.QuickLastRow_GetSymbol(sSymbols, iTF)
}
\arguments{
\item{iTF}{int; target time frame. See details.}

\item{sSymbol}{character(); vector of target symbols.}
}
\value{
Returns \eqn{[nx7]} \code{{data.frame} {Date, sSymbol, Open, High, Low, Close, Volume}}.
}
\description{
Function to load the last row of a specific time frame of a vector of symbols. All the data come from socket connection.

The usage of this function is preferable than use \code{MT5.Quick_GetSymbol()} several times for each symbol.
}
\details{
Supported time frames (\code{iTF}). See references for even more details.
\itemize{
\item{1: \code{PERIOD_M1}	}
\item{2: \code{PERIOD_M2}	}
\item{5: \code{PERIOD_M5}	}
\item{15: \code{PERIOD_M15}	}
\item{30: \code{PERIOD_M30}	}
\item{60: \code{PERIOD_H1}	}
\item{120: \code{PERIOD_H2}	}
\item{240: \code{PERIOD_H4}	}
\item{480: \code{PERIOD_H8}	}
\item{1440: \code{PERIOD_D1}	}
\item{7200: \code{PERIOD_W1}	}
\item{216000: \code{PERIOD_MN1}	}
}
}
\examples{
\dontrun{
## Get last row of EURUSD and GBPUSD, 30 minute timeframe both
MT5.QuickLastRow_GetSymbol(c("EURUSD", "GBPUSD"), 30)

## Returns
##                  Date sSymbol    Open    High     Low   Close Volume
## 1 2020-12-11 00:30:00  EURUSD 1.21371 1.21401 1.21370 1.21394    184
## 2 2020-12-11 00:30:00  GBPUSD 1.33030 1.33032 1.32947 1.32993    866

}
}
\references{
\url{https://en.wikipedia.org/wiki/Open-high-low-close_chart}

\url{https://www.mql5.com/en/docs/constants/chartconstants/enum_timeframes}
}
\seealso{
\code{\link[=MT5.GetSymbol]{MT5.GetSymbol()}}, \code{\link[=MT5.Quick_GetSymbol]{MT5.Quick_GetSymbol()}}
}
\author{
Guilherme Kinzel, \email{guikinzel@gmail.com}
}
