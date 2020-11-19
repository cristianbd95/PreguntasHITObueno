package misrc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import misrc.Hijo;

public class Main2 {

    public static void main(String[] args) {
        System.out.println("CASO 1");
        System.out.println("======");
        {
            List<Hijo> hijos_al = new ArrayList<Hijo>();
            hijos_al.add(new Hijo("Paco", "Perez", 20, new Date(11000)));
            hijos_al.add(new Hijo("Pepe", "Argeta", 23, new Date(9000)));
            hijos_al.add(new Hijo("Zulma", "Estrada", 18, new Date(10000)));
            hijos_al.add(new Hijo("Arturo", "Roncal", 19, new Date(12000)));

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS ANTES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosEdad(hijos_al);

            System.out.println("ORDENAR EL ARRAYLIST DE HIJOS POR SU ATRIBUTO EDAD MENOR A MAYOR");
            ordenarArrayListHijosAtributoEdadMenorMayor(hijos_al);

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS DESPUES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosEdad(hijos_al);
        }
        System.out.println("CASO 2");
        System.out.println("======");
        {
            List<Hijo> hijos_al = new ArrayList<Hijo>();
            hijos_al.add(new Hijo("Paco", "Perez", 20, new Date(11000)));
            hijos_al.add(new Hijo("Pepe", "Argeta", 23, new Date(9000)));
            hijos_al.add(new Hijo("Zulma", "Estrada", 18, new Date(10000)));
            hijos_al.add(new Hijo("Arturo", "Roncal", 19, new Date(12000)));

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS ANTES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosEdad(hijos_al);

            System.out.println("ORDENAR EL ARRAYLIST DE HIJOS POR SU ATRIBUTO EDAD MAYOR A MENOR");
            ordenarArrayListHijosAtributoEdadMayorMenor(hijos_al);

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS DESPUES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosEdad(hijos_al);
        }
        System.out.println("CASO 3");
        System.out.println("======");
        {
            List<Hijo> hijos_al = new ArrayList<Hijo>();
            hijos_al.add(new Hijo("Paco", "Perez", 20, new Date(11000)));
            hijos_al.add(new Hijo("Pepe", "Argeta", 23, new Date(9000)));
            hijos_al.add(new Hijo("Zulma", "Estrada", 18, new Date(10000)));
            hijos_al.add(new Hijo("Arturo", "Roncal", 19, new Date(12000)));

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS ANTES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosFecha(hijos_al);

            System.out.println("ORDENAR EL ARRAYLIST DE HIJOS POR SU ATRIBUTO FECHA MENOR A MAYOR");
            ordenarArrayListHijosAtributoFechaMenorMayor(hijos_al);

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS DESPUES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosFecha(hijos_al);
        }
        System.out.println("CASO 5");
        System.out.println("======");
        {
            List<Hijo> hijos_al = new ArrayList<Hijo>();
            hijos_al.add(new Hijo("Paco", "Perez", 20, new Date(11000)));
            hijos_al.add(new Hijo("Pepe", "Argeta", 23, new Date(9000)));
            hijos_al.add(new Hijo("Zulma", "Estrada", 18, new Date(10000)));
            hijos_al.add(new Hijo("Arturo", "Roncal", 19, new Date(12000)));

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS ANTES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosNombre(hijos_al);

            System.out.println("ORDENAR EL ARRAYLIST DE HIJOS POR SU ATRIBUTO NOMBRE MENOR A MAYOR");
            ordenarArrayListHijosAtributoNombreMenorMayor(hijos_al);

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS DESPUES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosNombre(hijos_al);
        }
        System.out.println("CASO 6");
        System.out.println("======");
        {
            List<Hijo> hijos_al = new ArrayList<Hijo>();
            hijos_al.add(new Hijo("Paco", "Perez", 20, new Date(11000)));
            hijos_al.add(new Hijo("Pepe", "Argeta", 23, new Date(9000)));
            hijos_al.add(new Hijo("Zulma", "Estrada", 18, new Date(10000)));
            hijos_al.add(new Hijo("Arturo", "Roncal", 19, new Date(12000)));

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS ANTES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosNombre(hijos_al);

            System.out.println("ORDENAR EL ARRAYLIST DE HIJOS POR SU ATRIBUTO NOMBRE MAYOR A MENOR");
            ordenarArrayListHijosAtributoNombreMayorMenor(hijos_al);

            System.out.println("MOSTRAR EL ARRAYLIST DE HIJOS DESPUES DE ORDENARLO");
            mostrarTodosElementosArrayListHijosNombre(hijos_al);
        }

    }

