#version 460

in vec4 p3d_Vertex;

uniform mat4 p3d_ModelViewProjectionMatrix;
uniform mat4 p3d_ModelViewMatrix;

out vec4 vpos;

void main()
{
    gl_Position = p3d_ModelViewProjectionMatrix * p3d_Vertex;
    vpos = p3d_ModelViewMatrix * p3d_Vertex;
};