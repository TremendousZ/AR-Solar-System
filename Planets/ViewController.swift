//
//  ViewController.swift
//  Planets
//
//  Created by The Carlisle Family on 7/1/20.
//  Copyright © 2020 The Carlisle Family. All rights reserved.
//

import UIKit
import ARKit
class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    let configuaration = ARWorldTrackingConfiguration()
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        self.sceneView.session.run(configuaration)
        self.sceneView.autoenablesDefaultLighting = true
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Create nodes for planets and parent nodes to allow planets independent rotation
        let sun = planet(geometry: SCNSphere(radius: 1.8), diffuse: UIImage(named:"Sun diffuse"), specular: nil, emission: nil, normal: nil, position: SCNVector3(0,0,-4));
//        let sun = SCNNode(geometry: SCNSphere(radius: 0.9))
        
        let mercuryParent = SCNNode()
        let venusParent = SCNNode()
        
        let earthParent = SCNNode()
        let moonParent = SCNNode()
        // Mars, Diemos, and Phobos
        let marsParent = SCNNode()
        let deimosParent = SCNNode()
        let phobosParent = SCNNode()
        // Jupiter, Io, Europa, Garymede, Callisto
        let jupiterParent = SCNNode()
        let ioParent = SCNNode()
        let europaParent = SCNNode()
        let garymedeParent = SCNNode()
        let callistoParent = SCNNode()
        
        // Saturn, Mimas, Encheladus, Tethys, Dione, Rhea, Titan, Iapetus
        let saturnParent = SCNNode()
        let mimasParent = SCNNode()
        let encheladusParent = SCNNode()
        let tethysParent = SCNNode()
        let dioneParent = SCNNode()
        let rheaParent = SCNNode()
        let titanParent = SCNNode()
        let iapetusParent = SCNNode()
        
         // Uranus, Miranda, Ariel, Umbriel, Titania, and Oberon
        let uranusParent = SCNNode()
        let mirandaParent = SCNNode()
        let arielParent = SCNNode()
        let umbrielParent = SCNNode()
        let titaniaParent = SCNNode()
        let oberonParent = SCNNode()
        
        // Neptune, Proteus and Triton
        let neptuneParent = SCNNode()
        let proteusParent = SCNNode()
        let tritonParent = SCNNode()
        
        // Set the position of the nodes relative to the cameras position
        // Set the planets based off the suns position, set the moons based on the planets locations
