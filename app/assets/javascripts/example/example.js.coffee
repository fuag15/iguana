window.iguana = window.iguana or {}
((example, $) ->
  example.camera = undefined
  example.scene = undefined
  example.renderer = undefined
  example.geometry = undefined
  example.material = undefined
  example.mesh = undefined
  
  example.init = ->
    window.iguana.example.scene = new window.THREE.Scene()
    window.iguana.example.camera = new window.THREE.PerspectiveCamera 75,1100 / 900, 1, 10000
    window.iguana.example.camera.position.z = 1000
    window.iguana.example.scene.add window.iguana.example.camera
    window.iguana.example.geometry = new window.THREE.CubeGeometry 200, 200, 200
    window.iguana.example.material = new window.THREE.MeshBasicMaterial color: 0xff0000, wireframe: true
    window.iguana.example.mesh = new window.THREE.Mesh window.iguana.example.geometry, window.iguana.example.material
    window.iguana.example.scene.add window.iguana.example.mesh
    window.iguana.example.renderer = new window.THREE.WebGLRenderer()
    window.iguana.example.renderer.setSize 1100, 900
    $('.holder').append window.iguana.example.renderer.domElement
  
  example.animate = ->
    window.requestAnimationFrame window.iguana.example.animate
    window.iguana.example.render()
    
  example.render = ->
    window.iguana.example.mesh.rotation.x += 0.01
    window.iguana.example.mesh.rotation.y += 0.02
    window.iguana.example.renderer.render window.iguana.example.scene, window.iguana.example.camera
    
  example.set_up = ->
    window.iguana.example.init()
    window.iguana.example.animate()
) window.iguana.example = window.iguana.example or {}, jQuery