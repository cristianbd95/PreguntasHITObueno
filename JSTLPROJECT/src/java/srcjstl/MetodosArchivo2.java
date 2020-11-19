package srcjstl;

import java.io.BufferedReader;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;


public class MetodosArchivo2 {
    public List<Persona> leer(String rutaArchivo) {
        List<Persona> personas_al = new ArrayList<Persona>();
        File f = null;
        FileReader fr = null;
        BufferedReader br = null;
        String registro = null;
        String[] parte;

        try {
            f = new File(rutaArchivo);
            fr = new FileReader(f);
            br = new BufferedReader(fr);
            while ((registro = br.readLine()) != null) {
                parte = registro.split(";"); //saca todas las partes / campus de persona y los guarda 1 por 1 separados
                Persona persona = new Persona(parte[0], parte[1], parte[2]);
                personas_al.add(persona);
            }

        } catch (Exception e) {
            personas_al = null;
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (IOException e) {
                personas_al = null;

            }

            return personas_al;
        }
    }
    
    public int edad(String fecha_nac){
        DateTimeFormatter fmt = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate fechanac = LocalDate.parse(fecha_nac, fmt);
        
        LocalDate ahora = LocalDate.now();
        
        Period periodo = Period.between(fechanac, ahora);
        
        int year = periodo.getYears();
        int meses = periodo.getMonths();
        int dias = periodo.getDays();
        
        
        
        return year;
        
    }
    
    
    
    public List<Medico> leerM(String rutaArchivo) {
        List<Medico> medicos_al = new ArrayList<Medico>();
        File f = null;
        FileReader fr = null;
        BufferedReader br = null;
        String registro = null;
        String[] parte;

        try {
            f = new File(rutaArchivo);
            fr = new FileReader(f);
            br = new BufferedReader(fr);
            while ((registro = br.readLine()) != null) {
                parte = registro.split(";"); //saca todas las partes / campus de persona y los guarda 1 por 1 separados
                Medico medico = new Medico(parte[0], parte[1], parte[2], parte[3], parte[4]);
                medicos_al.add(medico);
            }

        } catch (Exception e) {
            medicos_al = null;
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (IOException e) {
                medicos_al = null;

            }

            return medicos_al;
        }
    }
    
    public static void ordenarObjetos(List<Medico> medicos_al) {
        Collections.sort(medicos_al, new Comparator<Medico>() {
            @Override
            public int compare(Medico o1, Medico o2) {
                return o1.getNombre().compareTo(o2.getNombre()); //CAMBIAR EL ORDEN PARA MAYOR A MENOR
            }
        });
    }

       
        public List<Object> leerGenerico(String fichero) {
        
        System.out.println("ENTRO");
        List<Object> rectangulos_al = new ArrayList<Object>();
        try {
            Object r = null;
            ObjectInputStream ois = new ObjectInputStream(new FileInputStream(fichero)); //Se crea un ObjectInputStream
            Object object = ois.readObject(); //Se lee el primer objeto
            while (object != null) { //Mientras haya objetos
                if (object instanceof Object) {
                    r = (Object) object;
                    rectangulos_al.add(r);
                }
                object = ois.readObject();
            }
            ois.close();
        } catch (EOFException e) {
            System.out.println("LECTURA CORRECTA");
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
            rectangulos_al = null;
        }
        return rectangulos_al;
    }



}

/*
    public static void ordenarObjetos(List<Medico> medicos_al) {
        Collections.sort(medicos_al, new Comparator<Medico>() {
            @Override
            public String compare(Medico o1, Medico o2) {
                return o2.getNombre().compareTo(o1.getNombre()); //CAMBIAR EL ORDEN PARA MAYOR A MENOR
            }
        });
    }
*/
