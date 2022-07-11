import numpy as np
import trimesh

mesh = trimesh.load_mesh('./inputs/lego_airplane/model.obj')

sampledmesh = trimesh.sample.sample_surface(mesh, 500, face_weight=None, sample_color=False)

sampled_points = trimesh.points.PointCloud(sampledmesh[0])

#? How to turn sampledmesh back into a mesh?
sampled_points.export('./inputs/lego_airplane/model_points.ply')