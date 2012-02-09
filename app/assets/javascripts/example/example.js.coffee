window.iguana = window.iguana or {}
((example, $) ->
  example.width = undefined
  example.hieght = undefined
  example.view_angle = undefined
  example.aspect = undefined
  example.near = undefined
  example.far = undefined
  example.container = undefined
  example.renderer = undefined
  example.camera = undefined 
  example.scene = undefined
  
  example.get_context = ->
    window.iguana.example.width = 400
    window.iguana.example.hieght = 300
    window.iguana.example.view_angle = 45
    window.iguana.example.aspect = window.iguana.example.width / window.iguana.example.height
    window.iguana.example.near = 0.1
    window.iguana.example.far = 10000
    window.iguana.example.container = $ '#three.example'
    window.iguana.example.renderer = new window.THREE.WebGLRenderer()
    window.iguana.example.camera = new window.THREE.PerspectiveCamera window.iguana.example.view_angle, 
                                                                                                                                                 window.iguana.example.aspect, 
                                                                                                                                                 window.iguana.example.near, 
                                                                                                                                                 window.iguana.example.far
    window.iguana.example.scene = new window.THREE.Scene()
    window.iguana.example.camera.position.z = 300
    window.iguana.example.renderer.setSize window.iguana.example.width, window.iguana.example.height
    window.iguana.example.container.append window.iguana.example.renderer.domElement
    
  example.add_sphere = ->
    sphereMaterial = new window.THREE.MeshLambertMaterial color: 0xCC0000
    radius = 50
    segments = 16
    rings = 16
    sphere = new window.THREE.Mesh new window.THREE.SphereGeometry( radius, segments, rings), sphereMaterial
    window.iguana.example.scene.add sphere
    
  example.add_light = ->
    pointLight = new window.THREE.PointLight 0xFFFFFF
    pointLight.position.x = 10
    pointLight.position.y = 50
    pointLight.position.z = 130
    window.iguana.example.scene.add pointLight
    
  example.render = ->
    window.iguana.example.renderer.render window.iguana.example.scene, window.iguana.example.camera
    
  example.init = ->
    window.iguana.example.get_context()
    window.iguana.example.add_sphere()
    window.iguana.example.add_light()
    window.iguana.example.render()
) window.iguana.example = window.iguana.example or {}, jQuery