//        sun.position = SCNVector3(0,0,-1)
        mercuryParent.position = SCNVector3(0,0,-4)
        venusParent.position = SCNVector3(0,0,-4)
        
        earthParent.position = SCNVector3(0,0,-4)
        moonParent.position = SCNVector3(2,0,0)
        
        marsParent.position = SCNVector3(0,0,-4)
        deimosParent.position = SCNVector3(2.5,0,0)
        phobosParent.position = SCNVector3(2.5,0,0)
        
        jupiterParent.position = SCNVector3(0,0,-4)
        ioParent.position = SCNVector3(3.5,0,0)
        europaParent.position = SCNVector3(3.5,0,0)
        garymedeParent.position = SCNVector3(3.5,0,0)
        callistoParent.position = SCNVector3(3.5,0,0)
        
        saturnParent.position = SCNVector3(0,0,-4)
        mimasParent.position = SCNVector3(5,0,0)
        encheladusParent.position = SCNVector3(5,0,0)
        tethysParent.position = SCNVector3(5,0,0)
        dioneParent.position = SCNVector3(5,0,0)
        rheaParent.position = SCNVector3(5,0,0)
        titanParent.position = SCNVector3(5,0,0)
        iapetusParent.position = SCNVector3(5,0,0)
        
        uranusParent.position = SCNVector3(0,0,-4)
        mirandaParent.position = SCNVector3(7,0,0)
        arielParent.position = SCNVector3(7,0,0)
        umbrielParent.position = SCNVector3(7,0,0)
        titaniaParent.position = SCNVector3(7,0,0)
        oberonParent.position = SCNVector3(7,0,0)
        
        neptuneParent.position = SCNVector3(0,0,-4)
        proteusParent.position = SCNVector3(9,0,0)
        tritonParent.position = SCNVector3(9,0,0)
        
        // Add the nodes to the scene view so that they appear
        self.sceneView.scene.rootNode.addChildNode(sun)
        self.sceneView.scene.rootNode.addChildNode(earthParent)
        self.sceneView.scene.rootNode.addChildNode(mercuryParent)
        self.sceneView.scene.rootNode.addChildNode(venusParent)
        self.sceneView.scene.rootNode.addChildNode(marsParent)
        self.sceneView.scene.rootNode.addChildNode(jupiterParent)
        self.sceneView.scene.rootNode.addChildNode(saturnParent)
        self.sceneView.scene.rootNode.addChildNode(uranusParent)
        self.sceneView.scene.rootNode.addChildNode(neptuneParent)

        // Create the planets using proportional sizes, proper image layers, and each planets position
        //Sun
      
        // Mercury
        let mercury = planet(geometry: SCNSphere(radius: 0.06), diffuse: UIImage(named: "Mercury diffuse"), specular: nil, emission: nil, normal:nil, position: SCNVector3(2,0,0))
 
        // Venus
        let venus = planet(geometry: SCNSphere(radius: 0.15), diffuse: UIImage(named: "Venus diffuse"), specular:nil,  emission:nil, normal: UIImage(named:"Venus effect"), position: SCNVector3(3,0,0))
       
        // Earth and the Moon
        let earth = planet(geometry: SCNSphere(radius: 0.16), diffuse: UIImage(named: "Earth day"), specular: UIImage(named:"Earth specular"), emission: UIImage(named:"Earth clouds"), normal: UIImage(named:"Earth normal"), position: SCNVector3(4,0,0))
      
        let moon = planet(geometry: SCNSphere(radius:0.05), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0,-0.6))
        
        // Mars, Diemos, and Phobos
        let mars = planet(geometry: SCNSphere(radius: 0.084), diffuse: UIImage(named: "Mars diffuse"), specular:nil,  emission:nil, normal: nil, position: SCNVector3(5,0,0))
        
        let deimos = planet(geometry: SCNSphere(radius:0.0014), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0,-0.3))
        
        let phobos = planet(geometry: SCNSphere(radius:0.0028), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.2,-0.5))
        // Jupiter, Io, Europa, Garymede, Callisto
        let jupiter = planet(geometry: SCNSphere(radius: 1.2), diffuse: UIImage(named: "Jupiter diffuse"), specular:nil,  emission:nil, normal: nil, position: SCNVector3(7,0,0))
        
        let io = planet(geometry: SCNSphere(radius:0.0022), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0,-1))
        
        let europa = planet(geometry: SCNSphere(radius:0.0018), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.1,-0.5))
        
        let garymede = planet(geometry: SCNSphere(radius:0.0032), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.6,-0.3))
        
        let callisto = planet(geometry: SCNSphere(radius:0.0028), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.5,-1.5))
 
        // Saturn, Mimas, Encheladus, Tethys, Dione, Rhea, Titan, Iapetus
        let saturn = planet(geometry: SCNSphere(radius: 1.0), diffuse: UIImage(named: "Saturn diffuse"), specular:nil,  emission:nil, normal: nil, position: SCNVector3(10,0,0))
        
        let mimas = planet(geometry: SCNSphere(radius:0.0016), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0,-0.3))
        
        let encheladus = planet(geometry: SCNSphere(radius:0.018), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.2,-0.5))
        
        let tethys = planet(geometry: SCNSphere(radius:0.05), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.7,-0.3))
        
        let dione = planet(geometry: SCNSphere(radius:0.02), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.5,-1.5))
        
        let rhea = planet(geometry: SCNSphere(radius:0.025), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0,-0.3))
        
        let titan = planet(geometry: SCNSphere(radius:0.10), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.5,-0.5))
        
        let iapetus = planet(geometry: SCNSphere(radius:0.022), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,-0.01,-0.8))
        
        
        // Uranus, Miranda, Ariel, Umbriel, Titania, and Oberon
        let uranus = planet(geometry: SCNSphere(radius: 0.31518), diffuse: UIImage(named: "Uranus diffuse"), specular:nil,  emission:nil, normal: nil, position: SCNVector3(14,0,0))
        
        let miranda = planet(geometry: SCNSphere(radius:0.05), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.2,-0.5))
               
        let ariel = planet(geometry: SCNSphere(radius:0.05), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,-0.1,-0.3))
               
        let umbriel = planet(geometry: SCNSphere(radius:0.05), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.1,-1.5))
               
        let titania = planet(geometry: SCNSphere(radius:0.05), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0,-0.3))
               
        let oberon = planet(geometry: SCNSphere(radius:0.05), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.5,-0.5))
        
        // Neptune, Proteus and Triton
        let neptune = planet(geometry: SCNSphere(radius: 0.30599), diffuse: UIImage(named: "Neptune diffuse"), specular:nil,  emission:nil, normal: nil, position: SCNVector3(18,0,0))
        
        let proteus = planet(geometry: SCNSphere(radius:0.05), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0,-0.3))
                  
        let triton = planet(geometry: SCNSphere(radius:0.05), diffuse: UIImage(named:"Moon diffuse"), specular: nil, emission: nil, normal: nil, position:   SCNVector3(0,0.5,-0.5))
        
        
        // Add Planets to planet Parent Node
        mercuryParent.addChildNode(mercury)
        
        venusParent.addChildNode(venus)
        
        earthParent.addChildNode(earth)
        earthParent.addChildNode(moonParent)
        earth.addChildNode(moon)
        
        marsParent.addChildNode(mars)
        mars.addChildNode(deimos)
        mars.addChildNode(phobos)
        
        jupiterParent.addChildNode(jupiter)
        jupiter.addChildNode(io)
        jupiter.addChildNode(europa)
        jupiter.addChildNode(garymede)
        jupiter.addChildNode(callisto)
        
        saturnParent.addChildNode(saturn)
        saturn.addChildNode(mimas)
        saturn.addChildNode(encheladus)
        saturn.addChildNode(tethys)
        saturn.addChildNode(dione)
        saturn.addChildNode(rhea)
        saturn.addChildNode(titan)
        saturn.addChildNode(iapetus)
        
        uranusParent.addChildNode(uranus)
        uranus.addChildNode(miranda)
        uranus.addChildNode(ariel)
        uranus.addChildNode(umbriel)
        uranus.addChildNode(titania)
        uranus.addChildNode(oberon)
        
        neptuneParent.addChildNode(neptune)
        neptune.addChildNode(proteus)
        neptune.addChildNode(triton)
        
        // Set Rotation times for parent, planet, moon parent and moon
        // parent rotation sets rotation around sun or planet, planet rotation is speed the palent rotates on its axis
        
        // Planetary rotation metrics: 3650s = 365 days
        // Planet axis rotation: 1 earth day = 10 seconds
        // Hour : 1 hour = .041666666667 seconds
        // TO DO: 3x speed: divide 3 - Add slider to speed up rotation: 1x, 2x, 3x, 5x, 10x
        // TO DO: Proper moon rotation speeds and orbits
        // LOOK INTO: moon textures
        // LOOK INTO: Comets
        // LOOK INTO: Elliptical orbits
        
        // All Orbits divided by 3 to improve look
        // commented out proportion orbits
        // All Planetary Rotation slowed down to all user to see planets
        
        let sunAction = Rotation(time: 27)
        
        let mercuryParentRotation = Rotation(time: 88)
