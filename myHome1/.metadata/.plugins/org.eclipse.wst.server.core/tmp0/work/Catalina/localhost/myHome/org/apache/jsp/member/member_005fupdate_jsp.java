/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.37
 * Generated at: 2019-02-16 07:41:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import my.member.*;

public final class member_005fupdate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/member/../bottom.jsp", Long.valueOf(1547881474880L));
    _jspx_dependants.put("/member/../top.jsp", Long.valueOf(1550302853691L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("my.member");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      my.member.MemberDAO mbdao = null;
      mbdao = (my.member.MemberDAO) _jspx_page_context.getAttribute("mbdao", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (mbdao == null){
        mbdao = new my.member.MemberDAO();
        _jspx_page_context.setAttribute("mbdao", mbdao, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');

		String no = request.getParameter("no");
		if (no == null || no.trim().equals("")){
			response.sendRedirect("memberAll.jsp");
			return;
		}
		
		MemberDTO dto = mbdao.getMember(Integer.parseInt(no));

      out.write("     \r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>홈페이지</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"> \t\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tfunction checkMember(){\r\n");
      out.write("\t\t\twindow.open(\"");
      out.print(request.getContextPath());
      out.write("/member/memberSsn.jsp\", \"checkMember\", \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\"width=640, height=400\")\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("</head>\r\n");

		String mbId = (String)session.getAttribute("mbId");
		boolean isLogin = false;
		if (mbId != null) isLogin = true;

      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div align=\"center\">\r\n");
      out.write("\t\t<table border=\"1\" width=\"800\" height=\"600\">\r\n");
      out.write("\t\t\t<tr height=\"10%\">\r\n");
      out.write("\t\t\t\t<td align=\"center\" colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t<a href=\"");
      out.print(request.getContextPath());
      out.write("/index.jsp\">메인</a> | \r\n");
			if (isLogin){ 
      out.write("\r\n");
      out.write("\t\t\t\t\t<a href=\"");
      out.print(request.getContextPath());
      out.write("/login/logout.jsp\">로그아웃</a> |\r\n");
			}else { 
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<a href=\"");
      out.print(request.getContextPath());
      out.write("/login/login.jsp\">로그인</a> |\r\n");
			} 
      out.write("\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t<a href=\"javascript:checkMember()\">회원가입</a> | \r\n");
      out.write("\t\t\t\t\t<a href=\"");
      out.print(request.getContextPath());
      out.write("/member/memberAll.jsp\">회원보기</a> | \r\n");
      out.write("\t\t\t\t\t<a href=\"");
      out.print(request.getContextPath());
      out.write("/member/memberAll.jsp?mode=find\">회원찾기</a> |\r\n");
      out.write("\t\t\t\t\t<a href=\"");
      out.print(request.getContextPath());
      out.write("/board/list.jsp\">게시판</a> |\r\n");
      out.write("\t\t\t\t\t<a href=\"");
      out.print(request.getContextPath());
      out.write("/board2/list.jsp\">자료실</a> | \r\n");
      out.write("\t\t\t\t\t<a href=\"");
      out.print(request.getContextPath());
      out.write("/company.jsp\">회사소개</a>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr height=\"80%\">\r\n");
      out.write("\t\t\t\t<td width=\"20%\" valign=\"top\">\r\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/count/count.jsp", out, false);
      out.write("<br>\r\n");
		if (isLogin){ 
      out.write("\r\n");
      out.write("\t\t\t\t아이디 [");
      out.print(mbId);
      out.write("]님이 로그인 중 \r\n");
		}else { 
      out.write("\r\n");
      out.write("\t\t\t\t로그인을 해 주세요\r\n");
		} 
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"80%\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../style.css\">\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tfunction check(){\r\n");
      out.write("\t\t\tif (f.passwd.value==\"\"){\r\n");
      out.write("\t\t\t\talert(\"비밀번호를 입력해 주세요!!\")\r\n");
      out.write("\t\t\t\tf.passwd.focus()\r\n");
      out.write("\t\t\t\treturn\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tdocument.f.submit()\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<form name=\"f\" method=\"POST\" action=\"member_update_ok.jsp\">\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"no\" value=\"");
      out.print(dto.getNo());
      out.write("\" />\r\n");
      out.write("\t\t<table width=\"600\" align=\"center\" class=\"outline\">\r\n");
      out.write("  \t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" align=center class=\"m2\">회원수정</td>\r\n");
      out.write(" \t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"150\" class=\"m3\">이름</td>\r\n");
      out.write("\t\t\t\t<td class=\"m3\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"name\" \r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"box\" value=\"");
      out.print(dto.getName());
      out.write("\" readOnly>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"150\" class=\"m3\">아이디</td>\r\n");
      out.write("\t\t\t\t<td class=\"m3\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"id\" \r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"box\" value=\"");
      out.print(dto.getId());
      out.write("\" readOnly>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("  \t\t\t</tr>\r\n");
      out.write("  \t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"150\" class=\"m3\">비밀번호</td>\r\n");
      out.write("\t\t\t\t<td class=\"m3\">\r\n");
      out.write("\t\t\t\t\t<input type=\"password\" name=\"passwd\" \r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"box\" value=\"");
      out.print(dto.getPasswd());
      out.write("\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("  \t\t\t</tr>\r\n");
      out.write("  \t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"150\" class=\"m3\">주민번호</td>\r\n");
      out.write("\t\t\t\t<td class=\"m3\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"ssn1\" \r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"box\" value=\"");
      out.print(dto.getSsn1());
      out.write("\" readOnly> -\r\n");
      out.write("\t\t\t<input type=\"password\" name=\"ssn2\" \r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"box\" value=\"");
      out.print(dto.getSsn2());
      out.write("\" readOnly>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("  \t\t\t</tr>\r\n");
      out.write("  \t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"150\" class=\"m3\">이메일</td>\r\n");
      out.write("\t\t\t\t<td class=\"m3\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"email\" \r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"box\" value=\"");
      out.print(dto.getEmail());
      out.write("\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("  \t\t\t</tr>\r\n");
      out.write("  \t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"150\" class=\"m3\">연락처</td>\r\n");
      out.write("\t\t\t\t<td class=\"m3\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"hp1\" class=\"box\" \r\n");
      out.write("\t\t\t\t\t\t\tsize=\"3\" maxlength=\"3\" value=\"");
      out.print(dto.getHp1());
      out.write("\"> -\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"hp2\" class=\"box\" \r\n");
      out.write("\t\t\t\t\t\t\tsize=\"4\" maxlength=\"4\" value=\"");
      out.print(dto.getHp2());
      out.write("\"> -\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"hp3\" class=\"box\" \r\n");
      out.write("\t\t\t\t\t\t\tsize=\"4\" maxlength=\"4\" value=\"");
      out.print(dto.getHp3());
      out.write("\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("  \t\t\t</tr>\r\n");
      out.write("  \t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t<a href=\"javascript:check()\">[수정]</a>\r\n");
      out.write("\t\t\t\t\t<a href=\"#\">[취소]</a>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("  \t\t\t</tr>\r\n");
      out.write("  \t\t</table>\r\n");
      out.write("\t</form>\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr height=\"10%\">\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" align=\"center\">2019년 1월 주말 JSP 수업</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
