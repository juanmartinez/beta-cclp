<html>
<head>
<link rel="stylesheet" href="/css/cocinando/cocinandolp.css" type="text/css" />
<link rel="stylesheet" href="/css/cocinando/tabs.css" type="text/css" />
<!--[if gte IE 6]><link rel="stylesheet" href="/css/cocinando/cocinandolp-ie.css" type="text/css" /><![endif]--> 
<link rel="stylesheet" href="/css/menu.css" type="text/css" />
<link rel="stylesheet" href="/css/cocinando/flowplayerclp.css" type="text/css" />
<link rel="stylesheet" href="/css/cocinando/flowplayerclp.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="{$smarty.const.VIDEOURL}/flowplayer.js"></script>
<script type="text/javascript" src="{$smarty.const.VIDEOURL}/flowplayer.playlist.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript">
{literal}
$(document).ready(function() {

	//Default Action
	$(".tab_content").hide(); //Hide all content
	$("ul.tabs li:first").addClass("active").show(); //Activate first tab
	$(".tab_content:first").show(); //Show first tab content
	
	//On Click Event
	$("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_content").hide(); //Hide all tab content
		var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active content
		return false;
	});

});
{/literal}
</script>

{$adserver_header}

<script>
{literal}
$(function() {
        // {/literal}{$smarty.const.VIDEOURL}{literal}/flowplayer.swf	
	// setup player 
	$f("player", "{/literal}{$smarty.const.VIDEOURL}{literal}/flowplayer.swf", {
		clip: {baseUrl: '{/literal}{$smarty.const.CDN_URL}{literal}/1297270900_filasRegistro.mov'}
	// playlist plugin 
	}).playlist("#playlist");
	
});
{/literal}
</script>

