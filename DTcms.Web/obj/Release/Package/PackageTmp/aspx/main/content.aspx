﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/10/20 星期二 上午 11:31:48.
		本页面代码由DTcms模板引擎生成于 2015/10/20 星期二 上午 11:31:48. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "content";

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(model.category_id,"公司介绍");

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" name=\"description\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n  <div class=\"header-wrap\">\r\n    <div class=\"section\">\r\n      <div class=\"left-box\">\r\n        <a class=\"logo\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</a>\r\n        <ul class=\"nav\">\r\n            <li><a href=\"/index.html\" class=\"letter\">首页</a></li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a></li> \r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("wytx"));

	templateBuilder.Append("\">网页特效</a></li>\r\n          <li><a href=\"");
	templateBuilder.Append(linkurl("wymb"));

	templateBuilder.Append("\">网页模板</a></li>\r\n          <li><a href=\"");
	templateBuilder.Append(linkurl("wyjc"));

	templateBuilder.Append("\">网页教程</a></li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("pmjc"));

	templateBuilder.Append("\">平面教程</a></li>\r\n            <li><a href=\"");
	templateBuilder.Append(linkurl("ymxz"));

	templateBuilder.Append("\">源码下载</a></li>\r\n            \r\n        </ul>\r\n      </div>\r\n      <div class=\"search right-box\">\r\n        <input id=\"keywords\" name=\"keywords\" class=\"input\" type=\"text\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" placeholder=\"输入回车搜索\" x-webkit-speech=\"\" />\r\n        <input class=\"submit\" type=\"submit\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" value=\"搜索\" />\r\n      </div>\r\n      \r\n    </div>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n  <!--右边-->\r\n  <div class=\"list-right\">\r\n    <div class=\"sidebar-box\">\r\n      <div class=\"line30\"></div>\r\n      <h3>栏目导航</h3>\r\n      <ul class=\"navbar\">\r\n        ");
	DataTable contentlist = get_article_list(channel, 0, 0, "status=0");

	foreach(DataRow dr in contentlist.Rows)
	{

	templateBuilder.Append("\r\n        <li>\r\n          <h4><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(dr["call_index"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></h4>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        <li>\r\n          <h4><a href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a></h4>\r\n        </li>\r\n        <li>\r\n          <h4><a href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a></h4>\r\n        </li>\r\n      </ul>\r\n      <div class=\"line20\"></div>\r\n      <h3>客户服务</h3>\r\n      <div class=\"sidebar-txt\">\r\n        <p><strong>");
	templateBuilder.Append(Utils.ObjectToStr(site.company));
	templateBuilder.Append("</strong></p>\r\n        <p>地址：");
	templateBuilder.Append(Utils.ObjectToStr(site.address));
	templateBuilder.Append("</p>\r\n        <p>电话：");
	templateBuilder.Append(Utils.ObjectToStr(site.tel));
	templateBuilder.Append("</p>\r\n        <p>E-mail：");
	templateBuilder.Append(Utils.ObjectToStr(site.email));
	templateBuilder.Append("</p>\r\n        <p>新浪微博：http://weibo.com/dtcms</p>\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <!--/右边-->\r\n  \r\n  <!--左边-->\r\n  <div class=\"list-auto\">\r\n    <div class=\"ntitle\">\r\n      <h2>\r\n        <a href=\"javascript:;\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</a>\r\n      </h2>\r\n      <span>当前位置：<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a> &gt; ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" &gt; ");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</span>\r\n    </div>\r\n    \r\n    <div class=\"entry\">\r\n      ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n    </div>\r\n    \r\n    <!--分享-->\r\n    ");

	templateBuilder.Append("  <!-- JiaThis Button BEGIN --> \r\n  <div id=\"ckepop\">\r\n      <span class=\"jiathis_txt\">分享到：</span>\r\n      <a class=\"jiathis_button_tqq\">腾讯</a>\r\n      <a class=\"jiathis_button_tsina\">新浪</a>\r\n      <a class=\"jiathis_button_renren\">人人网</a>\r\n      <a class=\"jiathis_button_email\">邮件</a>\r\n      <a class=\"jiathis_button_fav\">收藏夹</a>\r\n      <a class=\"jiathis_button_copy\">复制网址</a> \r\n      <a href=\"http://www.jiathis.com/share/?uid=90225\" class=\"jiathis jiathis_txt jiathis_separator jtico jtico_jiathis\" target=\"_blank\">更多</a> \r\n      <a class=\"jiathis_counter_style\"></a> \r\n  </div> \r\n  <!-- JiaThis Button END -->\r\n  <script type=\"text/javascript\">var jiathis_config={data_track_clickback:true};</");
	templateBuilder.Append("script> \r\n  <script type=\"text/javascript\" src=\"http://v2.jiathis.com/code/jia.js?uid=1336353133859589\" charset=\"utf-8\"></");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n    <!--/分享-->\r\n    \r\n  </div>\r\n  <!--/左边-->\r\n  \r\n</div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer clearfix\">\r\n  <div class=\"foot-nav\">\r\n    <a target=\"_blank\" href=\"/index.html\">首 页</a>|\r\n      <a target=\"_blank\" href=\"#\">关于我们</a>|\r\n      <a target=\"_blank\" href=\"");
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

	templateBuilder.Append("\">源码下载</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a>\r\n  </div>\r\n  <div class=\"copyright\">\r\n    <p>版权所有 ");
	templateBuilder.Append(site.company.ToString());

	templateBuilder.Append(" 粤ICP备11064298号 版本号：");
	templateBuilder.Append(Utils.GetVersion().ToString());

	templateBuilder.Append(" </p>\r\n    <p>Copyright &copy; 2015-  Corporation,All Rights Reserved.</p>\r\n    <p><script src=\"\" language=\"javascript\"></");
	templateBuilder.Append("script></p>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
