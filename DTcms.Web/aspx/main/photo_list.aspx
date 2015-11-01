<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/11/1 星期日 下午 3:44:06.
		本页面代码由DTcms模板引擎生成于 2015/11/1 星期日 下午 3:44:06. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "photo";
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" rel=\"stylesheet\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<link href=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\" />\r\n<div class=\"header\">\r\n  <div class=\"header-wrap\">\r\n    <div class=\"section\">\r\n      <div class=\"left-box\">\r\n        <a class=\"logo\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</a>\r\n        <ul class=\"nav\">\r\n            <li><a href=\"/\"  class=\"letter\">首页</a></li>\r\n            <li><a  href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a></li>             \r\n            <li><a  href=\"");
	templateBuilder.Append(linkurl("wytx"));

	templateBuilder.Append("\"  >网页特效</a></li>\r\n            <li><a  href=\"");
	templateBuilder.Append(linkurl("wymb"));

	templateBuilder.Append("\">网页模板</a></li>\r\n            <li><a  href=\"");
	templateBuilder.Append(linkurl("wyjc"));

	templateBuilder.Append("\">网页教程</a></li>\r\n            <li><a  href=\"");
	templateBuilder.Append(linkurl("pmjc"));

	templateBuilder.Append("\">平面教程</a></li>\r\n            <li><a  href=\"");
	templateBuilder.Append(linkurl("ymxz"));

	templateBuilder.Append("\">源码下载</a></li>\r\n            \r\n        </ul>\r\n      </div>\r\n      <div class=\"search right-box\">\r\n        <input id=\"keywords\" name=\"keywords\" class=\"input\" type=\"text\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" placeholder=\"输入回车搜索\" x-webkit-speech=\"\" />\r\n        <input class=\"submit\" type=\"submit\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" value=\"搜索\" />\r\n      </div>\r\n      \r\n    </div>\r\n  </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n    $(function(){\r\n        $(\".header-wrap .left-box .nav li a\").hover(function(){\r\n            $(this).addClass('animated jello');\r\n        },function(){\r\n            $(this).removeClass('animated jello');\r\n            //$('.header-wrap .left-box .nav li ').removeClass('animated bounceOutLeft');\r\n            //$(this).addClass('animated bounceInRight');\r\n        });\r\n    });\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n  \r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a href=\"javascript:;\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("<em></em></a>\r\n    </h2>\r\n    <p>\r\n      <!--小类-->\r\n      ");
	DataTable bcategoryList = get_category_child_list(channel,category_id);

	int cdr2__loop__id=0;
	foreach(DataRow cdr2 in bcategoryList.Rows)
	{
		cdr2__loop__id++;


	if (cdr2__loop__id==1)
	{

	templateBuilder.Append("\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("photo_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("photo_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n      <!--小类-->\r\n    </p>\r\n    ");
	string category_nav = get_category_menu("photo_list", category_id);

	templateBuilder.Append("\r\n    <span>当前位置：<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a> &gt; <a href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片分享</a>");
	templateBuilder.Append(Utils.ObjectToStr(category_nav));
	templateBuilder.Append("</span>\r\n  </div>\r\n  \r\n  <div class=\"wrapper auto clearfix\">\r\n    <ul class=\"img-list high ilist\">\r\n      ");
	DataTable photoList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "photo_list", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n      ");
	foreach(DataRow dr in photoList.Rows)
	{

	templateBuilder.Append("\r\n      <li>\r\n        <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("photo_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n          <span class=\"abs-bg\"></span>\r\n          <span class=\"txt1\">" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n          <span class=\"txt2\">\r\n            <i>阅读：" + Utils.ObjectToStr(dr["click"]) + "次</i>\r\n            <p>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</p>\r\n          </span>\r\n          <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n        </a>\r\n      </li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n    <!--页码列表-->\r\n    <div class=\"page-box\">\r\n      <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n    </div>\r\n    <!--/页码列表-->\r\n  </div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("\r\n\r\n<div class=\"footer clearfix\">\r\n  <div class=\"foot-nav\">\r\n    <a target=\"_blank\" href=\"/index.html\">首 页</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("wytx"));

	templateBuilder.Append("\">网页特效</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("wymb"));

	templateBuilder.Append("\">网页模板</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">网页教程</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("pmjc"));

	templateBuilder.Append("\">平面教程</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("ymxz"));

	templateBuilder.Append("\">源码下载</a>\r\n  </div>\r\n  <div class=\"copyright\">\r\n    <p>版权所有 ");
	templateBuilder.Append(site.company.ToString());

	templateBuilder.Append(" 沪ICP备14041733号 </p>\r\n    <p>Copyright &copy; 2015-  Corporation,All Rights Reserved.</p>\r\n    <p><script src=\"\" language=\"javascript\"></");
	templateBuilder.Append("script></p>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
