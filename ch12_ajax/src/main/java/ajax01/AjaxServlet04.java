package ajax01;

import java.io.IOException;

import org.json.simple.JSONObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ajax01/ajax4.do")
public class AjaxServlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Member bean = new MemberDao().getMember(id);
		
		System.out.println(id);
		System.out.println(bean.getName());
		
		// JSONObject({key:value, key:value, ... })
		JSONObject jobj = new JSONObject();
		jobj.put("userId", bean.getId());
		jobj.put("userName", bean.getName());
		jobj.put("gender", bean.getGender());
		jobj.put("email", bean.getEmail());
		
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().print(jobj);	
	}
}
