# yit

This project is a simple flutter application to lookup images form 'https://pixabay.com'.
This will look up images and return 20 images at a time. The pages can be changed to update the images.
The images can also be added to favorites which can be differentiated by the favorite logo on top right corner.
The favorites can also be viewed on the favorites page from the floating action button.

This project utilizes the clean architecture mentioned at https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html. 
It also uses get_it at 'https://pub.dev/packages/get_it' as a service locator
Bloc and Flutter bloc are used for state management with cubit 
Freezed is used for code generation and 
Dio is used as a HTTP client

How to run
- flutter pub get
- flutter run

