package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet({"/login" })
public class LoginServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
      rd.forward(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   @SuppressWarnings("unchecked")
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html; charset=utf-8");
      PrintWriter out = response.getWriter();
      
      request.setCharacterEncoding("utf-8");
      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      System.out.printf("id : %s, pwd : %s\n",id ,pwd);
      
      //id, pwd ����� ���� üũ
      boolean result = true;
      
      if(result){
         // ���ǿ� ����� ���� ����
         HttpSession session = request.getSession();
         session.setAttribute("id", id);
         
         UserVO user = new UserVO();
         user.setId(id);
         user.setName("ȫ�浿");
         user.setNickname("����");
         
         session.setAttribute("user", user);
         
         RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
         rd.forward(request, response);
      }
      
      
       out.close();
   }
   protected void doPost2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("application/json; charset=utf-8");
      PrintWriter out = response.getWriter();
      
      request.setCharacterEncoding("utf-8");
      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      System.out.printf("id : %s, pwd : %s\n",id ,pwd);
      /*
       * {
       *    "id" : test
       * }
       * */
//      out.println("{");
//      out.println("\"id\":"+"\""+id+"\"");
//      out.println("}");
      
      // JSON simple library ���
//      JSONObject json = new JSONObject();
//      json.put("id", id);
//      System.out.println(json.toJSONString());
//      out.write(json.toJSONString());

      // Gson library ���
      Gson gson = new Gson();
         JsonObject json = new JsonObject();
         json.addProperty("id",id);
         String j = gson.toJson(json);
         System.out.println(j);
         out.write(j);
         out.close();
   }
}