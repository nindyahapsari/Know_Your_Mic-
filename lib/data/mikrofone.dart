

class Mikrofone {

  final String id;
  final String name;
  final String type;
  final String description;
  final String info;
  final String image;
  final String pictures;

  const Mikrofone({
    this.id,
    this.name,
    this.type,
    this.description,
    this.info,
    this.image,
    this.pictures
  });

}


List<Mikrofone> mikro = [
  const Mikrofone(
    id: "1",
    name: "XY Verfahren",
    type: "Stereo",
    info: "Gute Monokompabilität",
    description: "Bei der XY-Stereofonie werden zwei gerichtete Einzelmikrofone in möglichst geringem Membranabstand vertikal übereinander angeordnet. Die Pegeldifferenzen ergeben sich durch die Richtwirkung der nach außen gedrehten Mikrofone. Somit gibt es nur Interchannel-Pegeldifferenz und keine Interchannel-Laufzeitdifferenz,∆ t = 0 ms. Bei den beiden dazu verwendeten Richtmikrofonen werden als Richtcharakteristiken verwendet: Breite Nieren, Nieren, Super- oder Hypernieren. Auch diffusfeldentzerrte Druckmikrofone mit Kugelcharakteristik eignen sich; Druckstaueffekt und Schallschatten führen bei hohen Frequenzen zur Richtwirkung auch bei der Kugel",
    image: "sing.png",
    pictures: "https://ksassets.timeincuk.net/wp/uploads/sites/55/2015/02/AbbeyRoad03PR040112-620x413.jpg"
  ),

  const Mikrofone(
    id: "2",
    name: "ORTF verfahren",
    type: "Stereo",
    info: "Balance, Saubere, warmer Klang",
    description: "Als ORTF-Stereosystem bezeichnet man eine Anordnung von zwei Mikrofonen für die Tonaufnahme in Äquivalenzstereofonie zur Lautsprecherstereofonie. Das ORTF-Stereosystem wurde um das Jahr 1960 von Toningenieuren des französischen Rundfunks (Radio France) entwickelt, der 1964 zum Office de Radiodiffusion Télévision Française = ORTF reorganisiert wurde.",
    image: "assets/sing.png",
    pictures: "https://ksassets.timeincuk.net/wp/uploads/sites/55/2015/02/AbbeyRoad03PR040112-620x413.jpg"
  ),

  const Mikrofone(
    id: "3",
    name: "MS Verfahren",
    type: "Stereo",
    info: "Sehr gute Monokompabilität",
    description: "Zur Aufnahme eines Mitte-Seite-Signals werden wie bei allen Stereo-Mikrofonierungsverfahren zwei Mikrofone benötigt. Bei der Intensitätsstereofonie, zu der das MS-Verfahren zählt, entsteht der Stereoeffekt allein durch Pegeldifferenzen, nicht durch Laufzeitunterschiede zwischen den Kanälen.",
    image: "assets/sing.png",
    pictures: "https://ksassets.timeincuk.net/wp/uploads/sites/55/2015/02/AbbeyRoad03PR040112-620x413.jpg"
  ),

  const Mikrofone(
    id: "4",
    name: "AB Verfahren",
    type: "Stereo",
    info: "Räumlich",
    description: "Ganz besonders wichtig ist hier der Abstand der Mikros, welcher von einigen Zentimetern bis zu wenigen Metern reichen kann. Gerade bei großen Klangkörpern in gut klingenden Räumen wird AB gerne eingesetzt. ",
    image: "assets/sing.png",
    pictures: "https://ksassets.timeincuk.net/wp/uploads/sites/55/2015/02/AbbeyRoad03PR040112-620x413.jpg"
  ),

];

