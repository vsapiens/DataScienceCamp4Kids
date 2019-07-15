
faceImages = FindFaces[i, "Image"];

facePositions = FindFaces[i, "Position"];

newFace1 = ImageEffect[ImageReflect[ImageResize[faceImages[[1]], ImageDimensions[faceImages[[2]]], Left], {"FadedFrame", Scaled[1/4]}];

newFace2 = ImageEffect[ImageReflect[ImageResize[faceImages[[2]], ImageDimensions[faceImages[[1]]], Left], {"FadedFrame", Scaled[1/4]}];

ImageCompose[i, {newFace1, newFace2}, {facePositions[[2]], facePositions[[1]]}]