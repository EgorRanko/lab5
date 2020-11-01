x<-list(
  name="Car",
  drive="I'm driving",
  signal="biiip-biiip!!!",
  transmission="Automatic"
)
class(x)<-"Automobile"

attributes(x)

x

print.Automobile<-function(auto){
  cat("Название", auto$name, "\n")
  cat("Ехать", auto$drive, "\n")
  cat("Сигналить", auto$signal, "\n")
  cat("Коробка передач", auto$transmission, "\n")
  cat("Топливо", auto$fuel, "\n")
}

a<-list(
  name="BMW",
  transmission="Автоматическая коробка передач",
  fuel="Дизельное топливо"
)
class(a)<-c("transmission", "fuel", "Automobile")

b<-list(
  name="Mercedes",
  transmission="Автоматическая коробка передач",
  fuel="Бензин"
)
class(b)<-c("transmission", "fuel", "Automobile")

c<-list(
  name="Mitsubishi",
  transmission="Механическая коробка передач",
  fuel="Бензин"
)
class(c)<-c("transmission", "fuel", "Automobile")

choice<-function(){
  v1 <- readline("Какой автомобиль вас интересует(BMW, Mercedes, Mitsubishi)?")
  if(v1 == "BMW") print.Automobile(a)
  if(v1 == "Mercedes") print.Automobile(b)
  if(v1 == "Mitsubishi") print.Automobile(c)
}
choice()