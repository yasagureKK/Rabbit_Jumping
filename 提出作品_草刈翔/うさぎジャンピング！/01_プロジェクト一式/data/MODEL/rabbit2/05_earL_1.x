xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 42;
 0.49627;0.00000;1.41673;,
 0.00000;0.00000;0.00000;,
 0.49627;-1.00178;1.00178;,
 1.22856;-1.54668;1.54667;,
 1.22856;-0.00001;2.18732;,
 0.49627;-1.41674;-0.00000;,
 1.22856;-2.18734;-0.00000;,
 0.49627;-1.00178;-1.00178;,
 1.22856;-1.54668;-1.54667;,
 0.49627;0.00000;-1.41673;,
 1.22856;-0.00001;-2.18732;,
 0.49627;1.00179;-1.00178;,
 1.22856;1.54667;-1.54667;,
 0.49627;1.41673;0.00000;,
 1.22855;2.18732;0.00000;,
 0.49627;1.00179;1.00178;,
 1.22856;1.54667;1.54667;,
 11.93010;-3.69740;3.69740;,
 18.97892;-0.00002;-0.00000;,
 14.99584;-0.00002;3.81056;,
 14.99584;-3.81055;-0.00000;,
 11.93010;-3.69740;-3.69740;,
 14.99584;-0.00002;-3.81056;,
 11.93010;3.69742;-3.69740;,
 14.99584;3.81056;0.00000;,
 11.93010;3.69742;3.69740;,
 17.35340;-0.00003;8.27346;,
 17.35338;-8.27346;-0.00000;,
 17.35340;-0.00003;-8.27346;,
 17.35340;8.27347;0.00000;,
 11.93010;0.00000;5.22889;,
 11.93010;-5.22889;-0.00000;,
 11.93010;5.22891;0.00000;,
 11.93010;0.00000;-5.22889;,
 7.16009;-2.92436;2.92436;,
 7.16009;0.00000;4.13565;,
 7.16009;-4.13566;-0.00000;,
 7.16009;-2.92436;-2.92436;,
 7.16009;0.00000;-4.13565;,
 7.16009;2.92437;-2.92436;,
 7.16009;4.13566;0.00000;,
 7.16009;2.92437;2.92436;;
 
 56;
 3;0,1,2;,
 4;0,2,3,4;,
 3;2,1,5;,
 4;2,5,6,3;,
 3;5,1,7;,
 4;5,7,8,6;,
 3;7,1,9;,
 4;7,9,10,8;,
 3;9,1,11;,
 4;9,11,12,10;,
 3;11,1,13;,
 4;11,13,14,12;,
 3;13,1,15;,
 4;13,15,16,14;,
 3;15,1,0;,
 4;15,0,4,16;,
 3;17,18,19;,
 3;20,18,17;,
 3;21,18,20;,
 3;22,18,21;,
 3;23,18,22;,
 3;24,18,23;,
 3;25,18,24;,
 3;19,18,25;,
 3;17,19,26;,
 3;17,27,20;,
 3;21,20,27;,
 3;21,28,22;,
 3;23,22,28;,
 3;23,29,24;,
 3;25,24,29;,
 3;25,26,19;,
 3;17,26,30;,
 3;17,31,27;,
 3;25,30,26;,
 3;25,29,32;,
 3;29,23,32;,
 3;23,28,33;,
 3;21,33,28;,
 3;27,31,21;,
 4;34,17,30,35;,
 4;34,35,4,3;,
 4;36,31,17,34;,
 4;36,34,3,6;,
 4;37,21,31,36;,
 4;37,36,6,8;,
 4;38,33,21,37;,
 4;38,37,8,10;,
 4;39,23,33,38;,
 4;39,38,10,12;,
 4;40,32,23,39;,
 4;40,39,12,14;,
 4;41,25,32,40;,
 4;41,40,14,16;,
 4;35,30,25,41;,
 4;35,41,16,4;;
 
 MeshMaterialList {
  1;
  56;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.470588;0.454902;0.517647;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  61;
  -1.000000;0.000000;-0.000000;,
  -0.538166;-0.000001;0.842839;,
  -0.538168;-0.595974;0.595978;,
  -0.538170;-0.842837;0.000000;,
  -0.538168;-0.595974;-0.595978;,
  -0.538166;-0.000001;-0.842839;,
  -0.538167;0.595976;-0.595977;,
  -0.538168;0.842838;0.000000;,
  -0.538167;0.595976;0.595977;,
  -0.361097;-0.000001;0.932528;,
  -0.361097;-0.932528;0.000000;,
  -0.361097;-0.000001;-0.932528;,
  -0.361097;0.932528;0.000000;,
  0.595783;-0.567912;0.567907;,
  0.717954;-0.583695;-0.379266;,
  0.511710;-0.789179;0.339631;,
  0.717956;0.379261;0.583695;,
  0.511710;-0.339635;-0.789177;,
  0.717954;-0.583695;0.379266;,
  0.511713;0.789176;-0.339633;,
  0.717955;-0.379264;-0.583695;,
  0.511712;0.339631;0.789178;,
  -0.855012;-0.366709;0.366712;,
  -0.855011;-0.000000;0.518609;,
  -0.855014;-0.518605;0.000000;,
  -0.855012;-0.366709;-0.366712;,
  -0.855011;-0.000000;-0.518609;,
  -0.855012;0.366711;-0.366712;,
  -0.855012;0.518609;-0.000000;,
  -0.855012;0.366711;0.366712;,
  0.593999;-0.511526;0.620892;,
  0.593998;-0.620896;0.511521;,
  0.593999;-0.511526;-0.620892;,
  0.594002;0.620892;-0.511522;,
  -0.268095;-0.000001;0.963393;,
  -0.268095;-0.681220;0.681222;,
  -0.268094;-0.963393;0.000000;,
  -0.268095;-0.681220;-0.681222;,
  -0.268095;-0.000001;-0.963393;,
  -0.268097;0.681220;-0.681222;,
  -0.268096;0.963392;0.000000;,
  -0.268097;0.681220;0.681222;,
  0.595783;-0.567912;-0.567907;,
  0.593998;-0.620896;-0.511521;,
  0.595786;0.567907;-0.567909;,
  0.594001;0.511520;-0.620894;,
  0.595786;0.567907;0.567909;,
  0.594002;0.620892;0.511522;,
  0.594001;0.511520;0.620894;,
  0.717956;0.379261;-0.583695;,
  0.717959;0.583689;0.379265;,
  0.717955;-0.379264;0.583695;,
  0.717959;0.583689;-0.379265;,
  -0.401700;-0.546371;0.734926;,
  -0.489524;-0.000001;0.871990;,
  -0.489525;-0.871989;0.000000;,
  -0.401699;0.734926;0.546372;,
  -0.489523;0.871991;0.000000;,
  -0.401699;0.546371;-0.734927;,
  -0.489524;-0.000001;-0.871990;,
  -0.401700;-0.734925;-0.546371;;
  56;
  3;23,0,22;,
  4;23,22,2,1;,
  3;22,0,24;,
  4;22,24,3,2;,
  3;24,0,25;,
  4;24,25,4,3;,
  3;25,0,26;,
  4;25,26,5,4;,
  3;26,0,27;,
  4;26,27,6,5;,
  3;27,0,28;,
  4;27,28,7,6;,
  3;28,0,29;,
  4;28,29,8,7;,
  3;29,0,23;,
  4;29,23,1,8;,
  3;15,13,30;,
  3;31,13,15;,
  3;17,42,43;,
  3;32,42,17;,
  3;19,44,45;,
  3;33,44,19;,
  3;21,46,47;,
  3;48,46,21;,
  3;15,14,14;,
  3;16,16,16;,
  3;17,49,49;,
  3;18,18,18;,
  3;19,50,50;,
  3;20,20,20;,
  3;21,51,51;,
  3;52,52,52;,
  3;53,54,9;,
  3;53,10,55;,
  3;56,9,54;,
  3;56,57,12;,
  3;57,58,12;,
  3;58,59,11;,
  3;60,11,59;,
  3;55,10,60;,
  4;35,53,9,34;,
  4;35,34,1,2;,
  4;36,10,15,35;,
  4;36,35,2,3;,
  4;37,60,10,36;,
  4;37,36,3,4;,
  4;38,11,17,37;,
  4;38,37,4,5;,
  4;39,58,11,38;,
  4;39,38,5,6;,
  4;40,12,19,39;,
  4;40,39,6,7;,
  4;41,56,12,40;,
  4;41,40,7,8;,
  4;34,9,21,41;,
  4;34,41,8,1;;
 }
 MeshTextureCoords {
  42;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
