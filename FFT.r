time_series <- read.csv("time_series.csv",header = F)
plot(time_series$V1,time_series$V3)

discrete_fourier_transform <- fft(time_series$V3)
freq <- seq(0,length(discrete_fourier_transform)-1)
plot(freq,abs(discrete_fourier_transform))

#why is first frequency so large?
#first frequency is the DC/ 0 hertz. not entirely useful

#Why are peaks symmetrical?
#our data is purely real numbers, so values > N/2 are redundant