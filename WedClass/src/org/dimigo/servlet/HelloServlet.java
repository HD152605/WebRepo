package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet(description = "ù��° ����", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public HelloServlet() {
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      // response.getWriter().append("Served at: ").append(request.getContextPath());
      // �Էµ����� ó��
      request.setCharacterEncoding("utf-8");
      String id = request.getParameter("id");
      String name = request.getParameter("name");
      System.out.printf("id : %s, name : %s \n",id,name);
      
      // ��µ����� Content Type ����
      response.setContentType("text/html;charset=utf-8");
      PrintWriter out = response.getWriter();
      
      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head>");
      out.println("<body>");
      out.println("<h1>Hello, Servlet!</h1><br>");
      out.println("<h1>�ȳ�, ����!</h1>");
      out.println("<h2>id : " + id + ", name : "+ name + "</h2>");
      out.println("</body>");
      out.println("</head>");
      
      out.close();
      }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("doPost() ȣ���");
      doGet(request, response);
   }

   @Override
   public void init() throws ServletException {
      // TODO Auto-generated method stub
      // ���� �޸� �ε��ÿ� 1ȸ ȣ��
      System.out.println("init() ȣ��");
   }
   @Override
   protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
      System.out.println("service() ȣ��");
      super.service(arg0, arg1);
   }
   @Override
   public void destroy() {
      //�޸𸮿��� ���� �� ȣ���
      //������ ������Ű�ų�,�ҽ��� ����� ���
      System.out.println("destroy() ȣ��");
   }
}