
## Veri Islemek

Telefon tarafindan toplanan verileri nasil kullaniriz? 

```python
import pandas as pd

dir = "./data/mitte4/"
data = np.fromfile(dir + "cam.bin", dtype=np.uint8)
df = pd.read_csv(dir + "sizes.txt",header=None)
df['cum'] = df.cumsum()
df['cum2'] = df.cum.shift(-1)
df.columns = ['x','fr','to']
```

Herhangi bir video karesini cekip cikarmak


```python
import io
from PIL import Image
frame = 30
arr = data[int(df.ix[frame]['fr']) : int(df.ix[frame]['to'])]
im = Image.open(io.BytesIO(arr))
im.save('out1.png')
```

![](out1.png)


Dort kosesi uzerinden belirtilen bir doortgeni ekrana basmak.

```python
import util
im = util.get_frame(dir, 105)
quad = np.array([[100,0],[143,100.],[202,100],[224,0]])
h = np.array(im).shape[0]
util.plot_quad(quad, h, 'y')
plt.imshow(im)
plt.savefig('out2.png')
```

![](out2.png)


Bazen bu dortgenin icindeki pikselleri bulmak gerekebilir. Fakat tum
pikselleri de bulmak kulfetli olacaktir, en iyisi resim kordinatlari
icinde tanimli birornek (uniform) bir dagilimdan sayilar (kordinatlar)
orneklemek, ve bu daha az sayidaki kordinatlari kullanmak.

```python
np.random.seed(1)
random_points = np.random.uniform(0, 320, (1000, 2)).astype(np.int)
random_points = random_points[random_points[:,1] < 240]
mask = np.array([util.inside_quad(quad, p)[0] for p in random_points])
plt.plot(random_points[mask][:,0], h-random_points[mask][:,1], 'r.')
util.plot_quad(quad, h, 'y')
plt.imshow(im)
plt.savefig('out3.png')
```

![](out3.png)













