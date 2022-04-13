public class Show {

    /**
     * Inicio
     */
    public static String showInicial() {
        final StringBuilder texto = new StringBuilder();
        texto.append("---------------------------------------------------------------\n");
        texto.append("                    BEM-VINDO AO FUMTEBOL !                    \n"); // football de p(oo) ... amirite? :')
        texto.append("---------------------------------------------------------------\n");
        return texto.toString();
    }

    /**
     * Saida
     */
    public static String showExit() {
        final StringBuilder texto = new StringBuilder();
        texto.append("\n");
        texto.append("---------------------------------------------------------------\n");
        texto.append("        OBRIGADO POR JOGAR CONNOSCO! VOLTE DEPRESSA :D         \n");
        texto.append("---------------------------------------------------------------\n");
        return texto.toString();
    }
}