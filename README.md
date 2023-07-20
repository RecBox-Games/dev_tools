# Gamenite dev tools
Tools for game developers

## Usage

Gamenite dev kit consists of three parts :

- A library or plug-in for the main game to interface with the server
- A controller that sends and receives input to / from the server
- A server that relays messages between the game and the controllers

````
Main Game < -- > Server < -- > Controller 
````

The main game is an executable that is ran on the console.
The controller is usually an html/js/css folder that is ran on a node server

The instructions for each piece of software is located in their respective folder

### Support

- We currently offer **C/C++**, **Unity**, **Godot** libraries / plug-ins
- The controller may be programmed /compiled to **JavaScrip**, **TypeScript**, **HTML5**
