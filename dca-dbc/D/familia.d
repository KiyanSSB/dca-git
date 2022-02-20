//Respuestas a las preguntas:

//Comprueba qué ocurre cuando no se cumplen ni precondiciones ni postcondiciones ni invariante de clase.
//EN mi caso , el programa termina mostrando el mensaje adecuado por terminal



import std.stdio;
import std.conv;
import std.string;
import std.math;


class Hijo
{
    private:
        int edad;
        string nombre;
        Padre padre;

    public:
        int getEdad(){return edad;}
        string getNombre(){return nombre;}

        invariant(){
            //Comprobamos que el nombre es diferente de una cadena vacía
            assert(nombre != "" ,  "Debes tener un nombre, aunque sea una letra");
            //Comprobamos que la edad es mayor de 0 años
            assert(edad > 0 ,  "No puedes tener 0 años o menos");
            //Comprobamos que pese a tener un hijo, has decidido no ser padre con una edad un poco joven de más.
            assert(padre.edad-edad > 16 , "Como consejo, no deberías ser padre tan joven") ;
        }


        this(){}
        ~this(){}
        this(string nombre, int edad, Padre padre){
            this.nombre = nombre;
            this.edad= edad;
            this.padre = padre;
        }

        string soyMayorDeEdad()
            in{ assert(edad > 18); }
            out(result){
                assert(result == "Soy mayor de edad");
            }
            body{
                if(edad > 18){
                    return "Soy mayor de edad";
                }else{
                    return "No soy mayor de edad";
                }
            }
        
}

class Padre
{
    private:
        int edad;
        string nombre;
    public:

    //Getters
    int getEdad()
    {
        return edad;
    }

    string getNombre()
    {
        return nombre;
    }

    //Setters
    void setNombre(string nombre)
    {
        this.nombre = nombre;
    }

    void setEdad(int edad)
    {
        this.edad = edad;
    }

    invariant(){
        assert(nombre != "" , "Tienes que tener nombre");
        assert(edad > 0 , "Tienes que tener edad");
    }

    //Constructores predeterminados
    this(){}
    ~this(){}
    //Constructor con parametros
    this(string nombre, int edad){
        this.nombre = nombre;
        this.edad = edad;
    }
}

void main(string[] args){
    string nombrePadre;
    int edadPadre;

    string nombreHijo;
    int edadHijo;

    string opcion;
    writeln("Crea tu familia, comenzaremos creando el padre");
    writeln("Introduce el nombre del padre:");
    readf("%s\n" , &nombrePadre);
    writeln("Introduce la edad del padre: ");
    readf("%s\n" , &edadPadre);

    Padre papito = new Padre(nombrePadre,edadPadre);

    writeln("Introduce el nombre del hijo:");
    readf("%s\n" , &nombreHijo);
    writeln("Introduce la edad del hijo");
    readf("%s\n" , &edadHijo);

    Hijo hijo = new Hijo(nombreHijo,edadHijo,papito);

    writeln("Vamos a comprobar si el hijo es mayor de edad...");
    writeln(hijo.soyMayorDeEdad());


}