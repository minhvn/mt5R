% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Source_MT5.R
\name{MT5.ModifyPosition}
\alias{MT5.ModifyPosition}
\title{Modify position}
\usage{
MT5.ModifyPosition(iTicket = 0, fStop = 0, fGain = 0, ...)
}
\arguments{
\item{iTicket}{integer; positions's ticket.}

\item{fStop}{numeric; target stop loss. To remove stop loss use \code{fStop = -1}. To no change use \code{fStop = 0} or omit.}

\item{fGain}{numeric; target stop gain. To remove stop gain use \code{fGain = -1}. To no change use \code{fGain = 0} or omit.}

\item{...}{data.frame; using \code{data.frame} for several positions at once. \strong{Columns name should be the same of the arguments above}. See examples.}
}
\value{
Returns \code{TRUE} if position was successful modified, no changes and otherwise will return \code{FALSE}.

If used \code{data.frame} it will return \code{logical} vector.
}
\description{
Modification of characteristics of the previously opened position. To modify an existing pending order use \code{MT5.ModifyOrder()} instead.

It can be used targeting only one or several positions at once. See details.

Use \code{MT5.ShowPositions()} or look at "Trade" tab, to fetch \code{iTickets}.
}
\details{
It need to choose a \code{data.frame} or just one position at time to modify. Not both. An attempt using both a warning will pop up and \code{data.frame} will be used.
}
\examples{
\dontrun{
## Below examples of an existing buy position (663502899)
MT5.ModifyPosition(iTicket = 663502899, fStop = 29)

## Using data.frame for multiple modifications
df_modify <- data.frame(iTicket = 663502899, fStop = 29)
df_modify <- rbind(df_modify, data.frame(iTicket = 663502211, fStop = 130))
MT5.ModifyPosition(... = df_modify)

}
}
\seealso{
\code{\link[=MT5.SingleOrder]{MT5.SingleOrder()}}, \code{\link[=MT5.MultipleOrders]{MT5.MultipleOrders()}}, \code{\link[=MT5.ShowOrders]{MT5.ShowOrders()}}, \code{\link[=MT5.ShowPositions]{MT5.ShowPositions()}}, \code{\link[=MT5.ClosePosition]{MT5.ClosePosition()}}, \code{\link[=MT5.DeleteOrder]{MT5.DeleteOrder()}}, \code{\link[=MT5.ModifyOrder]{MT5.ModifyOrder()}}
}
\author{
Guilherme Kinzel, \email{guikinzel@gmail.com}
}
