#version 330 core

layout (location = 0) in vec3 obj_spc_vertex_pos;
layout (location = 1) in vec3 obj_spc_N;
layout (location = 2) in vec3 k_d;

uniform mat4 model_mat;
uniform mat4 view_mat;
uniform mat4 proj_mat;

out vec3 I; 

void main() {
    vec3 cam_pos = vec3(0.0f, 0.0f, 1.5f);

    vec3 I_a = vec3(0.2f, 0.2f, 0.2f);
    vec3 k_a = vec3(0.0f, 0.0f, 1.0f);	
    vec3 k_s = vec3(1.0f, 1.0f, 1.0f);	
    vec3 I_p_pos = vec3(-2.0f, 2.0f, 1.5f);
    vec3 I_p = vec3(0.8f, 0.8f, 0.8f);
    
   //coeficiente de reflectância difusa
    vec3 k_d = vec3(0.0f, 0.0f, 0.8f); 
    
    //Fórmulas dos novos vetores L e N :
    vec3 L = normalize ( I_p_pos - ( model_mat * vec4 ( obj_spc_vertex_pos , 1.0) ) .xyz ) ;
    vec3 N = normalize ( mat3 ( transpose ( inverse ( model_mat ) ) ) * obj_spc_N ) ;
    //Teta será o produto escalar entre eles:
   
   
 
/*

  // Exércicio 1 
   
   float teta = dot(L,N); //E1

     //Modelo de iluminação de Reflexão Difuso:
    I = I_a * k_a + I_p*k_d*teta; // E1
    // EndE1
    
  */  

    




    //Exerccício 2 
     float teta = max(dot(L,N), 0.0f);//E2
   
    //Fórmulas dos novos vetores R e V para cálculo da variável alpha:
    vec3 R = - reflect (L , N ) ;
    vec3 V = normalize ( cam_pos - ( model_mat * vec4 ( obj_spc_vertex_pos , 1.0) ) .xyz ) ;
    //Alpha será o produto escalar entre eles elevado a n = 64:
    float a = max(dot(R,V), 0.0f);
    float alpha = (pow(a,64));
    
    //Modelo de iluminação Phong:
    I = I_a * k_a + I_p*(k_d*teta + k_s*alpha);

	//EndE2
	




    gl_Position = proj_mat * view_mat * model_mat * vec4(obj_spc_vertex_pos, 1.0);
}

