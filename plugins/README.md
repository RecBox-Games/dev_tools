# Plugins

## Unity

- Open your unity project
- Drag and drop lib_controller.so (if on Linux) or lib_controller.dll (if on Windows) into your project
- Drag and drop cp_for_text.cs into your project
- Enable unsafe code (Edit->Settings->PLayer->Other-> allow unsafe code)

You should now be able to import and use the methods from the cp_for_text class.

## Godot

Follow the instructions at https://clever-rain-b72.notion.site/Game-Development-Instructions-Native-Testing-a4c9f6bbcaff4f4cbe4daacd71cde22d

## C/C++

- Include lib_controller.h in your project
- Compile your code with lib_controller.a