<title>Cocinando con La Prensa</title>
</head>
<body>
<div align="center">
  <div id="contenido">
  <div id="header">
    <img src="/imgs/cocinandolp/cocinando.png" class="logo" width="127" height="108" />
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
  {if $banner_superior_728_90}<div class="banner_superior">{$banner_superior_728_90}</div>{/if}
    <div class="limpiar">&nbsp;</div>
    <div id="right">
      <div align="center">
      {if $banner_derecho_160_600}{$banner_derecho_160_600}{/if}
     </div>
    </div>

    <div id="centro" align="center">
     
     <div class="busqueda"> 
       <div class="redes">
           <form>
             <input type="text" name="receta" />&nbsp;
             <input type="submit" class="submit" value="Buscar receta" />
           </form>
       </div>
       <img src="/imgs/cocinandolp/fb.png" />&nbsp;<img src="/imgs/cocinandolp/twitter.png" />
     </div>
     <div class="limpiar">&nbsp;</div>
     
     <div video="">  
      <a id="player" class="player plain">
      </a>
     <div class="limpiar">&nbsp;</div>
      
       <div id="playlist">

	<a href="{$smarty.const.CDN_URL}/video/1302220107_WPlagarto.mov">
		<img src="/imgs/cocinandolp/postre-frio.jpg" />
		<strong>Here is an item in the playlist</strong><br /><br />And a subtitle.		
		<em>0.22</em>
	</a>

	<a href="{$smarty.const.CDN_URL}/video/1301790812_VIDEOMARCHAS.mp4">
		<img src="/imgs/cocinandolp/postres-faciles2.jpg" />
		<strong>Here is an item in the playlist</strong><br /><br />And a subtitle.		
		<em>0.22</em>
	</a>

	<a href="{$smarty.const.CDN_URL}/video/1300498603_INSCRIDANI.mp4">
		<img src="/imgs/cocinandolp/recetas-de-postres.jpg" />
		<strong>Here is an item in the playlist</strong><br /><br />And a subtitle.		
		<em>0.22</em>
	</a>

	<a href="KimAronson-TwentySeconds64268.flv">
		<img src="/imgs/cocinandolp/postres.jpg" />
		<strong>Here is an item in the playlist</strong><br /><br />And a subtitle.		
		<em>0.22</em>
	</a>
	
	<a href="KimAronson-TwentySeconds67463.flv">
		<img src="/imgs/cocinandolp/postres-chocolate-avena.jpg" />
		<strong>Here is an item in the playlist</strong><br /><br />And a subtitle.		
		<em>0.22</em>
	</a>

	<a href="KimAronson-TwentySeconds65459.flv">
		<img src="/imgs/cocinandolp/bufet_postres.jpg" />
		<strong>Here is an item in the playlist</strong><br /><br />And a subtitle.		
		<em>0.22</em>
	</a>

	<a href="KimAronson-TwentySeconds70930.flv">
		<img src="/imgs/cocinandolp/postre-frio.jpg" />
		<strong>Item 1</strong><br /><br />And a subtitle.		
		<em>0.22</em>
	</a>	
     </div> 
     </div> 
    
     <div class="limpiar">&nbsp;</div>
     <!-- Bloque para el tab de las categorias -->
        
     <div class="container">
        <ul class="tabs">
          <li><a href="#tab1">Postres</a></li>
          <li><a href="#tab2">Ensaladas</a></li>
          <li><a href="#tab3">Carnes</a></li>
          <li><a href="#tab4">Cocteles</a></li>
        </ul>
     <div class="tab_container">
        <div id="tab1" class="tab_content">
         <ul> 
          <li>  
           <p><img src="/imgs/cocinandolp/postres-faciles2.jpg" /><a href="#">Item1 de la categoria</a><br/><br/><em>0:35</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/recetas-de-postres.jpg" /><a href="#">Item2 de la categoria</a><br/><br/><em>1:45</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/postres.jpg" /><a href="#">Item3 de la categoria</a><br/><br/><em>0:22</em></p>
          </li>
          <li> 
           <p><img src="/imgs/cocinandolp/postres-chocolate-avena.jpg" /><a href="#">Item4 de la categoria</a><br/><br/><em>1:15</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/bufet_postres.jpg" /><a href="#">Item5 de la categoria</a><br/><br/><em>1:25</em></p>
          </li>
          <li> 
           <p><img src="/imgs/cocinandolp/postre-frio.jpg" /><a href="#">Item6 de la categoria</a><br/><br/><em>0:50</em></p>
          </li> 
        </ul>            
        </div>
       
        <div id="tab2" class="tab_content">
          <ul>
           <li>  
            <p><img src="/imgs/cocinandolp/ensaladas.jpg" /><a href="#">Item1 de la categoria</a><br/><br/><em>0:35</em></p>
           </li>
           <li>
            <p><img src="imgs/cocinandolp/ensalada_cesar.jpg" /><a href="#">Item2 de la categoria</a><br/><br/><em>1:45</em></p>
           </li>
           <li>
            <p><img src="/imgs/cocinandolp/ensalada.jpg" /><a href="#">Item3 de la categoria</a><br/><br/><em>0:22</em></p>
           </li>
           <li> 
           <p><img src="/imgs/cocinandolp/ensalada-mixta.jpg" /><a href="#">Item4 de la categoria</a><br/><br/><em>1:15</em></p>
           </li>
           <li>                      
           <p><img src="/imgs/cocinandolp/ensalada-de-cangrejo.jpg" /><a href="#">Item5 de la categoria</a><br/><br/><em>1:25</em></p>
          </li>          
           <li> 
            <p><img src="/imgs/cocinandolp/ensalada-atun-surimijpg.jpg" /><a href="#">Item6 de la categoria</a><br/><br/><em>0:50</em></p>
          </li> 
        </ul> 
        </div>

        <div id="tab3" class="tab_content">
           <ul>
          <li>
           <p><img src="/imgs/cocinandolp/carnes-asadas.jpg" /><a href="#">Item1 de la categoria</a><br/><br/><em>0:35</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/carnesasadas.jpg" /><a href="#">Item2 de la categoria</a><br/><br/><em>1:45</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/carnes_asadas.jpg" /><a href="#">Item3 de la categoria</a><br/><br/><em>0:22</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/visor_prod.jpg" /><a href="#">Item4 de la categoria</a><br/><br/><em>1:15</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/potatesensalada.jpg" /><a href="#">Item5 de la categoria</a><br/><br/><em>1:25</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/carne-asada.jpg" /><a href="#">Item6 de la categoria</a><br/><br/><em>0:50</em></p>
          </li>
        </ul>
        </div>
        <div id="tab4" class="tab_content">
           <ul>
          <li>
           <p><img src="/imgs/cocinandolp/strawberry.jpg" /><a href="#">Item1 de la categoria</a><br/><br/><em>0:35</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/cocteles4.jpg" /><a href="#">Item2 de la categoria</a><br/><br/><em>1:45</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/gimletmartini.jpg" /><a href="#">Item3 de la categoria</a><br/><br/><em>0:22</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/caip.jpg" /><a href="#">Item4 de la categoria</a><br/><br/><em>1:15</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/whisky_sour.jpg" /><a href="#">Item5 de la categoria</a><br/><br/><em>1:25</em></p>
          </li>
          <li>
           <p><img src="/imgs/cocinandolp/coc.jpg" /><a href="#">Item6 de la categoria</a><br/><br/><em>0:50</em></p>
          </li>
        </ul>
        </div>
      </div>
    </div> 
    <div class="limpiar">&nbsp;</div>  
     <!-- Termina el bloque de las tabs --> 
      
      </div>
      <div id="footer">
        <div class="limpiar">&nbsp;</div>
        <div align="center">
           {$mas_noticias_728x90}
          <div class="limpiar">&nbsp;</div> 
        </div>      
  
      <div class="menulateral">
      <a class="itemmenu{if $uri=='portada'} selected{/if}" href="/{if $edicion}{$edicion.edicion|date_format:"%Y/%m/%d/"}{/if}">Portada</a>
      {section name=i loop=$secciones}
      <a class="itemmenu{if $uri==$secciones[i].uri} selected{/if}{*if $smarty.section.i.last} ultimo{/if*}" href="/{$edicion.edicion|date_format:"%Y/%m/%d"}/{$secciones[i].uri}">{$secciones[i].seccion}</a>
      {/section}
      <a class="itemmenu" href="{$smarty.const.URL}/minoticia">Mi Noticia</a>
      <a class="itemmenu" href="{$smarty.const.URL}/tv">La Prensa TV</a>
      </div>
          
    </div>
</body>
</html>
