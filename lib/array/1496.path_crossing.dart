/*
  1496. Path Crossing

  Given a string path, where path[i] = 'N', 'S', 'E' or 'W', 
  each representing moving one unit north, south, east, or west, respectively. 
  You start at the origin (0, 0) on a 2D plane and walk on the path specified by path.

  Return true if the path crosses itself at any point, that is, 
  if at any time you are on a location you have previously visited. Return false otherwise.

  Example 1:
    Input: path = "NES"
    Output: false 
    Explanation: Notice that the path doesn't cross any point more than once.

  Example 2:
    Input: path = "NESWW"
    Output: true
    Explanation: Notice that the path visits the origin twice.
  
  Constraints:
    1 <= path.length <= 104
    path[i] is either 'N', 'S', 'E', or 'W'.
*/

class Solution {
  bool isPathCrossing(String path) {
    final visited = <({int x, int y})>{(x: 0, y: 0)};
    ({int x, int y}) cur = (x: 0, y: 0);

    for (int i = 0; i < path.length; i++) {
      final next = path[i];

      switch (next) {
        case 'N':
          cur = (x: cur.x, y: cur.y + 1);
        case 'S':
          cur = (x: cur.x, y: cur.y - 1);
        case 'E':
          cur = (x: cur.x + 1, y: cur.y);
        case 'W':
          cur = (x: cur.x - 1, y: cur.y);
        default:
      }

      if (visited.contains(cur)) return true;
      visited.add(cur);
    }

    return false;
  }
}
