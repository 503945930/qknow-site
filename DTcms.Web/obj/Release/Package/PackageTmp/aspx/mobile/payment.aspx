﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.payment" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/10/19 星期一 下午 6:39:17.
		本页面代码由DTcms模板引擎生成于 2015/10/19 星期一 下午 6:39:17. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>支付中心－");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/wy");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"main-box\">\r\n  <div class=\"section clearfix\">\r\n  ");
	if (action=="confirm")
	{

	templateBuilder.Append("\r\n    <!--确认订单-->\r\n    <form id=\"payForm\" name=\"payForm\" method=\"post\" action=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/payment/");
	templateBuilder.Append(Utils.ObjectToStr(payModel.api_path));
	templateBuilder.Append("/index.aspx\" target=\"_blank\">\r\n    <input id=\"pay_order_no\" name=\"pay_order_no\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(order_no));
	templateBuilder.Append("\" />\r\n    <input id=\"pay_order_amount\" name=\"pay_order_amount\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(order_amount));
	templateBuilder.Append("\" />\r\n    <input id=\"pay_user_name\" name=\"pay_user_name\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("\" />\r\n\r\n    ");
	if (order_type=="recharge")
	{

	templateBuilder.Append("\r\n    <!--充值订单-->\r\n    <input id=\"pay_subject\" name=\"pay_subject\" type=\"hidden\" value=\"账户充值\" />\r\n    <div class=\"main-tit\">\r\n      <h2>支付中心</h2>\r\n    </div>\r\n    <div class=\"inner-box\">\r\n      <div class=\"dl-list\">\r\n        <dl>\r\n          <dt>订 单 号：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(order_no));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>充值金额：</dt>\r\n          <dd>\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(order_amount));
	templateBuilder.Append(" 元\r\n          </dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>支付方式：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(payModel.title));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt></dt>\r\n          <dd><input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"btn\" value=\"确认支付\" /></dd>\r\n        </dl>\r\n      </div>\r\n    </div>\r\n    <!--/充值订单-->\r\n    ");
	}	//end for if

	if (order_type=="buygoods")
	{

	templateBuilder.Append("\r\n    <!--商品订单-->\r\n    <div class=\"main-tit\">\r\n      <h2>支付中心</h2>\r\n    </div>\r\n    <input id=\"pay_subject\" name=\"pay_subject\" type=\"hidden\" value=\"购买商品\" />\r\n    <div class=\"inner-box\">\r\n      <div class=\"dl-list\">\r\n        <dl>\r\n          <dt>订 单 号：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(order_no));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>收货人姓名：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.accept_name));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>送货地址：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.address));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>手机号码：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.mobile));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>固定电话：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.telphone));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>备注留言：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.message));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>支付金额：</dt>\r\n          <dd>\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(order_amount));
	templateBuilder.Append(" 元\r\n          </dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>支付方式：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(payModel.title));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt></dt>\r\n          <dd><input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"btn\" value=\"确认支付\" /></dd>\r\n        </dl>\r\n      </div>\r\n    </div>\r\n    <!--/商品订单-->\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    \r\n    </form>\r\n    <!--/确认订单-->\r\n  ");
	}	//end for if

	if (action=="succeed")
	{

	templateBuilder.Append("\r\n    <!--支付成功-->\r\n    <div class=\"main-tit\">\r\n      <h2>支付成功</h2>\r\n    </div>\r\n    <div class=\"inner-box\">\r\n      <div class=\"msg_tips\">\r\n        <div class=\"ico\"></div>\r\n        <div class=\"msg\">\r\n          <strong>支付成功啦！</strong>\r\n          <p>恭喜您，您的支付已经成功！</p>\r\n          <p>您可以点击这里进入<a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a>查看订单状态！</p>\r\n          <p>如有其它问题，请立即与我们客服人员联系。</p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <!--/支付成功-->\r\n  ");
	}	//end for if

	if (action=="error")
	{

	templateBuilder.Append("\r\n    <!--支付出错-->\r\n    <div class=\"main-tit\">\r\n      <h2>支付失败</h2>\r\n    </div>\r\n    <div class=\"inner-box\">\r\n      <div class=\"msg-tips\">\r\n        <div class=\"ico error\"></div>\r\n        <div class=\"msg\">\r\n          <strong>出错啦，支付失败！</strong>\r\n          <p>支付过程中发生意处错误！</p>\r\n          <p>您可以点击这里进入<a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a>查看订单状态！</p>\r\n          <p>如您确实已经支付，请立即与我们客服人员联系。</p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <!--/支付出错-->\r\n  ");
	}	//end for if

	if (action=="login")
	{

	templateBuilder.Append("\r\n    <!--用户未登录-->\r\n    <div class=\"main-tit\">\r\n      <h2>温馨提示</h2>\r\n    </div>\r\n    <div class=\"inner-box\">\r\n      <div class=\"msg-tips\">\r\n        <div class=\"ico warning\"></div>\r\n        <div class=\"msg\">\r\n          <strong>对不起，请登录后再进行支付！</strong>\r\n          <p>您尚未登录或已经超时啦！</p>\r\n          <p>如果您已是会员用户，请<a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">点击这里进行登录</a>！</p>\r\n          <p>如果您尚未成为我们会员，请<a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">点击这里注册</a>。</p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <!--/用户未登录-->\r\n  ");
	}	//end for if

	if (action=="recharge")
	{

	templateBuilder.Append("\r\n    <!--用户余额不足-->\r\n    <div class=\"main-tit\">\r\n      <h2>温馨提示</h2>\r\n    </div>\r\n    <div class=\"inner-box\">\r\n      <div class=\"msg-tips\">\r\n        <div class=\"ico warning\"></div>\r\n        <div class=\"msg\">\r\n          <strong>对不起，您的余额不足本次支付！</strong>\r\n          <p>由于您选择的是余额支付，请确定您的余额是否足够！</p>\r\n          <p>如果余额不足，请<a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">点击这里充值</a>后再进行后续支付！</p>\r\n          <p>如果有任何问题，请与我们客服取得联系。</p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <!--/用户余额不足-->\r\n  ");
	}	//end for if

	templateBuilder.Append("\r\n    \r\n  </div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
