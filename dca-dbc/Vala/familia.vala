//Probar con 33 años en el padre y 18 en el hijo para comprobar el funcionamiento

public class Hijo 
{
    
    private int edad;
    private string nombre;
    private Padre padre;

    
    public int getEdad(){return edad;}
    public string getNombre(){return nombre;}

    public Hijo(string nombre, int edad, Padre padre){
            this.nombre = nombre;
            this.edad= edad;
            this.padre = padre;
    }

    public string soyMayorDeEdad() requires (this.edad > 18)
    {
        return "Soy mayor de edad \n";       
    }

    public bool MiPadreNoFuePadrePrecoz() 
        //Compobramos que no hemos sido padre antes de los 16 ...
        ensures(this.padre.getEdad() > (this.edad + 16))
    {
        if(this.padre.getEdad() - this.edad > 16){
            return true;
        }
        return false;
    }
}

public class Padre
{
    
    private int edad;
    private string nombre;
    
    //Getters
    public int getEdad(){
        return edad;
    }

    public string getNombre(){
        return nombre;
    }

    //Setters
    public void setNombre(string nombre){
        this.nombre = nombre;
    }

    public void setEdad(int edad){
        this.edad = edad;
    }

    //Constructor con parametros
    public Padre(string nombre, int edad){
        this.nombre = nombre;
        this.edad = edad;
    }
}

void main(string[] args){
    string nombrePadre;
    int edadPadre;

    string nombreHijo;
    int edadHijo;

    print("Crea tu familia, comenzaremos creando el padre \n");
    print("Introduce el nombre del padre: \n");
    nombrePadre = stdin.read_line();
    print("Introduce la edad del padre: \n ");
    edadPadre = int.parse(stdin.read_line());

    Padre papito = new Padre(nombrePadre,edadPadre);

    print("Introduce el nombre del hijo: \n");
    nombreHijo = stdin.read_line();
    print("Introduce la edad del hijo \n");
    edadHijo = int.parse(stdin.read_line());

    Hijo hijo = new Hijo(nombreHijo,edadHijo,papito);

    print("Vamos a comprobar si el hijo es mayor de edad... \n");
    print(hijo.soyMayorDeEdad());
    
    if(hijo.MiPadreNoFuePadrePrecoz() == true){
        print ( "Mi padre no fue precoz \n");
    }
}