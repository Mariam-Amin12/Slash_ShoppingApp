# Shoppong app

A Home Screen for a shopping App task for **Slash Internship**

## Feature

1. Responsive Design :Responsive screen for Both Mobile or web layout.
2. Architecture: clean architecture principles useing MVVM pattern to separate concerns.
3. State Management: used Cubit for managing state across the application

## File Structure

1. **Data Layer**: have all the data models , repositories,constant\
the reposotory is an abstract class for the easy to apply any kind of data fetching i have used dummydata so i have implemented a subclass form the main reposotory
2. **Domain Layer** : have the entitys and the use cases\
i have made for each of the product and cotegoies an entity,and for the each fech of data has a spacific use case

3. **Presentation Layer**: have Views, View Model , Business Logic ,Widget\
*Views*:have all the needed pages (screens)
*View Model*: in that task i have implemented two viewModel one for the app the main widets and one for the HomeScreen to provide it with data\
*widgets*:have all the needed component\
*Business Logic*: have used the cubit state mangament in fetching data and get its state and for navigation between pages using the navigation Bar

## mobile HomeScreen

![Screenshot1](https://github.com/Mariam-Amin12/Slash_shoppingApp/assets/128838373/cc2410da-699e-4151-8d2b-3637e416e9f4)

## Web HomeScreen

![Screenshot 2024-06-22 200009](https://github.com/Mariam-Amin12/Slash_shoppingApp/assets/128838373/d7a62df1-9497-4438-af77-038862bf79b0)

## Runnning the project


**Prerequisites:**

- Ensure you have the necessary development tools installed for your chosen framework (IDE, SDKs). Common options include:
    - **Flutter:**
        - Flutter SDK (`flutter.dev`)
        - IDE with Flutter support (VS Code with Flutter plugin, Android Studio, etc.)


**Instructions:**

1. **Clone the Repository (if applicable):**

   ```
   flutter pub get

   flutter run
   ```

### Created By (Mariam Amin)

