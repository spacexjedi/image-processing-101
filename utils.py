from PIL import Image, ImageFilter
import os
import numpy as np 

INPUT_DIR = os.path.join('data', 'input')
OUTPUT_DIR = os.path.join('data', 'output')

def in_file(filename):
  """returns the file path input"""
  return os.path.join(INPUT_DIR, filename)

def out_file(filename):
  """returns the file path output"""
  return os.path.join(OUTPUT_DIR, filename)

def show_vertical(img1, img2):
  im = Image.fromarray(np.vstack(np.array(img1), np.array(img2)))
  im.show()
  return im

def show_horizontal(img1, img2):
  im = Image.fromarray(np.hstack(np.array(img1), np.array(img2)))
  im.show()
  return im
