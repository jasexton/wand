//
//  ViewController.swift
//  Wand1
//
//  Created by Jack Sexton on 4/20/18.
//  Copyright © 2018 Jack Sexton. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let spellNames = ["Accio Dittany",
                      "Accio Firebolt",
                      "Accio Locket",
                      "Aguamenti",
                      "Alohomora",
                      "Arania Exumai",
                      "Arresto Momentum",
                      "Ascendio",
                      "Confundus",
                      "Crucio",
                      "Diffindo",
                      "Episkey",
                      "Everte Statum",
                      "Expecto Patronum",
                      "Expelliarmus",
                      "Expulso",
                      "Fera Verto",
                      "Finite",
                      "Finite Incantatem",
                      "Homenum Revelio",
                      "Immobilus",
                      "Incendio",
                      "Lumos Maxima",
                      "Lumos Solem",
                      "Maya Explosius",
                      "Morsmorde",
                      "Muffliato",
                      "Obliviate",
                      "Oculus Reparo",
                      "Peskipiksi Pesternomi",
                      "Petrificus Totalus",
                      "Protego Totalum",
                      "Reducto",
                      "Repello Muggletum",
                      "Oppugno",
                      "Riddikulus",
                      "Salvio Hexia",
                      "Sectumsempra",
                      "Stupefy",
                      "Vipera Evanesca",
                      "Volate Ascendere",
                      "Wingardium Leviosa"]
    
    let spellDescriptions = ["Accio Dittany will summon a dittany, if available. Dittany is a magical plant used in Potion-Making, and is a powerful healing herb and restorative. Use this when you are injured and need healing.",
                             "Accio Firebolt will summon a fast broom (i.e. the Firebolt). Use this when you require a fast escape.",
                             "Accio Locket can be used to summon jewelery.",
                             "The Water-Making Spell, also known as the Aguamenti Spell (Aguamenti) is a charm that conjures a jet of clear, pure water and shoots it from the tip of the caster's wand. A good spell for cold days or to fill a tub for bathing or pot for cooking.",
                             "The Unlocking Charm, also known as the Thief's Friend (Alohomora) is a charm that unlocks and opens doors and windows that are not protected by magic. It is also able to open doors locked by the Locking Spell (Colloportus).",
                             "Arania Exumai is the incantation of a spell used to blast back acromantulas or other large spiders. If the spell is used on anything but a spider, it will produce a large black scorch mark, and thus it is not recommended for use on humans",
                             "This incantation is used by a witch or wizard to slow the movement of an object. Especially useful when planning an escape from pursuers",
                             "Ascendio is a charm used to lift the caster high into the air or propel them to the surface should they be underwater at the time.",
                             "The Confundus Charm (Confundo) is a charm which causes confusion in a person or bewitches an object",
                             "The Cruciatus Curse (also known as the Torture Curse) (Crucio) is a tool of the Dark Arts and one of the three Unforgivable Curses. It is one of the most powerful and sinister spells known to wizardkind.",
                             "The Severing Charm (Diffindo) is a charm used to precisely and accurately cut something. Useful in cooking, art projects, and textile work. DO NOT use on other people.",
                             "Episkey is a healing spell that heals relatively minor injuries such as broken noses and split lips. The word comes from the Greek episkevi (επισκευή), which means repair.",
                             "Everte Statum is the incantation of a duelling spell. It causes a short burst of intense pain, which can make the victim stumble, but does not cause any lasting damage.",
                             "The Patronus Charm (Expecto Patronum) is the most famous and one of the most powerful defensive charms known to wizardkind. It is an immensely complicated and extremely difficult spell that evokes a partially-tangible positive energy force known as a Patronus (pl.Patronuses) or spirit guardian. It is the primary protection againstDementors and Lethifolds, to which there is no other protection.",
                             "The Disarming Charm, also known as the Expelliarmus Spell or Disarming Spell (Expelliarmus) is a defensive charm which forced the victim to release whatever they were holding at the time. It is useful in duels or when being attacked by an armed assailant.",
                             "The Expulso Curse (Expulso) is a curse used to produce immense explosions, blasting the target apart with a burst of blue light; it has enough force to throw people into walls.",
                             "Vera Verto is the incantation of a spell used to transform an animal into a water goblet. Useful if you have more pets than cups or glassware.",
                             "The General Counter-Spell (Finite or Finite Incantatem) is, as its name indicates, a counter-spell for general use. It may be used in duels or on an entire home, as a precaution before a wizard answers the door.",
                             "Slightly more powerful version of the finite general counter-spell. Useful in wizarding duels.",
                             "The Human-presence-revealing Spell[1] is the a charm which reveals human presences in the surrounding environment. Useful in games of hide and go seek.",
                             "The Freezing Charm (Immobulus) is a spell which immobilises living targets",
                             "The Fire-Making Spell, also known as the Fire-Making Charm (Incendio) is a charm and a form of Conjuration that can be used to conjure a jet of orange and red flame, thereby setting things alight",
                             "Lumos Maxima is the incantation to a charm that can be used to produce a blinding flash of bright white light from the tip of the wand. This light can be thrown far off of the wand, illuminating the surrounding area for several minutes",
                             "Lumos Solem was the incantation of a charm used to conjure a very bright, narrow beam of light, which may be potentially be warmer than normal light. Derived from two words; the Latin lumen, meaning light, and the Latin solis, meaning of the sun.",
                             "Causes an explosion when cast with a wand wave or flick. A silent version of Expulso thought to be invented by the young witch, Maya Gallaugher.",
                             "Summons the dark mark. Should not be used!!!",
                             "The Muffliato Charm (Muffliato) is a charm used to fill the ears of any person in the vicinity of the caster with an unidentifiable buzzing sound so as to allow long conversations without being overheard in a public place such as a class.",
                             "A Memory Charm, also known as Lockhart Memory Charm or Forgetfulness Charm (Obliviate) is a spell that can be used to erase memories from an individual's mind.",
                             "Oculus Reparo is the incantation of a variant of the Mending Charm, used to repair broken eyeglasses.",
                             "Peskipiksi Pesternomi is the incantation of a spell meant to capture pixies. It was invented by Gilderoy Lockhart in his first second year Defence Against the Dark Arts class in September of 1992, and its very first use was very unsuccessful.",
                             "The Full Body-Bind Curse, also known as the Body Freezing Spell (PetrificusTotalus) is a curse that paralyses the opponent. It is often used by inexperienced or young wizards in duelling.",
                             "Protego totalum is the incantation of a protective enchantment used to defend a certain area for an extended period of time.",
                             "The Reductor Curse (Reducto) is a curse that can be used to blast solid objects into pieces. It is rather easy to reduce a target to a fine mist or a pile of ashes.",
                             "The Muggle-Repelling Charm (Repello Muggletum) is a charm that repelled Muggles from an area.",
                             "The Oppugno Jinx (Oppugno) is a spell that directs an object or individual to attack the victim. This jinx will cause conjured creatures or other moveable objects under the control of the caster to attack the target.",
                             "The Boggart-Banishing Spell is a charm that is used in defence against a Boggart. It causes the creature to assume a form that is humourous to the caster, along with a whip-crack noise, thereby counteracting the Boggart's ability to terrorize.",
                             "Salvio hexia is a defensive spell which presumably deflected hexes from the area.",
                             "Sectumsempra is a curse invented by Professor Severus Snape, during his childhood, when he was known as The Half-Blood Prince. He created it with the intention of using it against his enemies, and it soon became one of his specialties.",
                             "The Stunning Spell (Stupefy), also known as a Stunner or Stupefying Charm is a charm that renders a victim unconscious and halts moving objects.",
                             "Vipera Evanesca is the incantation for the spell that, when cast, causes a target Snake to vanish in a puff of black smoke.",
                             "Shoots the target high into the air.",
                             "The Levitation Charm (Wingardium Leviosa) is a charm used to make objects fly, or levitate."]
    let spellSounds = ["Accio_Dittany",
                       "Accio_Firebolt",
                       "Accio_Locket",
                       "Aguamenti",
                       "Alohomora",
                       "Arania_Exumai",
                       "Arresto_Momentum",
                       "Ascendio",
                       "Confundus",
                       "Crucio",
                       "Diffindo",
                       "episkey",
                       "Everte_Statum",
                       "ExpectoPatronum",
                       "expelliarmus",
                       "Expulso",
                       "Fera_Verto",
                       "Finita",
                       "Finite_Incantatem",
                       "Homenum_Revelio",
                       "Immobilus",
                       "Incendio",
                       "Lumos_Maxima",
                       "Lumos_Solem_Hermione",
                       "Maya_Explosius",
                       "Morsmorde",
                       "Muffliato",
                       "Obliviate",
                       "Oculus_Reparo",
                       "Peskipiksi_Pesternomi",
                       "Petrificus_Totalus",
                       "Protego_Totalum",
                       "Reducto",
                       "Repello_Muggletum",
                       "Oppugno",
                       "Riddikulus",
                       "Salvio_Hexia",
                       "sectumsempra",
                       "stupefy",
                       "Vipera_Evanesca",
                       "Volate_Ascendere",
                       "Wingardium_Leviosa"]
    
    @IBOutlet weak var tableView: UITableView!
    
    var spells = [Spell]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        for index in 0...spellNames.count - 1
        {
            spells.append(Spell(name: spellNames[index], description: spellDescriptions[index], soundName: spellSounds[index]))
        }
    }
}

//override func prepare
//{
    // Don't remember code for this
//}


extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return spellNames.count
    }
    //forgot rest of code necessary to execute tableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
      //  return cell
    }

}

