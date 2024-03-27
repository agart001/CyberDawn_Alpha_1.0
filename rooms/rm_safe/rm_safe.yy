{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_safe",
  "creationCodeFile": "${project_dir}/rooms/rm_safe/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_1C30294E","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_76F88D39","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_6C4EF83B","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_864DACF","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_65D69BED","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_609B58A3","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_6A3D49AF","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_5D0174B5","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_2F172060","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_7466AEB6","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_5C71B4FF","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_34D54B8A","path":"rooms/rm_safe/rm_safe.yy",},
    {"name":"inst_4EFBEAEC","path":"rooms/rm_safe/rm_safe.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Particles","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Projectiles","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Text","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Door","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_34D54B8A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_levelNext","path":"objects/obj_levelNext/obj_levelNext.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1728.0,"y":832.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4EFBEAEC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_levelPrevious","path":"objects/obj_levelPrevious/obj_levelPrevious.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":160.0,"y":832.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collisions","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1C30294E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_collision","path":"objects/obj_collision/obj_collision.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":10.0,"x":32.0,"y":576.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_76F88D39","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_collision","path":"objects/obj_collision/obj_collision.yy",},"properties":[],"rotation":0.0,"scaleX":28.0,"scaleY":1.0,"x":960.0,"y":928.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6C4EF83B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_collision","path":"objects/obj_collision/obj_collision.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":10.0,"x":1888.0,"y":576.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_864DACF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_collision","path":"objects/obj_collision/obj_collision.yy",},"properties":[],"rotation":0.0,"scaleX":28.0,"scaleY":0.5,"x":960.0,"y":272.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_65D69BED","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_collision","path":"objects/obj_collision/obj_collision.yy",},"properties":[],"rotation":0.0,"scaleX":4.0,"scaleY":0.5,"x":960.0,"y":496.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_609B58A3","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_collision","path":"objects/obj_collision/obj_collision.yy",},"properties":[],"rotation":0.0,"scaleX":5.0,"scaleY":0.5,"x":1504.0,"y":624.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6A3D49AF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_collision","path":"objects/obj_collision/obj_collision.yy",},"properties":[],"rotation":0.0,"scaleX":5.0,"scaleY":0.5,"x":416.0,"y":624.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Controllers","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5D0174B5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":160.0,"y":-128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2F172060","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_HUD","path":"objects/obj_HUD/obj_HUD.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":-128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7466AEB6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_particle","path":"objects/obj_particle/obj_particle.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":-128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5C71B4FF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_world","path":"objects/obj_world/obj_world.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":224.0,"y":-128.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TopTile","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":17,"SerialiseWidth":30,"TileCompressedData":[
-121,-2147483648,-28,536870936,-74,-2147483648,-4,24,-47,-2147483648,-5,24,-12,-2147483648,-5,24,-99,-2147483648,-4,17,-4,-2147483648,-3,14,1,17,-4,-2147483648,-4,0,
-34,-2147483648,1,0,-60,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tl_mixed","path":"tilesets/tl_mixed/tl_mixed.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":17,"SerialiseWidth":30,"TileCompressedData":[
-120,-2147483648,1,23,-28,29,2,22,21,-28,30,-2,21,-28,29,-2,21,-28,29,-2,21,-28,29,-2,21,-28,29,-2,21,-28,
29,-2,21,-3,29,-2,20,-3,29,2,20,6,-3,29,-2,6,-3,29,2,6,20,-3,29,-2,20,-3,29,-2,21,-3,
29,-2,27,-3,29,2,27,13,-3,29,-2,13,-3,29,2,13,27,-3,29,-2,27,-3,29,-2,21,-28,28,2,21,1,
-6,2,1,1,-7,2,1,1,-6,2,1,1,-4,2,4,1,2,2,8,-6,9,1,8,-7,9,1,8,-6,9,1,
8,-4,9,3,8,9,9,-30,10,],"TileDataFormat":1,},"tilesetId":{"name":"tl_mixed","path":"tilesets/tl_mixed/tl_mixed.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"WindowTile","depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":17,"SerialiseWidth":30,"TileCompressedData":[
-33,-2147483648,-3,0,-2,-2147483648,3,25,9,25,-21,-2147483648,6,31,25,9,25,31,31,-3,-2147483648,1,31,-79,-2147483648,1,25,-10,9,1,
25,-19,-2147483648,6,21,-2147483648,-2147483648,25,21,21,-3,-2147483648,1,21,-20,-2147483648,6,31,-2147483648,-2147483648,10,31,31,-3,-2147483648,1,31,-23,-2147483648,1,
10,-29,-2147483648,1,10,-26,-2147483648,6,21,-2147483648,-2147483648,10,21,21,-3,-2147483648,1,21,-20,-2147483648,6,31,-2147483648,-2147483648,25,31,31,-3,-2147483648,1,
31,-27,-2147483648,1,25,-29,-2147483648,1,10,-110,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tl_streets","path":"tilesets/tl_streets/tl_streets.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"BackTile","depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":17,"SerialiseWidth":30,"TileCompressedData":[
1,-2147483648,-12,15,-18,-2147483648,2,15,21,-3,15,-2,21,-3,15,2,21,15,-18,-2147483648,-12,15,-18,-2147483648,-12,15,-18,-2147483648,-12,15,
-18,-2147483648,-12,15,-18,-2147483648,-12,15,-18,-2147483648,-12,15,-18,-2147483648,-12,15,-18,-2147483648,-12,15,-18,-2147483648,-12,15,-18,-2147483648,-12,15,-18,-2147483648,
-12,15,-18,-2147483648,-12,15,-107,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tl_streets","path":"tilesets/tl_streets/tl_streets.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 1080,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1920,
  },
  "sequenceId": null,
  "views": [
    {"hborder":960,"hport":1080,"hspeed":-1,"hview":1080,"inherit":false,"objectId":null,"vborder":720,"visible":true,"vspeed":-1,"wport":1920,"wview":1920,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}