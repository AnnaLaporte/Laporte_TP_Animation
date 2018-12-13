#version 140
#extension GL_ARB_explicit_attrib_location : require

layout (location = 0) in vec3 a_vertex;
layout (location = 1) in vec3 a_normal;
layout (location = 2) in vec2 a_weight;


uniform mat4 transform;

out vec3 g_vertex;
out vec3 g_normal;
out vec2 g_weight;
void main()
{
    vec4 v =  transform *vec4(a_vertex, 1.0);
    g_vertex = v.xyz/v.w;
    g_normal = a_normal;
    gl_Position =  v;
    g_weight = a_weight;
}

