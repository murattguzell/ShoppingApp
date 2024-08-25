# Shopping App

**Offering Shopping Experience:** Providing a shopping experience where users are presented with images, names and prices of various products.

**Showing Product Information:** Enabling users to easily see product details and learn about products.

**Providing User Interaction:** Enabling user interactions on products (for example, clicking on a product and accessing its details).

## Features

- Product Listing:

Description: A list of various products is shown on the HomePage screen. Each product is presented with its name, image and price.

Details: Products are shown with information defined by the Products class. Products are defined as a fixed list.

- Product Details:

Description: When the user clicks on a product, they are directed to the DetailPage screen. Here, the details (image and price) of the selected product are shown.

Details: The name, image and price of the product are displayed in large fonts on this screen.

- Product Images:

Description: Each product is displayed with a corresponding image. Images are taken from the application's local resources (assets).

Details: Product images are loaded from the application's source directory using the Image.asset widget.

- Add to Cart Button:

Description: There is an "Add to Cart" button next to the products. When the user clicks on this button, a message is printed indicating that the product has been added to the cart.

Details: The button's functionality is provided by using the ElevatedButton widget to capture the click event.

- Navigation:

Description: Toggle between screens to access product details. When the user clicks on a product, they are directed to the DetailPage screen.

Details: Navigation is performed using Navigator.push and MaterialPageRoute.

- Asynchronous Data Loading:

Description: Products are loaded and displayed asynchronously using the FutureBuilder widget.

Details: FutureBuilder manages feedback such as a loading status or an error status while the product data is being loaded.
## Technologies Used

**Flutter Framework:**

Purpose: It is a framework used for developing applications. It provides cross-platform development for both Android and iOS.
Usage: Widgets such as MaterialApp, StatelessWidget, and ThemeData are the UI building blocks offered by Flutter.

**StatelessWidget:**

Purpose: It is used to define stateless widgets. It provides a fixed UI structure in the application.
Usage: MyApp class contains static widgets and is defined as StatelessWidget since there is no state change in the UI.

**StatefulWidget:**

Purpose: It is used to create state-dependent widgets. It manages a state that can change dynamically while the application is running.
Usage: HomePage class is a structure where the product list can change dynamically while interacting with the user interface. Therefore, it is defined as StatefulWidget.

**FutureBuilder Widget:**

Purpose: Provides a structure that creates widgets according to the results of asynchronous operations. For example, it updates the screen when the data retrieval process is completed.
Usage: According to the result of the productsDownload() function, the product list is dynamically created using FutureBuilder.

**ListView.builder:**

Purpose: Used to display long data lists in a dynamic and efficient way.
Usage: The product list is created using ListView.builder. This method is ideal for displaying large data sets in an optimized way.

**Navigator.push & MaterialPageRoute:**

Purpose: Used to provide transition between screens. It creates a new page and allows switching to that page.
Usage: When the user clicks on a product, they are directed to the DetailPage page and this process is done with Navigator.push and MaterialPageRoute.

**Card Widget:**

Purpose: Used to display information in an organized way by creating content cards.
Usage: Each product information is organized in the Card widget with visual and price details.

## Screenshots

| ![](https://github.com/murat-guzel33/myScreenShotFiles/blob/master/ShoppingApp/Ss1.png?raw=true) | ![](https://github.com/murat-guzel33/myScreenShotFiles/blob/master/ShoppingApp/Ss2.png?raw=true) | ![](https://github.com/murat-guzel33/myScreenShotFiles/blob/master/ShoppingApp/Ss3.png?raw=true) | ![](https://github.com/murat-guzel33/myScreenShotFiles/blob/master/ShoppingApp/Ss4.png?raw=true) | ![](https://github.com/murat-guzel33/myScreenShotFiles/blob/master/ShoppingApp/Ss5.png?raw=true) | ![](https://github.com/murat-guzel33/myScreenShotFiles/blob/master/ShoppingApp/Ss6.png?raw=true) |
|------------------|------------------|------------------|------------------|------------------|------------------|