//        let mercuryRotation = Rotation(time: 58.666667)
        let mercuryRotation = Rotation(time: 10)
        let venusParentRotation = Rotation(time: 225)
//        let venusRotation = Rotation(time: 242.999999999)
        let venusRotation = Rotation(time: 20)
//        let earthParentRotation = Rotation(time: 365)
        let earthParentRotation = Rotation(time: 25)
//        let earthRotation = Rotation(time: 1)
        let earthRotation = Rotation(time: 10)
        let moonParentRotation = Rotation(time: 27.3)
        let moonRotation = Rotation(time: 27.3)
        
//        let marsParentRotation = Rotation(time: 687)
        let marsParentRotation = Rotation(time: 40)
//        let marsRotation = Rotation(time: 1.0416666)
         let marsRotation = Rotation(time: 11)
        let deimosParentRotation = Rotation(time: 10)
        let deimosRotation = Rotation(time: 10)
        let phobosParentRotation = Rotation(time: 12)
        let phobosRotation = Rotation(time: 10)
          // Jupiter, Io, Europa, Garymede, Callisto
//        let jupiterParentRotation = Rotation(time: 4380)
        let jupiterParentRotation = Rotation(time: 60)
//        let jupiterRotation = Rotation(time: 0.416)
         let jupiterRotation = Rotation(time: 8)
        let ioParentRotation = Rotation(time: 6)
        let ioRotation = Rotation(time: 10)
        let europaParentRotation = Rotation(time: 6)
        let europaRotation = Rotation(time: 12)
        let garymedeParentRotation = Rotation(time: 6)
        let garymedeRotation = Rotation(time: 14)
        let callistoParentRotation = Rotation(time: 6)
        let callistoRotation = Rotation(time: 16)
           // Saturn, Mimas, Encheladus, Tethys, Dione, Rhea, Titan, Iapetus
