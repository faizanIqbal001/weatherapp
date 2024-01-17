# weatherapp

## Getting Started

This project is a starting point for weather application.

1.Setup Flutter Environment To Run The App
You Need:
Android Studio/Vs Code
Flutter Latest And Configured With IDE
Internet Connection (App need to fetch data)

2.My Code Structure
I have divided the code in 4 main different layers
1.Data(holds data related code with API calls)
2.Domain(Here our business logic)
3.Presentation(Ui/Ux related Code)
4.di(Dependency Injection)(initialize resources, domain and data components)

What i used for stat management?
I have used Bloc for this.
we have separate folder for blocs of every module/screen

Libraries I have Used?
#network
http:
dio:
dartz:

#state_managment
flutter_bloc:
equatable:
get_it:
 