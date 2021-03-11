/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package misrc;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Campus FP
 */
public class MisMetodos {

    public List<Profesor> leer(String rutaArchivo) {
        List<Profesor> profesors_al = new ArrayList<Profesor>();
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
                parte = registro.split(";"); //saca todas las partes / campus de profesor y los guarda 1 por 1 separados
                Profesor profesor = new Profesor(parte[0], parte[1]);
                profesors_al.add(profesor);
            }

        } catch (Exception e) {
            profesors_al = null;
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (IOException e) {
                profesors_al = null;

            }

            return profesors_al;
        }
    }
    
    public List<Alumno> leer2(String rutaArchivo) {
        List<Alumno> alumnos_al = new ArrayList<Alumno>();
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
                parte = registro.split(";"); //saca todas las partes / campus de profesor y los guarda 1 por 1 separados
                Alumno alumno = new Alumno(parte[0], parte[1], Integer.parseInt(parte[2]));
                alumnos_al.add(alumno);
            }

        } catch (Exception e) {
            alumnos_al = null;
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (IOException e) {
                alumnos_al = null;

            }

            return alumnos_al;
        }
    }

    public boolean buscar(String login, String password) {
        String login1 = "Luis";
        String password1 = "123";
        if (login1.equals(login) && password1.equals(password)) {
            return true;
        } else {
            return false;
        }

    }
}
