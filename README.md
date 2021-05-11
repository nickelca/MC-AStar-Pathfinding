# MC-AStar-Pathfinding
Implements AStar pathfinding in Minecraft with a choice between manhattan distance heuristic or euclidean distance heurstic.

All options can be found under `/function pathfinding:options/...`
To get the spawn eggs for the spawn and end point, run `/function pathfinding:give_spawn_eggs`.
Once both points are placed (Note: Only one of each can be placed), run `/function pathfinding:run` to draw the path.
You can use `/function pathfinding:clear_path` to clear the path.

If you want, once the path is drawn, you can have Jimbo the villager walk along the path that was drawn by doing `/function movement:start`.


Changelog:
 - Added a timer to see how long it took to run the pathfinding.
 - Split the pathfinding up into multiple ticks as it seemed to create lots of problems, especially for harder paths.
