/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.37
 * Generated at: 2019-02-16 07:38:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/login/../bottom.jsp", Long.valueOf(1547881474880L));
    _jspx_dependants.put("/login/../top.jsp", Long.valueOf(1550298056876L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
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
      out.write("\t\t\t\t\t<a href=\"c\">회원가입</a> | \r\n");
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
      out.write("<!-- login.jsp-->\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../style.css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction searchMember(mode){\r\n");
      out.write("\t\twindow.open(\"");
      out.print(request.getContextPath());
      out.write("/login/search.jsp?mode=\"+mode,\r\n");
      out.write("\t\t\t\t\"search\", \"width=600, height=450\");\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction loginCheck(){\r\n");
      out.write("\t\tif (f.id.value==\"\"){\r\n");
      out.write("\t\t\talert(\"아이디를 입력해 주세요!!\")\r\n");
      out.write("\t\t\tf.id.focus()\r\n");
      out.write("\t\t\treturn\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif (f.passwd.value==\"\"){\r\n");
      out.write("\t\t\talert(\"비밀번호를 입력해 주세요!!\")\r\n");
      out.write("\t\t\tf.passwd.focus()\r\n");
      out.write("\t\t\treturn\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.f.submit()\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
 
		Cookie[] cks = request.getCookies();
		String name=null, value=null;
		if (cks != null && cks.length != 0){
			for(int i=0; i<cks.length; ++i){
				name = cks[i].getName();
				if (name.trim().equals("mbId")){
					value = cks[i].getValue();
					break;
				}
			}
		}
		//이때 value값이 null이면 cookie에 mbId값이 저장되지 않았다는 뜻
		//value값이 null이 아니면 cookie에 mbId값을 value에 넣었다는 뜻

      out.write('\r');
      out.write('\n');

		String mode = request.getParameter("mode");
		if (mode==null || mode.trim().equals("")){
			mode="";
		}
		

      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<img src=\"../img/bottom.gif\" width=570 height=\"40\" border=\"0\" alt=\"\">\r\n");
      out.write("<br>\r\n");
      out.write("<p>\r\n");
      out.write("<img src=\"../img/tm_login.gif\" width=100 height=\"13\" border=\"0\" \r\n");
      out.write("\talign=center ALT=\"회원 로그인\">\r\n");
      out.write("<form name=\"f\" action=\"login_ok.jsp\" method=\"post\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"mode\" value=\"");
      out.print(mode);
      out.write("\" />\r\n");
      out.write("\t<table width=\"60%\" align=\"center\" height=\"120\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td align=\"right\" width=\"30%\">\r\n");
      out.write("\t\t\t\t<img src=\"../img/id01.gif\" \r\n");
      out.write("\t\t\t\twidth=\"28\" height=\"11\" border=\"0\" alt=\"아이디\">&nbsp;&nbsp;\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td width=\"40%\">\r\n");
		if (value==null){ 
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"id\" tabindex=\"1\">\r\n");
		}else { 
      out.write("\r\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"id\" tabindex=\"1\" value=\"");
      out.print(value);
      out.write("\">\r\n");
		} 
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td rowspan=\"2\" width=\"30%\" valign=\"middle\">\r\n");
      out.write("\t\t\t\t<a href=\"javascript:loginCheck()\">\r\n");
      out.write("\t\t\t\t\t<img src=\"../img/bt_login.gif\" border=\"0\" alt=\"로그인\"  \r\n");
      out.write("\t\t\t\t\t\ttabindex=\"3\">&nbsp;&nbsp;<br>\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t<nobr>\r\n");
		if (value==null){ 
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<input type=\"checkbox\" name=\"saveId\">\r\n");
		}else { 
      out.write("\r\n");
      out.write("\t\t\t\t\t<input type=\"checkbox\" name=\"saveId\" checked>\r\n");
		} 
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<font face=\"굴림\" size=\"2\">아이디 기억하기</font>\r\n");
      out.write("\t\t\t\t</nobr>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td align=\"right\">\r\n");
      out.write("\t\t\t\t<img src=\"../img/pwd.gif\" \r\n");
      out.write("\t\t\t\t\t\t\twidth=\"37\" height=\"11\" alt=\"비밀번호\">\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\t\t\t\t<input type=\"password\" name=\"passwd\"  tabindex=\"2\">\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"3\" align=\"center\">\r\n");
      out.write("\t\t\t\t<a href=\"javascript:checkMember()\">\r\n");
      out.write("\t\t\t\t\t<img src=\"../img/bt_join.gif\" width=\"60\" height=\"22\" alt=\"회원가입\">\r\n");
      out.write("\t\t\t\t</a>\t\r\n");
      out.write(" \t\t\t\t<a href=\"javascript:searchMember('id')\">\r\n");
      out.write(" \t\t\t\t\t<img src=\"../img/bt_search_id.gif\" border=\"0\" width=\"60\" height=\"22\" alt=\"아이디 찾기\">\r\n");
      out.write(" \t\t\t\t</a>\t\r\n");
      out.write(" \t\t\t\t<a href=\"javascript:searchMember('pw')\">\r\n");
      out.write("\t\t\t\t\t<img src=\"../img/bt_search_pw.gif\" border=\"0\" width=\"60\" height=\"22\" alt=\"비밀번호 찾기\">\r\n");
      out.write("\t\t\t\t</a>\t\t\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("</form> \r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
