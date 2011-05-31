  {if $banner_160x600_lateral_2}<div class="banner_lateral_1">{$banner_160x600_lateral_2}</div>{/if}
  <div id="right">
    {if $banner_160x600_lateral_1}<div class="banner_lateral_2">{$banner_160x600_lateral_1}</div>{/if}
    <div align="center">
     <p>Texto de prueba</p>
     {if $banner_160x600}{$banner_160x600}{/if}
    </div>
  </div>
  <div id="centro" align="center">
    <div class="busqueda">
      <div class="redes">
        <form action="/cocinando/receta/" method="post">
          <input type="text" name="clipcocinando" id="query" class="textbox" />&nbsp;
          <input type="submit" class="submit" value="Buscar receta" />
        </form>
        {literal}
        <script type="text/javascript">
        $(document).ready(function() {
	$("#query").autocompleteArray(
		[
	        {/literal}{$listavideos}{literal}
		],
		{
			delay:10,
			minChars:1,
			matchSubset:1,
			onItemSelect:selectItem,
			onFindValue:findValue,
			autoFill:true,
			maxItemsToShow:10
		}
          );
      });
      </script>
      {/literal} 
      </div>
      <img src="/imgs/cocinandolp/fb.png" />&nbsp;<img src="/imgs/cocinandolp/twitter.png" />
    </div>
    <div class="limpiar">&nbsp;</div>

  <div video="">
    <a id="player" class="player plain"></a>
    <div class="limpiar">&nbsp;</div>
    <div id="playlist">
    {section name=l loop=$lista}
      <a href="{$smarty.const.CLIPSCOCINANDO}/{$lista[l].clipcocinando}" title="{$lista[l].titulo}">
        <img src="{$smarty.const.CLIPSCOCINANDO}/{$lista[l].clipcocinando|substr:0:-4|cat:"_122x92.jpg"}" />
        <strong>{$lista[l].titulo}</strong><br /> 
        <em>{$lista[l].duracion}</em>
      </a>
    {/section}
     </div>
    </div>
    <div class="limpiar">&nbsp;</div>
    
    <div id="comentarios">
      <iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Flaprensanicaragua&amp;width=292&amp;colorscheme=light&amp;show_faces=true&amp;stream=false&amp;header=false&amp;height=395" scrolling="yes" frameborder="0" style="border:none; overflow:hidden; width:292px; height:250px;" allowTransparency="true"></iframe>
    </div>
    <div style="float:right">
     {if $banner_300x250}{$banner_300x250}{/if}
    </div>
    <div class="limpiar">&nbsp;</div>
    <div class="container">
      <ul class="tabs">
       {section name=i loop=$categorias}
        <li><a href="#tab{$categorias[i].idcategoriaclip}">{$categorias[i].categoriaclip}</a></li>
       {/section}
      </ul>
      <div class="tab_container">
       {section name=i loop=$clipsc}
         <div id="tab{$clipsc[i].clips[0].idcategoriaclip}" class="tab_content">
         {section name=j loop=$clipsc[i].clips}
          <ul>
            <li>
             <p><a href="/cocinando/receta/{$clipsc[i].clips[j].idclipcocinando}"><img src="{$smarty.const.CLIPSCOCINANDO}/{$clipsc[i].clips[j].clipcocinando|substr:0:-4|cat:"_122x92.jpg"}" border="0" /><a href="/cocinando/receta/{$clipsc[i].clips[j].idclipcocinando}">{$clipsc[i].clips[j].titulo}</a><br/><em>{$clipsc[i].clips[j].duracion}</em></a></p> 
            </li>
          </ul> 
         {/section}
       </div>
       {/section}
      </div>
      </div>
     <div class="limpiar">&nbsp;</div>
     <div id="comentarios">
       <div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script><fb:comments href="http://www.laprensa.com.ni/" num_posts="5" width="680"></fb:comments> 
     </div> 
   </div>
{include file="cocinando/footer.tpl"}
