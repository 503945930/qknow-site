<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/11/2 星期一 下午 8:19:32.
		本页面代码由DTcms模板引擎生成于 2015/11/2 星期一 下午 8:19:32. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" rel=\"stylesheet\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/js/jquery.flexslider-min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/js/index.js\"></");
	templateBuilder.Append("script>\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/css/index.css\" />\r\n    <style type=\"text/css\" media=\"screen\">\r\n        #slider .slider-right .slider-content {\r\n            -webkit-animation: slideInUp 1s;\r\n            animation: slideInUp 1s;\r\n        }\r\n        #content .center{width:1000px;}\r\n    </style>\r\n\r\n</head>\r\n\r\n<body>\r\n    <!--Header-->\r\n    ");

	templateBuilder.Append("<link href=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\" />\r\n<div class=\"header\">\r\n  <div class=\"header-wrap\">\r\n    <div class=\"section\">\r\n      <div class=\"left-box\">\r\n        <a class=\"logo\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</a>\r\n        <ul class=\"nav\">\r\n            <li><a href=\"/index.html\" target=\"_blank\" class=\"letter\">首页</a></li>\r\n            <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a></li>             \r\n            <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("wytx"));

	templateBuilder.Append("\"  >网页特效</a></li>\r\n            <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("wymb"));

	templateBuilder.Append("\">网页模板</a></li>\r\n            <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("wyjc"));

	templateBuilder.Append("\">网页教程</a></li>\r\n            <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("pmjc"));

	templateBuilder.Append("\">平面教程</a></li>\r\n            <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("ymxz"));

	templateBuilder.Append("\">源码下载</a></li>\r\n            \r\n        </ul>\r\n      </div>\r\n      <div class=\"search right-box\">\r\n        <input id=\"keywords\" name=\"keywords\" class=\"input\" type=\"text\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" placeholder=\"输入回车搜索\" x-webkit-speech=\"\" />\r\n        <input class=\"submit\" type=\"submit\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" value=\"搜索\" />\r\n      </div>\r\n      \r\n    </div>\r\n  </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n    $(function(){\r\n        $(\".header-wrap .left-box .nav li a\").hover(function(){\r\n            $(this).addClass('animated jello');\r\n        },function(){\r\n            $(this).removeClass('animated jello');\r\n            //$('.header-wrap .left-box .nav li ').removeClass('animated bounceOutLeft');\r\n            //$(this).addClass('animated bounceInRight');\r\n        });\r\n\r\n\r\n      \r\n\r\n        scrollTop();\r\n        \r\n\r\n    \r\n\r\n    });\r\n\r\n    //动态添加滚动到顶部\r\n    function scrollTop() {\r\n        var b = $(\"body\"),\r\n           c = $(window),\r\n           d = $('<div class=\"back2top\"></div>').appendTo(b);\r\n        c.scroll(function () {\r\n            c.scrollTop() > 100 ? d.addClass(\"scrolled\") : d.removeClass(\"scrolled\")\r\n        }), b.on(\"click\", \".back2top\", function () {\r\n            $(\"html,body\").animate({\r\n                scrollTop: 0\r\n            }, 600)\r\n        })\r\n    }\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n    <!--/Header-->\r\n\r\n\r\n    <div id=\"slider\">\r\n        <div class=\"center clearfix\">\r\n            <div class=\"slider-left\">\r\n\r\n                ");
	DataTable listCarousel = get_article_list(5, "status=0 and  is_hot=1","id");

	int dr__loop__id=0;
	foreach(DataRow dr in listCarousel.Rows)
	{
		dr__loop__id++;


	if (dr__loop__id==1)
	{

	templateBuilder.Append("\r\n                <div class=\"slider-thumbnail current\">\r\n                    <div class=\"bg-tile\">\r\n                        <div class=\"bg-img\" style=\"-webkit-transform: none; transform: none;\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"500\" height=\"300\" />\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"bg-tile\">\r\n                        <div class=\"bg-img\" style=\"-webkit-transform: none; transform: none;\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"500\" height=\"300\" />\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"bg-tile\">\r\n                        <div class=\"bg-img\" style=\"-webkit-transform: none; transform: none;\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"500\" height=\"300\" />\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"bg-tile\">\r\n                        <div class=\"bg-img\" style=\"-webkit-transform: none; transform: none;\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"500\" height=\"300\" />\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                <div class=\"slider-thumbnail\">\r\n                    <div class=\"bg-tile\">\r\n                        <div class=\"bg-img\" style=\"-webkit-transform: none; transform: none;\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"500\" height=\"300\" />\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"bg-tile\">\r\n                        <div class=\"bg-img\" style=\"-webkit-transform: none; transform: none;\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"500\" height=\"300\" />\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"bg-tile\">\r\n                        <div class=\"bg-img\" style=\"-webkit-transform: none; transform: none;\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"500\" height=\"300\" />\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"bg-tile\">\r\n                        <div class=\"bg-img\" style=\"-webkit-transform: none; transform: none;\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"500\" height=\"300\" />\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n               \r\n\r\n\r\n            </div>\r\n            <div class=\"slider-right\">\r\n\r\n\r\n                ");
	int drr__loop__id=0;
	foreach(DataRow drr in listCarousel.Rows)
	{
		drr__loop__id++;


	if (drr__loop__id==1)
	{

	templateBuilder.Append("\r\n                <div class=\"slider-content current\">\r\n                    <h1><a title=\"" + Utils.ObjectToStr(drr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(drr["title"]) + "</a></h1>\r\n                    <div class=\"slidertext\">\r\n                        <p>\r\n                            " + Utils.ObjectToStr(drr["zhaiyao"]) + "\r\n                        </p>\r\n                    </div>\r\n                    <div class=\"sliderfooter\">\r\n                        <a class=\"sliderlink\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("\">阅读全部</a>\r\n                    </div>\r\n                </div>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                <div class=\"slider-content\">\r\n                    <h1><a title=\"" + Utils.ObjectToStr(drr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(drr["title"]) + "</a></h1>\r\n                    <div class=\"slidertext\">\r\n                        <p>\r\n                            " + Utils.ObjectToStr(drr["zhaiyao"]) + "\r\n                        </p>\r\n                    </div>\r\n                    <div class=\"sliderfooter\">\r\n                        <a class=\"sliderlink\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("\">阅读全部</a>\r\n                    </div>\r\n                </div>\r\n                ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n               \r\n\r\n            </div>\r\n            <div class=\"slider-dots\">\r\n               \r\n            </div>\r\n            <a href=\"javascript:;\" id=\"prev\" class=\"slider-nav slider-prev\"></a>\r\n            <a href=\"javascript:;\" id=\"next\" class=\"slider-nav slider-next\"></a>\r\n        </div>\r\n    </div>\r\n    <div id=\"content\">\r\n        <div class=\"main\">\r\n            <div class=\"center\">\r\n                <ul id=\"indexcat\" class=\"clearfix\">\r\n                    <li class=\"menucat\">置顶文章：</li>\r\n                  \r\n                </ul>\r\n                <ul class=\"grid effect-2 articles clearfix\" id=\"grid\">\r\n\r\n                    ");
	DataTable nlist = get_article_list(12, "status=0 and  is_top=1","id");

	templateBuilder.Append("\r\n                    <!--使用foreach循环输出-->\r\n                    ");
	foreach(DataRow dr in nlist.Rows)
	{

	templateBuilder.Append("\r\n                    <li class=\"post post-width-thumbnail\" style=\"-webkit-transition: transform 0.5s, opacity 0.5s; transition: transform 0.5s, opacity 0.5s;\">\r\n                        <div class=\"post-thumbnail\">\r\n                            <div class=\"overlay\">\r\n                                <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" rel=\"bookmark\"></a>\r\n                            </div>\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\" width=\"320\" height=\"200\" />\r\n                        </div>\r\n                        <div class=\"post-body\">\r\n                            <h2 class=\"post-title\">\r\n                                <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" rel=\"bookmark\">\r\n                                    " + Utils.ObjectToStr(dr["title"]) + "\r\n                                </a>\r\n                            </h2>\r\n                            <div  class=\"post-content\" >\r\n                                ");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(dr["zhaiyao"]),130));

	templateBuilder.Append("...\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n                  \r\n                </ul>\r\n\r\n              \r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Footer-->\r\n    ");

	templateBuilder.Append("\r\n\r\n<div class=\"customer\">\r\n    <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=2190679807&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:2190679807:51\" alt=\"点击联系客服\" title=\"点击联系客服\" /></a>\r\n</div>\r\n<div class=\"customer2\">\r\n    <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=2190679807&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:2190679807:51\" alt=\"点击联系客服\" title=\"点击联系客服\" /></a>\r\n</div>\r\n<div class=\"customer3\">\r\n    <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=3161894345&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:3161894345:51\" alt=\"点击联系客服\" title=\"点击联系客服\" /></a>\r\n</div>\r\n<div class=\"customer4\">\r\n    <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=3161894345&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:3161894345:51\" alt=\"点击联系客服\" title=\"点击联系客服\" /></a>\r\n</div>\r\n<div class=\"footer clearfix\">\r\n  <div class=\"foot-nav\">\r\n    <a target=\"_blank\" href=\"/index.html\">首 页</a>|\r\n      <a target=\"_blank\" href=\"");
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

	templateBuilder.Append(" 渝ICP备12001141号-1 </p>\r\n    <p>Copyright &copy; 2015-  Corporation,All Rights Reserved.</p>   \r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n    <!--/Footer-->\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            $(\".focusbox\").flexslider({\r\n                directionNav: false,\r\n                pauseOnAction: false\r\n            });\r\n        });\r\n        $(\".nav li a\").eq(0).addClass('animated jello').css(\"color\", \"#fff\");\r\n      \r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
