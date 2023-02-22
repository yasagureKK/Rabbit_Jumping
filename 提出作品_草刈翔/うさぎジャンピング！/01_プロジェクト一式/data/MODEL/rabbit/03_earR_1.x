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
 50;
 -1.64746;-0.00001;-3.07047;,
 -1.64746;-2.17115;-2.17115;,
 -2.47414;-2.56906;-2.56906;,
 -2.47414;0.00000;-3.63319;,
 -1.64746;-3.07048;0.00000;,
 -2.47414;-3.63319;0.00000;,
 -1.64746;-2.17115;2.17115;,
 -2.47414;-2.56906;2.56906;,
 -1.64746;-0.00001;3.07047;,
 -2.47414;0.00000;3.63319;,
 -1.64746;2.17114;2.17115;,
 -2.47414;2.56908;2.56906;,
 -1.64746;3.07047;0.00000;,
 -2.47414;3.63320;0.00000;,
 -1.64746;2.17114;-2.17115;,
 -2.47414;2.56908;-2.56906;,
 -11.73835;-4.02458;-4.02458;,
 -11.73835;-0.00001;-5.69161;,
 -11.73835;-5.69160;0.00000;,
 -11.73835;-4.02458;4.02458;,
 -11.73835;-0.00001;5.69161;,
 -11.73835;4.02459;4.02458;,
 -11.73835;5.69160;0.00000;,
 -11.73835;4.02459;-4.02458;,
 -14.87430;-3.21966;-3.21966;,
 -14.87430;-0.00001;-4.55329;,
 -14.87430;-4.55329;0.00000;,
 -14.87430;-3.21966;3.21966;,
 -14.87430;-0.00001;4.55329;,
 -14.87430;3.21966;3.21966;,
 -14.87430;4.55328;0.00000;,
 -14.87430;3.21966;-3.21966;,
 -16.41760;-1.85203;-1.85201;,
 -17.03749;-0.00001;0.00000;,
 -16.41761;-0.00001;-2.61913;,
 -16.41760;-2.61915;0.00000;,
 -16.41760;-1.85203;1.85201;,
 -16.41761;-0.00001;2.61914;,
 -16.41761;1.85201;1.85201;,
 -16.41761;2.61915;0.00000;,
 -16.41761;1.85201;-1.85201;,
 -0.67978;0.00000;-2.33289;,
 0.00000;0.00000;0.00000;,
 -0.67978;-1.64960;-1.64960;,
 -0.67978;-2.33290;0.00000;,
 -0.67978;-1.64960;1.64960;,
 -0.67978;0.00000;2.33289;,
 -0.67976;1.64962;1.64960;,
 -0.67978;2.33288;0.00000;,
 -0.67976;1.64962;-1.64960;;
 
 56;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,0,3,15;,
 4;3,2,16,17;,
 4;2,5,18,16;,
 4;5,7,19,18;,
 4;7,9,20,19;,
 4;9,11,21,20;,
 4;11,13,22,21;,
 4;13,15,23,22;,
 4;15,3,17,23;,
 4;17,16,24,25;,
 4;16,18,26,24;,
 4;18,19,27,26;,
 4;19,20,28,27;,
 4;20,21,29,28;,
 4;21,22,30,29;,
 4;22,23,31,30;,
 4;23,17,25,31;,
 3;32,33,34;,
 4;32,34,25,24;,
 3;35,33,32;,
 4;35,32,24,26;,
 3;36,33,35;,
 4;36,35,26,27;,
 3;37,33,36;,
 4;37,36,27,28;,
 3;38,33,37;,
 4;38,37,28,29;,
 3;39,33,38;,
 4;39,38,29,30;,
 3;40,33,39;,
 4;40,39,30,31;,
 3;34,33,40;,
 4;34,40,31,25;,
 3;41,42,43;,
 4;41,43,1,0;,
 3;43,42,44;,
 4;43,44,4,1;,
 3;44,42,45;,
 4;44,45,6,4;,
 3;45,42,46;,
 4;45,46,8,6;,
 3;46,42,47;,
 4;46,47,10,8;,
 3;47,42,48;,
 4;47,48,12,10;,
 3;48,42,49;,
 4;48,49,14,12;,
 3;49,42,41;,
 4;49,41,0,14;;
 
 MeshMaterialList {
  2;
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
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
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
   0.800000;0.800000;0.690196;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.132000;0.132000;0.132000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  50;
  1.000000;-0.000003;-0.000000;,
  0.584706;-0.000001;-0.811246;,
  0.584706;-0.573637;-0.573638;,
  0.584705;-0.811246;-0.000000;,
  0.584706;-0.573637;0.573638;,
  0.584706;-0.000001;0.811246;,
  0.584708;0.573636;0.573636;,
  0.584709;0.811243;0.000000;,
  0.584708;0.573636;-0.573636;,
  0.398696;-0.000002;-0.917083;,
  0.398694;-0.648477;-0.648476;,
  0.398693;-0.917085;-0.000000;,
  0.398694;-0.648477;0.648476;,
  0.398696;-0.000002;0.917083;,
  0.398701;0.648474;0.648475;,
  0.398702;0.917080;0.000000;,
  0.398701;0.648474;-0.648475;,
  -0.065483;-0.000001;-0.997854;,
  -0.065483;-0.705590;-0.705588;,
  -0.065483;-0.997854;0.000000;,
  -0.065483;-0.705590;0.705588;,
  -0.065483;-0.000001;0.997854;,
  -0.065485;0.705590;0.705588;,
  -0.065485;0.997854;0.000000;,
  -0.065485;0.705590;-0.705588;,
  -0.587650;-0.000001;-0.809115;,
  -0.587649;-0.572132;-0.572131;,
  -0.587648;-0.809117;0.000000;,
  -0.587649;-0.572133;0.572131;,
  -0.587649;-0.000001;0.809116;,
  -0.587649;0.572131;0.572131;,
  -0.587649;0.809116;0.000000;,
  -0.587650;0.572131;-0.572131;,
  -1.000000;-0.000003;-0.000000;,
  -0.900524;-0.000002;-0.434806;,
  -0.900523;-0.307457;-0.307454;,
  -0.900523;-0.434808;0.000000;,
  -0.900523;-0.307457;0.307454;,
  -0.900524;-0.000002;0.434806;,
  -0.900524;0.307454;0.307455;,
  -0.900524;0.434806;0.000000;,
  -0.900524;0.307453;-0.307455;,
  0.828624;-0.395842;-0.395844;,
  0.828622;-0.000004;-0.559808;,
  0.828625;-0.559805;-0.000000;,
  0.828624;-0.395842;0.395843;,
  0.828622;-0.000004;0.559808;,
  0.828624;0.395843;0.395841;,
  0.828621;0.559811;0.000000;,
  0.828624;0.395843;-0.395841;;
  56;
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,8,16,15;,
  4;8,1,9,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,16,24,23;,
  4;16,9,17,24;,
  4;17,18,26,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,24,32,31;,
  4;24,17,25,32;,
  3;35,33,34;,
  4;35,34,25,26;,
  3;36,33,35;,
  4;36,35,26,27;,
  3;37,33,36;,
  4;37,36,27,28;,
  3;38,33,37;,
  4;38,37,28,29;,
  3;39,33,38;,
  4;39,38,29,30;,
  3;40,33,39;,
  4;40,39,30,31;,
  3;41,33,40;,
  4;41,40,31,32;,
  3;34,33,41;,
  4;34,41,32,25;,
  3;43,0,42;,
  4;43,42,2,1;,
  3;42,0,44;,
  4;42,44,3,2;,
  3;44,0,45;,
  4;44,45,4,3;,
  3;45,0,46;,
  4;45,46,5,4;,
  3;46,0,47;,
  4;46,47,6,5;,
  3;47,0,48;,
  4;47,48,7,6;,
  3;48,0,49;,
  4;48,49,8,7;,
  3;49,0,43;,
  4;49,43,1,8;;
 }
 MeshTextureCoords {
  50;
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
