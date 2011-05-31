<html>
<head>
<link rel="stylesheet" href="/css/cocinando/cocinandolp.css" type="text/css" />
<link rel="stylesheet" href="/css/cocinando/tabs.css" type="text/css" />
<!--[if gte IE 6]><link rel="stylesheet" href="/css/cocinando/cocinandolp-ie.css" type="text/css" /><![endif]--> 
<link rel="stylesheet" href="/css/menu.css" type="text/css" />
<link rel="stylesheet" href="/css/cocinando/flowplayerclp.css" type="text/css" />
<link rel="stylesheet" href="/css/cocinando/flowplayerclp.css" type="text/css" />
<link rel="stylesheet" href="/js/cocinando/jquery.autocomplete.css" type="text/css" />

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="{$smarty.const.VIDEOURL}/flowplayer.js"></script>
<script type="text/javascript" src="{$smarty.const.VIDEOURL}/flowplayer.playlist.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript" src="/js/cocinando/jquery.autocomplete2.js"></script>

<!-- Tabs JQuery -->
<script type="text/javascript">
{literal}
$(document).ready(function() {
        $(".tab_content").hide();
        $("ul.tabs li:first").addClass("active").show();
        $(".tab_content:first").show();
        $("ul.tabs li").click(function() {
                $("ul.tabs li").removeClass("active");
                $(this).addClass("active");
                $(".tab_content").hide();
                var activeTab = $(this).find("a").attr("href");
                $(activeTab).fadeIn();
                return false;
        });
});
{/literal}
</script>
<!-- Terminan las tabs jquery -->

<!-- Configuracion de las zonas -->
{$adserver_cocinando}
<!-- Fin definicion de zonas -->

<!-- google analytics -->
  {literal}<script type="text/javascript">
  var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
  document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
  </script>
  <script type="text/javascript">
  try {
  var pageTracker = _gat._getTracker("UA-9793390-1");
  pageTracker._trackPageview();
  } catch(err) {}</script>
  {/literal}
<!-- /google analytics -->

<!-- Config Flowplayer -->
<script>
{literal}
$(function() {
        var linkurl = 'http://www.laprensa.com.ni';
        $f("player", "{/literal}{$smarty.const.VIDEOURL}{literal}/flowplayer.swf", {
                key: '#$5d7745faef962532c52',
                logo: {
		url: 'http://www3.laprensa.com.ni/imgs/LogoCocinando.png',
		fullscreenOnly: false,
                top: '13%',
                left: '93%'
       	        },
                clip: {url: '{/literal}{$smarty.const.CLIPSCOCINANDO}/{$clip_ini}{literal}', autoplay:false}
        , autoplay:false}).playlist("#playlist");
        
});
{/literal}
</script>
<!-- End config flowplayer -->

<script>
{literal}
{literal}
function findValue(li) {
 if( li == null ) return alert("No hay coincidencias!");
 if( !!li.extra ) var sValue = li.extra[0];
 else var sValue = li.selectValue;}
 function selectItem(li) {
   findValue(li);
 }
 function lookupLocal(){
   var oSuggest = $("#query")[0].autocompleter;
   oSuggest.findValue();
   return false;
 }
{/literal}
</script>

<title>Cocinando con La Prensa{if $title} - {$title}{/if}</title>
</head>
<body>
<div align="center">
  <div id="contenido">
  <div id="header">
    <a href="/cocinando"><img src="/imgs/cocinandolp/cocinando.png" class="logo" width="127" height="108" border="0" /></a>
    <div class="menulateral" style="z-index:10;">
      <a class="itemmenu{if $uri=='portada'} selected{/if}" href="/{if $edicion}{$edicion.edicion|date_format:"%Y/%m/%d/"}{/if}">Portada</a>
      {section name=i loop=$secciones}
      <a class="itemmenu{if $uri==$secciones[i].uri} selected{/if}{*if $smarty.section.i.last} ultimo{/if*}" href="/{$edicion.edicion|date_format:"%Y/%m/%d"}/{$secciones[i].uri}">{$secciones[i].seccion}</a>
      {/section}
      <a class="itemmenu" href="{$smarty.const.URL}/minoticia">Mi Noticia</a>
      <a class="itemmenu" href="{$smarty.const.URL}/tv">La Prensa TV</a>
      <ul id="menu">
        <li style="z-index:10;"><a class="itemmenu" href="#" style="background-color:#0d72b9;color:#fff;">Otras secciones</a>
                <ul>
                  {section name=i loop=$otrassecciones}
                    <li>
                      <a class="itemmenu{if $uri==$secciones[i].uri} selected{/if}{*if $smarty.section.i.last} ultimo{/if*}" href="/{$edicion.edicion|date_format:"%Y/%m/%d"}/{$otrassecciones[i].uri}">{$otrassecciones[i].seccion}</a>
                    </li>
                  {/section}
                    <li><a class="itemmmenu ultimo" href="{$smarty.const.URL}/blog">Blog</a></li>
                </ul>
        </li>
      </ul>
    </div>
    {if $banner_superior_cocinando_728_90}<div class="banner_superior">{$banner_superior_cocinando_728_90}</div>{/if}
    <div class="limpiar">&nbsp;</div>
