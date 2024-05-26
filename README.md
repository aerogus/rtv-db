# rtv-db

La base de données des radios et télévisions.

Chaque chaîne correspond au triplet suivant :

- `CCC.ini` : le fichier .ini de description (fréquences, url, caractéristiques techniques ...)
- `CCC.jpg` : logo au format jpeg 100x80
- `CCC.png` : logo au format png, canal alpha (fond potentiellement transparent), 95px de haut, 300px max de large

## Génération des images

Avec `ImageMagick` et la commande `convert`

### Pour le png

import possible à partir de svg aussi (mais mauvaise interprétation des dégradés)

```bash
convert -background none CCC.png -resize 300x95 CCC.png
```

## Pour le jpg

```bash
convert CCC.png -background white -resize 90x80 -gravity center -extent 100x80 CCC.jpg
```

## Optimisation

Avec imageoptim en ligne de commande

```bash
brew install imageoptim-cli
```

puis

```bash
imageoptim *.png
imageoptim *.jpg
```

## Ressources

- https://github.com/streamlink/streamlink/blob/master/tests/plugins/test_artetv.py
- https://github.com/streamlink/streamlink/blob/master/tests/plugins/test_bfmtv.py
- https://github.com/streamlink/streamlink/blob/master/tests/plugins/test_cnews.py
- https://github.com/streamlink/streamlink/blob/master/tests/plugins/test_euronews.py
- https://github.com/streamlink/streamlink/blob/master/tests/plugins/test_pluto.py
- https://github.com/streamlink/streamlink/blob/master/tests/plugins/test_pluzz.py (FTV)
- https://github.com/streamlink/streamlink/blob/master/tests/plugins/test_tv5monde.py
- https://github.com/streamlink/streamlink/blob/master/tests/plugins/test_youtube.py
- https://github.com/streamlink/streamlink/blob/master/tests/plugins/test_twitch.py

