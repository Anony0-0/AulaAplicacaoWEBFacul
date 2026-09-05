<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Usuários</title>
    </head>
    <body>
    <%
        //receber os dados digitados no formulario
        String nome, telefone, email, senha;
        nome = request.getParameter("nome");
        email = request.getParameter("email");
        telefone = request.getParameter("telefone");
        senha = request.getParameter("senha");


     //conectar com o banco de dados

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conectado = DriverManager.getConnection("informacoes do banco de dados");

        //dados para tabela
        PreparedStatement st = conectado.prepareStatement("insert into cliente values(?,?,?,?)");
        st.setString(1, nome);
        st.setString(2, email);
        st.setString(3, senha);
        st.setString(4, telefone);

        int resultado = st.executeUpdate();//executa o insert acima

        if(resultado ==1){
            out.print(resultado + " registro inseridos. ");
            }else{
               out.print("falha ao inserir dados.");
            }

        } catch(SQLException erro) {
            if (erro.getMessage().contains("Duplicate entry")){
            out.print("Usuário já está cadastrado. ") ;
            }else{
            out.print(" erro:" + erro.getMessage());
        }
    }
    %>
    </body>
</html>
