<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/10/20 星期二 上午 12:04:17.
		本页面代码由DTcms模板引擎生成于 2015/10/20 星期二 上午 12:04:17. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/js/jquery.flexslider-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n    \r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a  href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯<em></em></a>\r\n    </h2>\r\n  <p class=\"new_title\">\r\n      <!--类别-->\r\n      ");
	DataTable newsCList = get_category_child_list("news",0);

	int ncdr__loop__id=0;
	foreach(DataRow ncdr in newsCList.Rows)
	{
		ncdr__loop__id++;


	if (ncdr__loop__id==1)
	{

	templateBuilder.Append("\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(ncdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(ncdr["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(ncdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(ncdr["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n      <!--/类别-->\r\n    </p>\r\n  </div>\r\n    \r\n  <div class=\"wrapper clearfix\">\r\n    <div class=\"main-left\">\r\n      <div class=\"focusbox\">\r\n        <ul class=\"slides\">\r\n          ");
	DataTable focusNews = get_article_list("news", 0, 8, "status=0 and is_slide=1 and img_url<>''");

	foreach(DataRow dr in focusNews.Rows)
	{

	templateBuilder.Append("\r\n          <li>\r\n            <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n              <span class=\"note-bg\"></span>\r\n              <span class=\"note-txt\">" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n              <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n            </a>\r\n          </li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    \r\n    <div class=\"main-left\" style=\"margin-right:0;\">\r\n      <ul class=\"txt-list\">\r\n        ");
	DataTable newsList = get_article_list("news", 0, 9, "status=0");

	int newdr__loop__id=0;
	foreach(DataRow newdr in newsList.Rows)
	{
		newdr__loop__id++;


	if (newdr__loop__id==1)
	{

	templateBuilder.Append("\r\n        <li class=\"tit\">\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <li>\r\n         <span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n          <a title=\"" + Utils.ObjectToStr(newdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(newdr["title"]) + "</a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n    <div class=\"sidebar-right\" style=\"margin-left:15px;\">\r\n      <ul class=\"img-list ilist\">\r\n        ");
	DataTable topNewsList = get_article_list("news", 0, 2, "status=0 and is_top=1 and img_url<>''");

	foreach(DataRow dr in topNewsList.Rows)
	{

	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n            ");
	if (Utils.ObjectToStr(dr["is_top"])=="1")
	{

	templateBuilder.Append("\r\n            <span class=\"abs-txt\">头条</span>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            <span class=\"abs-bg\"></span>\r\n            <span class=\"txt1\">" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n            <span class=\"txt2\">\r\n              <i>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</i>\r\n              <p>" + Utils.ObjectToStr(dr["zhaiyao"]) + "</p>\r\n            </span>\r\n            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n          </a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\"section clearfix\">\r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a href=\"");
	templateBuilder.Append(linkurl("wytx"));

	templateBuilder.Append("\">网页特效<em></em></a>\r\n    </h2>\r\n    <p class=\"new_title\">\r\n      <!--类别-->\r\n      ");
	DataTable wytx_photoCList = get_category_child_list("wytx",0);

	int wytx__loop__id=0;
	foreach(DataRow wytx in wytx_photoCList.Rows)
	{
		wytx__loop__id++;


	if (wytx__loop__id==1)
	{

	templateBuilder.Append("\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("wytx_list",Utils.ObjectToStr(wytx["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(wytx["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("wytx_list",Utils.ObjectToStr(wytx["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(wytx["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n      <!--/类别-->\r\n    </p>\r\n  </div>\r\n  <div class=\"wrapper clearfix\">\r\n    <div class=\"photo-list ilist\">\r\n      <ul>\r\n        ");
	DataTable wytx_redPhoto = get_article_list("wytx", 0, 6, "status=0");

	int wytxdr__loop__id=0;
	foreach(DataRow wytxdr in wytx_redPhoto.Rows)
	{
		wytxdr__loop__id++;


	templateBuilder.Append("\r\n        <li class=\"col-");
	templateBuilder.Append(Utils.ObjectToStr(wytxdr__loop__id));
	templateBuilder.Append("\">\r\n          <a title=\"" + Utils.ObjectToStr(wytxdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("wytx_show",Utils.ObjectToStr(wytxdr["id"])));

	templateBuilder.Append("\">\r\n            <span class=\"abs-bg\"></span>\r\n            <span class=\"txt1\">" + Utils.ObjectToStr(wytxdr["title"]) + "</span>\r\n            <span class=\"txt2\">\r\n              <p>" + Utils.ObjectToStr(wytxdr["add_time"]) + "</p>\r\n            </span>\r\n            <img src=\"" + Utils.ObjectToStr(wytxdr["img_url"]) + "\" />\r\n          </a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\"section clearfix\">\r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a href=\"");
	templateBuilder.Append(linkurl("wymb"));

	templateBuilder.Append("\">网页模板<em></em></a>\r\n    </h2>\r\n    <p class=\"new_title\">\r\n      <!--类别-->\r\n      ");
	DataTable wymb_photoCList = get_category_child_list("wymb",0);

	int wymb__loop__id=0;
	foreach(DataRow wymb in wymb_photoCList.Rows)
	{
		wymb__loop__id++;


	if (wymb__loop__id==1)
	{

	templateBuilder.Append("\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("wymb_list",Utils.ObjectToStr(wymb["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(wymb["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("wymb_list",Utils.ObjectToStr(wymb["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(wymb["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n      <!--/类别-->\r\n    </p>\r\n  </div>\r\n  <div class=\"wrapper clearfix\">\r\n    <div class=\"photo-list ilist\">\r\n      <ul>\r\n        ");
	DataTable wymb_redPhoto = get_article_list("wymb", 0, 6, "status=0");

	int wymbdr__loop__id=0;
	foreach(DataRow wymbdr in wymb_redPhoto.Rows)
	{
		wymbdr__loop__id++;


	templateBuilder.Append("\r\n        <li class=\"col-");
	templateBuilder.Append(Utils.ObjectToStr(wymbdr__loop__id));
	templateBuilder.Append("\">\r\n          <a title=\"" + Utils.ObjectToStr(wymbdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("wymb_show",Utils.ObjectToStr(wymbdr["id"])));

	templateBuilder.Append("\">\r\n            <span class=\"abs-bg\"></span>\r\n            <span class=\"txt1\">" + Utils.ObjectToStr(wymbdr["title"]) + "</span>\r\n            <span class=\"txt2\">\r\n              <p>" + Utils.ObjectToStr(wymbdr["add_time"]) + "</p>\r\n            </span>\r\n            <img src=\"" + Utils.ObjectToStr(wymbdr["img_url"]) + "\" />\r\n          </a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\"section clearfix\">\r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a href=\"");
	templateBuilder.Append(linkurl("wyjc"));

	templateBuilder.Append("\">网页教程<em></em></a>\r\n    </h2>\r\n    <p class=\"new_title\">\r\n      <!--类别-->\r\n      ");
	DataTable wyjc_photoCList = get_category_child_list("wyjc",0);

	int wyjc__loop__id=0;
	foreach(DataRow wyjc in wyjc_photoCList.Rows)
	{
		wyjc__loop__id++;


	if (wyjc__loop__id==1)
	{

	templateBuilder.Append("\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("wyjc_list",Utils.ObjectToStr(wyjc["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(wyjc["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("wyjc_list",Utils.ObjectToStr(wyjc["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(wyjc["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n      <!--/类别-->\r\n    </p>\r\n  </div>\r\n  <div class=\"wrapper clearfix\">\r\n    <div class=\"photo-list ilist\">\r\n      <ul>\r\n        ");
	DataTable wyjc_redPhoto = get_article_list("wyjc", 0, 6, "status=0");

	int wyjcdr__loop__id=0;
	foreach(DataRow wyjcdr in wyjc_redPhoto.Rows)
	{
		wyjcdr__loop__id++;


	templateBuilder.Append("\r\n        <li class=\"col-");
	templateBuilder.Append(Utils.ObjectToStr(wyjcdr__loop__id));
	templateBuilder.Append("\">\r\n          <a title=\"" + Utils.ObjectToStr(wyjcdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("wyjc_show",Utils.ObjectToStr(wyjcdr["id"])));

	templateBuilder.Append("\">\r\n            <span class=\"abs-bg\"></span>\r\n            <span class=\"txt1\">" + Utils.ObjectToStr(wyjcdr["title"]) + "</span>\r\n            <span class=\"txt2\">\r\n              <p>" + Utils.ObjectToStr(wyjcdr["add_time"]) + "</p>\r\n            </span>\r\n            <img src=\"" + Utils.ObjectToStr(wyjcdr["img_url"]) + "\" />\r\n          </a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class=\"section clearfix\">\r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a href=\"");
	templateBuilder.Append(linkurl("pmjc"));

	templateBuilder.Append("\">平面教程<em></em></a>\r\n    </h2>\r\n    <p class=\"new_title\">\r\n      <!--类别-->\r\n      ");
	DataTable pmjc_photoCList = get_category_child_list("pmjc",0);

	int pmjc__loop__id=0;
	foreach(DataRow pmjc in pmjc_photoCList.Rows)
	{
		pmjc__loop__id++;


	if (pmjc__loop__id==1)
	{

	templateBuilder.Append("\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("pmjc_list",Utils.ObjectToStr(pmjc["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(pmjc["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("pmjc_list",Utils.ObjectToStr(pmjc["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(pmjc["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n      <!--/类别-->\r\n    </p>\r\n  </div>\r\n  <div class=\"wrapper clearfix\">\r\n    <div class=\"photo-list ilist\">\r\n      <ul>\r\n        ");
	DataTable pmjc_redPhoto = get_article_list("pmjc", 0, 6, "status=0");

	int pmjcdr__loop__id=0;
	foreach(DataRow pmjcdr in pmjc_redPhoto.Rows)
	{
		pmjcdr__loop__id++;


	templateBuilder.Append("\r\n        <li class=\"col-");
	templateBuilder.Append(Utils.ObjectToStr(pmjcdr__loop__id));
	templateBuilder.Append("\">\r\n          <a title=\"" + Utils.ObjectToStr(pmjcdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("pmjc_show",Utils.ObjectToStr(pmjcdr["id"])));

	templateBuilder.Append("\">\r\n            <span class=\"abs-bg\"></span>\r\n            <span class=\"txt1\">" + Utils.ObjectToStr(pmjcdr["title"]) + "</span>\r\n            <span class=\"txt2\">\r\n              <p>" + Utils.ObjectToStr(pmjcdr["add_time"]) + "</p>\r\n            </span>\r\n            <img src=\"" + Utils.ObjectToStr(pmjcdr["img_url"]) + "\" />\r\n          </a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"section clearfix\">\r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a href=\"");
	templateBuilder.Append(linkurl("ymxz"));

	templateBuilder.Append("\">源码下载<em></em></a>\r\n    </h2>\r\n    <p class=\"new_title\">\r\n      <!--类别-->\r\n      ");
	DataTable ymxzCList = get_category_child_list("ymxz",0);

	int ymxz__loop__id=0;
	foreach(DataRow ymxz in ymxzCList.Rows)
	{
		ymxz__loop__id++;


	if (ymxz__loop__id==1)
	{

	templateBuilder.Append("\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("ymxz_list",Utils.ObjectToStr(ymxz["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(ymxz["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("ymxz_list",Utils.ObjectToStr(ymxz["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(ymxz["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n      <!--/类别-->\r\n    </p>\r\n  </div>\r\n  <div class=\"wrapper clearfix\">\r\n    <ul class=\"img-list high ilist\">\r\n      ");
	DataTable ymxz_redDown = get_article_list("ymxz", 0, 5, "status=0");

	foreach(DataRow ymxz in ymxz_redDown.Rows)
	{

	templateBuilder.Append("\r\n      <li>\r\n        <a title=\"" + Utils.ObjectToStr(ymxz["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("ymxz_show",Utils.ObjectToStr(ymxz["id"])));

	templateBuilder.Append("\">\r\n          <div class=\"img-box\">\r\n            <img src=\"" + Utils.ObjectToStr(ymxz["img_url"]) + "\" />\r\n          </div>\r\n          <div class=\"info\">\r\n            <h3>" + Utils.ObjectToStr(ymxz["title"]) + "</h3>\r\n            <span>\r\n              <i>下载：<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_attach_count&id=" + Utils.ObjectToStr(ymxz["id"]) + "&view=count\"></");
	templateBuilder.Append("script>次</i>\r\n              <p>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(ymxz["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</p>\r\n            </span>\r\n          </div>\r\n        </a>\r\n      </li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n  </div>\r\n</div>\r\n\r\n<!--<div class=\"section clearfix\">\r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接<em></em></a>\r\n    </h2>\r\n    <p>\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">申请链接</a>\r\n    </p>\r\n  </div>\r\n  <div class=\"wrapper link-box\">\r\n    <div class=\"txt\">\r\n      ");
	DataTable linkList1 = get_plugin_method("DTcms.Web.Plugin.Link", "link", "get_link_list", 0, "is_lock=0 and is_image=0 and is_red=1");

	foreach(DataRow dr in linkList1.Rows)
	{

	templateBuilder.Append("\r\n        <a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a> | \r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <ul class=\"img\">\r\n      ");
	DataTable linkList2 = get_plugin_method("DTcms.Web.Plugin.Link", "link", "get_link_list", 10, "is_lock=0 and is_image=1 and is_red=1");

	foreach(DataRow dr in linkList2.Rows)
	{

	templateBuilder.Append("\r\n        <li><a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></a></li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n  </div>\r\n</div>-->\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer clearfix\">\r\n  <div class=\"foot-nav\">\r\n    <a target=\"_blank\" href=\"#\">首 页</a>|\r\n      <a target=\"_blank\" href=\"#\">关于我们</a>|\r\n      <a target=\"_blank\" href=\"#\">新闻资讯</a>|\r\n      <a target=\"_blank\" href=\"#\">视频专区</a>|\r\n      <a target=\"_blank\" href=\"#\">资源下载</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片分享</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a>\r\n  </div>\r\n  <div class=\"copyright\">\r\n    <p>版权所有 ");
	templateBuilder.Append(site.company.ToString());

	templateBuilder.Append(" 粤ICP备11064298号 DTcms版本号：");
	templateBuilder.Append(Utils.GetVersion().ToString());

	templateBuilder.Append(" </p>\r\n    <p>Copyright &copy; 20015-2016  Corporation,All Rights Reserved.</p>\r\n    <p><script src=\"\" language=\"javascript\"></");
	templateBuilder.Append("script></p>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            $(\".focusbox\").flexslider({\r\n                directionNav: false,\r\n                pauseOnAction: false\r\n            });\r\n        });\r\n        \r\n\r\n</");
	templateBuilder.Append("script>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