//        let saturnParentRotation = Rotation(time: 10585)
          let saturnParentRotation = Rotation(time: 80)
//        let saturnRotation = Rotation(time: 0.458333)
        let saturnRotation = Rotation(time: 7)
        let mimasParentRotation = Rotation(time: 6)
        let mimasRotation = Rotation(time: 10)
        let encheladusParentRotation = Rotation(time: 6)
        let encheladusRotation = Rotation(time: 12)
        let tethysParentRotation = Rotation(time: 6)
        let tethysRotation = Rotation(time: 13)
        let dioneParentRotation = Rotation(time: 6)
        let dioneRotation = Rotation(time: 15)
        let rheaParentRotation = Rotation(time: 6)
        let rheaRotation = Rotation(time: 11)
        let titanParentRotation = Rotation(time: 6)
        let titanRotation = Rotation(time: 13)
        let iapetusParentRotation = Rotation(time: 6)
        let iapetusRotation = Rotation(time: 14)
              // Uranus, Miranda, Ariel, Umbriel, Titania, and Oberon
//        let uranusParentRotation = Rotation(time: 30660)
         let uranusParentRotation = Rotation(time: 100)
//        let uranusRotation = Rotation(time: 0.70833333)
        let uranusRotation = Rotation(time: 9)
        let mirandaParentRotation = Rotation(time: 6)
        let mirandaRotation = Rotation(time: 8)
        let arielParentRotation = Rotation(time: 6)
        let arielRotation = Rotation(time: 11)
        let umbrielParentRotation = Rotation(time: 6)
        let umbrielRotation = Rotation(time: 13)
        let titaniaParentRotation = Rotation(time: 6)
        let titaniaRotation = Rotation(time: 11)
        let oberonParentRotation = Rotation(time: 6)
        let oberonRotation = Rotation(time: 14)
                // Neptune, Proteus and Triton
//        let neptuneParentRotation = Rotation(time: 60225)
        let neptuneParentRotation = Rotation(time: 120)
