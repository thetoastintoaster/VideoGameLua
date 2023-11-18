components {
  id: "background"
  component: "/level1/background/background.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "tile_set: \"/level1/background/background.atlas\"\n"
  "default_animation: \"New Animation\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: -9.0
    y: 107.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "sprite1"
  type: "sprite"
  data: "tile_set: \"/level1/background/background.atlas\"\n"
  "default_animation: \"New Animation\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 3986.0
    y: 125.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: -0.9999995
    w: 9.877525E-4
  }
}
