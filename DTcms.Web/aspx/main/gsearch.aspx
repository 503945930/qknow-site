<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/11/1 星期日 下午 8:54:31.
		本页面代码由DTcms模板引擎生成于 2015/11/1 星期日 下午 8:54:31. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "goods";
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

	templateBuilder.Append("', '#keywords');\" value=\"搜索\" />\r\n      </div>\r\n      \r\n    </div>\r\n  </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n    $(function(){\r\n        $(\".header-wrap .left-box .nav li a\").hover(function(){\r\n            $(this).addClass('animated jello');\r\n        },function(){\r\n            $(this).removeClass('animated jello');\r\n            //$('.header-wrap .left-box .nav li ').removeClass('animated bounceOutLeft');\r\n            //$(this).addClass('animated bounceInRight');\r\n        });\r\n\r\n        \r\n\r\n    \r\n\r\n    });\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n\r\n  <div class=\"wrapper auto clearfix\">\r\n    ");
	string category_nav = get_category_menu("goods_list", category_id);

	templateBuilder.Append("\r\n    <div class=\"curr-nav\">当前位置：<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a> &gt; <a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">购物商城</a>");
	templateBuilder.Append(Utils.ObjectToStr(category_nav));
	templateBuilder.Append("</div>\r\n    <!--C#代码-->\r\n    ");
	      string orderby="add_time desc,id asc";
	      string strBy=DTRequest.GetQueryString("orderby");
	      if(strBy=="click"){
	        orderby="click desc";
	      }else if(strBy=="min"){
	        orderby="sell_price asc";
	      }else if(strBy=="max"){
	        orderby="sell_price desc";
	      }
	      string strwhere="status=0";
	      int minPrice=DTRequest.GetQueryInt("min_price",0);
	      if(minPrice>0){
	        strwhere+="and sell_price>="+minPrice;
	      }
	      int maxPrice=DTRequest.GetQueryInt("max_price",0);
	      if(maxPrice>0){
	        strwhere+="and sell_price<="+maxPrice;
	      }
	      Dictionary<string,string> dicSpecIds=new Dictionary<string,string>();
	      for (int i = 0; i < Request.QueryString.AllKeys.Length; i++)
	      {
	        string paramKey=Request.QueryString.GetKey(i).ToString();
	        int paramValue=Utils.StrToInt(Request.QueryString[i].ToString(),0);
	        if(paramKey.StartsWith("s_") && paramValue>0)
	        {
	          dicSpecIds.Add(paramKey,paramValue.ToString());
	        }
	      }
	    

	templateBuilder.Append("\r\n    <!--/C#代码-->\r\n    <div class=\"screen-box\">\r\n      <dl>\r\n        <dt>分类：</dt>\r\n        <dd>\r\n          ");
	if (category_id==0)
	{

	templateBuilder.Append("\r\n            <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch"));

	templateBuilder.Append("\">全部</a>\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("gsearch"));

	templateBuilder.Append("\">全部</a>\r\n          ");
	}	//end for if

	DataTable categoryList = get_category_child_list(channel,0);

	foreach(DataRow cdr in categoryList.Rows)
	{

	if (category_id==Utils.StrToInt(Utils.ObjectToStr(cdr["id"]), 0))
	{

	templateBuilder.Append("\r\n              <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr["title"]) + "</a>\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n              <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr["title"]) + "</a>\r\n            ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n        </dd>\r\n      </dl>\r\n      \r\n      <!--规格列表-->\r\n      ");
	DataTable specList = get_article_spec_parent(channel, model.id);

	foreach(DataRow dr1 in specList.Rows)
	{

	templateBuilder.Append("\r\n      <dl>\r\n        <dt>" + Utils.ObjectToStr(dr1["title"]) + "：</dt>\r\n        <dd>\r\n          ");
	DataTable subList = get_article_spec_child(Utils.StrToInt(Utils.ObjectToStr(dr1["id"]), 0));

	string tempKey = "s_"+Utils.ObjectToStr(dr1["id"]);

	if (!dicSpecIds.ContainsKey(tempKey))
	{

	templateBuilder.Append("\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"s_"+Utils.ObjectToStr(dr1["id"])+"=0")));

	templateBuilder.Append("\">全部</a>\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"s_"+Utils.ObjectToStr(dr1["id"])+"=0")));

	templateBuilder.Append("\">全部</a>\r\n          ");
	}	//end for if

	foreach(DataRow dr2 in subList.Rows)
	{

	if (dicSpecIds.ContainsValue(Utils.ObjectToStr(dr2["id"])))
	{

	templateBuilder.Append("\r\n              <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"s_"+Utils.ObjectToStr(dr1["id"])+"="+Utils.ObjectToStr(dr2["id"]))));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr2["title"]) + "</a>\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n              <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"s_"+Utils.ObjectToStr(dr1["id"])+"="+Utils.ObjectToStr(dr2["id"]))));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr2["title"]) + "</a>\r\n            ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n        </dd>\r\n      </dl>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n      <!--/规格列表-->\r\n      \r\n      <!--价格区间-->\r\n      <dl>\r\n        <dt>价格：</dt>\r\n        <dd>\r\n          ");
	if (minPrice==0&&maxPrice==0)
	{

	templateBuilder.Append("\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">全部</a>\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">全部</a>\r\n          ");
	}	//end for if

	if (minPrice==0&&maxPrice==100)
	{

	templateBuilder.Append("\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=0&max_price=100&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">0-100元</a>\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=0&max_price=100&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">0-100元</a>\r\n          ");
	}	//end for if

	if (minPrice==101&&maxPrice==500)
	{

	templateBuilder.Append("\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=101&max_price=500&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">101-500元</a>\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=101&max_price=500&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">101-500元</a>\r\n          ");
	}	//end for if

	if (minPrice==501&&maxPrice==1000)
	{

	templateBuilder.Append("\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=501&max_price=1000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">501-1000元</a>\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=501&max_price=1000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">501-1000元</a>\r\n          ");
	}	//end for if

	if (minPrice==1001&&maxPrice==2000)
	{

	templateBuilder.Append("\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=1001&max_price=2000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">1001-2000元</a>\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=1001&max_price=2000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">1001-2000元</a>\r\n          ");
	}	//end for if

	if (minPrice==2000&&maxPrice==0)
	{

	templateBuilder.Append("\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=2000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">2000以上</a>\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price=2000&orderby="+strBy+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">2000以上</a>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </dd>\r\n      </dl>\r\n      <!--价格区间-->\r\n    </div>\r\n    \r\n    <div class=\"line15\"></div>\r\n    <!--列表排序-->\r\n    <div class=\"sort-box\">\r\n      ");
	if (strBy==""||strBy=="time")
	{

	templateBuilder.Append("\r\n      <a class=\"first selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=time"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">上架时间</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a class=\"first\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=time"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">上架时间</a>\r\n      ");
	}	//end for if

	if (strBy=="click")
	{

	templateBuilder.Append("\r\n      <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=click"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">按人气</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=click"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">按人气</a>\r\n      ");
	}	//end for if

	if (strBy=="max")
	{

	templateBuilder.Append("\r\n      <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=max"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">价格从高到低</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=max"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">价格从高到低</a>\r\n      ");
	}	//end for if

	if (strBy=="min")
	{

	templateBuilder.Append("\r\n      <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=min"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">价格从低到高</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("gsearch","?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby=min"+get_article_spec_param(dicSpecIds,"")));

	templateBuilder.Append("\">价格从低到高</a>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <!--/列表排序-->\r\n    \r\n    <div class=\"img-list2\">\r\n      <ul>\r\n        ");
	DataTable goodsList = get_article_list(channel,category_id,dicSpecIds,pagesize,page,strwhere,orderby,out totalcount);

	templateBuilder.Append("<!--数据-->\r\n        ");
	 pagelist = Utils.OutPageList(pagesize, page, totalcount, linkurl("gsearch", "?category_id="+category_id+"&min_price="+minPrice+"&max_price="+maxPrice+"&orderby="+strBy+"&page=__id__"+get_article_spec_param(dicSpecIds,"")), 8);

	templateBuilder.Append("<!--分页-->\r\n        ");
	foreach(DataRow dr in goodsList.Rows)
	{

	templateBuilder.Append("\r\n        <li>\r\n          <div class=\"wrap-box\">\r\n            <div class=\"img-box\">\r\n              <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                ");
	if (Utils.ObjectToStr(dr["is_red"])=="1")
	{

	templateBuilder.Append("\r\n                <div class=\"abs-txt\">推荐</div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n              </a>\r\n            </div>\r\n            <div class=\"info\">\r\n              <h3><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></h3>\r\n              <div class=\"col\">\r\n                <b>￥" + Utils.ObjectToStr(dr["market_price"]) + "</b>元\r\n              </div>\r\n              <div class=\"col\">\r\n                <i>库存：" + Utils.ObjectToStr(dr["stock_quantity"]) + "件</i>\r\n                市场价：<s>" + Utils.ObjectToStr(dr["sell_price"]) + "</s>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </li>\r\n        ");
	}	//end for if

	if (goodsList.Rows.Count==0)
	{

	templateBuilder.Append("\r\n        <div class=\"nodata\">暂时无法找到您想要的商品！</div>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n    \r\n    <!--页码列表-->\r\n    <div class=\"page-box\">\r\n      <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n    </div>\r\n    <!--/页码列表-->\r\n    \r\n  </div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("\r\n\r\n<div class=\"customer\">\r\n    <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=2190679807&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:2190679807:51\" alt=\"点击联系客服\" title=\"点击联系客服\" /></a>\r\n</div>\r\n\r\n<div class=\"footer clearfix\">\r\n  <div class=\"foot-nav\">\r\n    <a target=\"_blank\" href=\"/index.html\">首 页</a>|\r\n      <a target=\"_blank\" href=\"");
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