//        let neptuneRotation = Rotation(time: 0.6666666)
         let neptuneRotation = Rotation(time: 6)
        let proteusParentRotation = Rotation(time: 6)
        let proteusRotation = Rotation(time: 11)
        let tritonParentRotation = Rotation(time: 6)
        let tritonRotation = Rotation(time: 13)
       
        // Add action to the node
        sun.runAction(sunAction)
        
        mercuryParent.runAction(mercuryParentRotation)
        mercury.runAction(mercuryRotation)
        
        venusParent.runAction(venusParentRotation)
        venus.runAction(venusRotation)
        
        earthParent.runAction(earthParentRotation)
        earth.runAction(earthRotation)
        moonParent.runAction(moonParentRotation)
        moon.runAction(moonRotation)
        
        marsParent.runAction(marsParentRotation)
        mars.runAction(marsRotation)
        deimosParent.runAction(deimosParentRotation)
        deimos.runAction(deimosRotation)
        phobosParent.runAction(phobosParentRotation)
        phobos.runAction(phobosRotation)
        
        jupiterParent.runAction(jupiterParentRotation)
        jupiter.runAction(jupiterRotation)
        ioParent.runAction(ioParentRotation)
        io.runAction(ioRotation)
        europaParent.runAction(europaParentRotation)
        europa.runAction(europaRotation)
        garymedeParent.runAction(garymedeParentRotation)
        garymede.runAction(garymedeRotation)
        callistoParent.runAction(callistoParentRotation)
        callisto.runAction(callistoRotation)
        
        // Saturn, Mimas, Encheladus, Tethys, Dione, Rhea, Titan, Iapetus
        saturnParent.runAction(saturnParentRotation)
        saturn.runAction(saturnRotation)
        mimasParent.runAction(mimasParentRotation)
        mimas.runAction(mimasRotation)
        encheladusParent.runAction(encheladusParentRotation)
        encheladus.runAction(encheladusRotation)
        tethysParent.runAction(tethysParentRotation)
        tethys.runAction(tethysRotation)
        dioneParent.runAction(dioneParentRotation)
        dione.runAction(dioneRotation)
        rheaParent.runAction(rheaParentRotation)
        rhea.runAction(rheaRotation)
        titanParent.runAction(titanParentRotation)
        titan.runAction(titanRotation)
        iapetusParent.runAction(iapetusParentRotation)
        iapetus.runAction(iapetusRotation)
        // Uranus, Miranda, Ariel, Umbriel, Titania, and Oberon
        uranusParent.runAction(uranusParentRotation)
        uranus.runAction(uranusRotation)
        mirandaParent.runAction(mirandaParentRotation)
        miranda.runAction(mirandaRotation)
        arielParent.runAction(arielParentRotation)
        ariel.runAction(arielRotation)
        umbrielParent.runAction(umbrielParentRotation)
        umbriel.runAction(umbrielRotation)
        titaniaParent.runAction(titaniaParentRotation)
        titania.runAction(titaniaRotation)
        oberonParent.runAction(oberonParentRotation)
        oberon.runAction(oberonRotation)
        // Neptune, Proteus and Triton
        neptuneParent.runAction(neptuneParentRotation)
        neptune.runAction(neptuneRotation)
        proteusParent.runAction(proteusParentRotation)
        proteus.runAction(proteusRotation)
        tritonParent.runAction(tritonParentRotation)
        triton.runAction(tritonRotation)
    }
    
    func planet(geometry:SCNGeometry, diffuse:UIImage?, specular:UIImage?, emission:UIImage?, normal: UIImage?, position:SCNVector3) -> SCNNode{
        let planet = SCNNode(geometry: geometry)
        planet.geometry?.firstMaterial?.diffuse.contents = diffuse
        planet.geometry?.firstMaterial?.specular.contents = specular
        planet.geometry?.firstMaterial?.emission.contents = emission
        planet.geometry?.firstMaterial?.normal.contents = normal
        planet.position = position
        return planet
    }
    
    func Rotation(time: TimeInterval) -> SCNAction{
            let Rotation = SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: time)
            let forever = SCNAction.repeatForever(Rotation)
            return forever
    }
    
}
extension Int {
    var degreesToRadians: Double { return Double(self) * .pi/180}
}
