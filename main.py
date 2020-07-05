from PIL import Image, ImageFilter
import os
from utils import show_vertical, show_horizontal

INPUT_DIR = os.path.join( 'filtros', 'data')
OUTPUT_DIR = os.path.join( 'filtros', 'output')

def show_box_blur(filename, r=1):
  original = Image.open(os.path.join(INPUT_DIR, filename))
  filtered = original.filter(ImageFilter.BoxBlur(r))
    #show image side-by-side
  show_horizontal(original, filtered)
  filtered.save(
    os.path.join(OUTPUT_DIR, '{}_boxblur_{}.jpg'.format(filename[:filename.index('.' ), r] ) )
   )


if __name__ == "__main__":
  show_box_blur('image.jpg', 4)