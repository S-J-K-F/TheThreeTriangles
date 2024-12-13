(Description, instructions and gameplay features chosen at the bottom)

# S-J-K-F/Wolfie-K:
### BIG PICTURE ITEMS:
- Creation for safe rooms
- Creation for diolouge + NPC
- Creation for Player
- Creation for room music

# jfeatherston09:
### BIG PICTURE ITEMS:
- Creation for puzzles
- Creation for sprites
- Creation for nightmare rooms and boss room
- Creation for transitions between rooms
- Creation for the description for the game.

# jennaL808:
### BIG PICTURE ITEMS:
- Creation for a GUI system for health points + collected and uncollected triangles + the system for each
- Creation for TileMapLayers
- Creation for Collision to TileMaps
- Creation for Dream Rooms

# angelaD707:
### BIG PICTURE ITEMS:
- Created Enemies + Traps + boss
- Created Title Screen

# shauryaO9:
### BIG PICTURE ITEMS:
- Creation for an ending screen
- Creation for normal rooms


# Description:
The Three Triangles is a hybrid between a puzzle game and an RPG. You play as a child who has to journey through the whimsy of his dreams, the horror of his nightmares, and the curious in-between to collect three triangle-shaped objects. Conquer enemies and a multitude of puzzles alike, and enjoy the luxiorious artsytle curated by both the internet and yours truly. Boggle your mind in the dozen or so rooms this game has to offer; don't get to comfortable though, you never know what might be lurking in the darkness, or behind that looming door awaiting you at the end... Move up, down, right, or left, using the respective arrow keys.

# Instructions (How to test each of the chosen features and where to find the related scenes and scripts for each feature):
- Movement and Collisions: Simply move around using the arrow keys. Up is to move up, down is to move down, left is to move left, and right is to move right. Once you start moving in a certain direction, you can't change directions until you stop moving entirely. As for collisions, those can be found on the tilemaps of all of the objects in each scene. You collide with walls and other objects in the map. You can also hold "shift" to walk faster.

- Enemies and Traps: Traps are thrown in here and there in each map. Enemies have their own folder, "Entities", and they first start appearing in the latter dreasmmare rooms. From that point onward, the enemies become more prevelant and are scattered throughout the nightmare rooms.

- Tilemaps and Worldbuilding: All tilemaps can be found in each level scene, as well as the "Titles" folder. They are what makes up every single visible object(asterisk). Every tilemap is sourced from the internet.

- Dialogue: You can press "z" to interact with every NPC that shows up in the safe rooms. The amount of people you talk to changes the ending. You can find the dialogue scripts in the dialogue folder and the NPC scripts in the entities folder.

- GUI (Health, action bar, pause menu, inventory, and dialogue selection): Our health system follows a simple 3 life system, and are displayed via a GUI displaying three hearts. We also have a GUI displaying the three triangles needed to be collected, which is used to depict which of them have yet to be collected and which ones you currently have.

# Instructions (Where to find examples of each OOP concept and Godot feature)
Inheritance: You can find inheritance with each of the "NPC_#"s besides the "NPC".

Encapsulation:

Polymorphism:

Abstraction:

### Godot Features:
Node Types:

Signals:

Scenes:
