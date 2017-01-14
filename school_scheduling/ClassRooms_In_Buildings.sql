
SELECT Buildings.BuildingName, Class_Rooms.ClassRoomID
FROM Buildings
INNER JOIN Class_Rooms
  ON  Buildings.BuildingCode =
      Class_rooms.BuildingCode;