    //*************************************************************************************
    // ORDENAR UN ARRAYLIST DE HIJOS POR SU ATRIBUTO EDAD MENOR A MAYOR
    public static void ordenarArrayListHijosAtributoEdadMenorMayor(List<Hijo> hijos_al) {
        Collections.sort(hijos_al, new Comparator<Hijo>() {
            @Override
            public int compare(Hijo o1, Hijo o2) {
                return o1.getEdad().compareTo(o2.getEdad()); //POR DEFECTO ES MENOR A MAYOR
            }
        });
    }

    // ORDENAR UN ARRAYLIST DE HIJOS POR SU ATRIBUTO EDAD MAYOR A MENOR
    public static void ordenarArrayListHijosAtributoEdadMayorMenor(List<Hijo> hijos_al) {
        Collections.sort(hijos_al, new Comparator<Hijo>() {
            @Override
            public int compare(Hijo o1, Hijo o2) {
                return o2.getEdad().compareTo(o1.getEdad()); //CAMBIAR EL ORDEN PARA MAYOR A MENOR
            }
        });
    }

    // MOSTRAR TODOS LOS ELEMENTOS DEL ARRAYLIST DE HIJOS ATRIBUTO EDAD
    private static void mostrarTodosElementosArrayListHijosEdad(List<Hijo> hijos_al) {
        for (Hijo hijo : hijos_al) {
            System.out.println(hijo.getNombre() + "\t" + hijo.getEdad());
        }
    }

    //*************************************************************************************
    // ORDENAR UN ARRAYLIST DE HIJOS POR SU ATRIBUTO FECHA MENOR A MAYOR
    public static void ordenarArrayListHijosAtributoFechaMenorMayor(List<Hijo> hijos_al) {
        Collections.sort(hijos_al, new Comparator<Hijo>() {
            @Override
            public int compare(Hijo o1, Hijo o2) {
                return o1.getFechaRegistro().compareTo(o2.getFechaRegistro()); //POR DEFECTO ES MENOR A MAYOR
            }
        });
    }

    // ORDENAR UN ARRAYLIST DE HIJOS POR SU ATRIBUTO FECHA MAYOR A MENOR
    public static void ordenarArrayListHijosAtributoFechaMayorMenor(List<Hijo> hijos_al) {
        Collections.sort(hijos_al, new Comparator<Hijo>() {
            @Override
            public int compare(Hijo o1, Hijo o2) {
                return o2.getFechaRegistro().compareTo(o1.getFechaRegistro()); //CAMBIAR EL ORDEN PARA MAYOR A MENOR
            }
        });
    }

    // MOSTRAR TODOS LOS ELEMENTOS DEL ARRAYLIST DE HIJOS ATRIBUTO FECHA
    private static void mostrarTodosElementosArrayListHijosFecha(List<Hijo> hijos_al) {
        for (Hijo hijo : hijos_al) {

            java.util.Date utilDate = hijo.getFechaRegistro(); //Devuelve un objeto Date
            long tiempoenmilisegundos = utilDate.getTime();

            java.sql.Date sqlDate = new java.sql.Date(tiempoenmilisegundos);
            java.sql.Time sqlTime = new java.sql.Time(tiempoenmilisegundos);
            java.sql.Timestamp sqlTimestamp = new java.sql.Timestamp(tiempoenmilisegundos);

            System.out.println(hijo.getNombre() + "\t" + sqlDate + "\t" + sqlTime + "\t" + sqlTimestamp + "\t" + utilDate);
        }
    }

    //*************************************************************************************
    // ORDENAR UN ARRAYLIST DE HIJOS POR SU ATRIBUTO NOMBRE MENOR A MAYOR
    public static void ordenarArrayListHijosAtributoNombreMenorMayor(List<Hijo> hijos_al) {
        Collections.sort(hijos_al, new Comparator<Hijo>() {
            @Override
            public int compare(Hijo o1, Hijo o2) {
                return o1.getNombre().compareTo(o2.getNombre()); //POR DEFECTO ES MENOR A MAYOR
            }
        });
    }

    // ORDENAR UN ARRAYLIST DE HIJOS POR SU ATRIBUTO NOMBRE MAYOR A MENOR
    public static void ordenarArrayListHijosAtributoNombreMayorMenor(List<Hijo> hijos_al) {
        Collections.sort(hijos_al, new Comparator<Hijo>() {
            @Override
            public int compare(Hijo o1, Hijo o2) {
                return o2.getNombre().compareTo(o1.getNombre()); //CAMBIAR EL ORDEN PARA MAYOR A MENOR
            }
        });
    }

    // MOSTRAR TODOS LOS ELEMENTOS DEL ARRAYLIST DE HIJOS ATRIBUTO NOMBRE
    private static void mostrarTodosElementosArrayListHijosNombre(List<Hijo> hijos_al) {
        for (Hijo hijo : hijos_al) {
            System.out.println(hijo.getNombre() + "\t" + hijo.getApellido());
        }
    }

    //*************************************************************************************
}
