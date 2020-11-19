package misrc;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Main {

    public static void main(String[] args) {
        System.out.println("(3) HASHSET DE CADENAS");
        {
            Set<String> cadenas_hs = new HashSet(5);

            cadenas_hs.add("Walter");
            cadenas_hs.add("Arturo");
            cadenas_hs.add("Jose");
            cadenas_hs.add("Zeta");
            cadenas_hs.add("Carlos");
            cadenas_hs.add("Jose");

            System.out.println("Tamaño de cadenas_hs = " + cadenas_hs.size());

            List<String> cadenas_al = new ArrayList<String>();

            for (String cadena : cadenas_hs) {
                cadenas_al.add(cadena);
            }

            for (int i = 0; i < cadenas_hs.size(); i++) {

                System.out.println(cadenas_hs);
            }

        }
    }

}
