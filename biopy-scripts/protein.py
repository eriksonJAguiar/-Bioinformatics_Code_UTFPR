from Bio.PDB import *
import numpy as np

#SMCRA

parser = PDBParser()

estrutura = parser.get_structure("1BGA","1bga.pdb")

model = estrutura[0]

atomo_100 = estrutura[0]['A'][100]['CA']

atomo_101 = estrutura[0]['A'][101]['CA']

#Distancia euclidiana

dist =  atomo_101 - atomo_100

print(f"Euclidian distance between CA 101 and CA 100 is: {dist}")