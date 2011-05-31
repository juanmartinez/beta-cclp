  <div id="right">
    <div align="center">
     {if $banner_160x600}{$banner_160x600}{/if}
    </div>
  </div>
  <div id="centro" align="center">
    <div class="busqueda">
      <div class="redes">
        <form>
          <input type="text" name="clipcocinando" id="query" class="textbox" />&nbsp;
          <input type="submit" class="submit" value="Buscar receta" />
        </form>
        
        {literal}
        <script type="text/javascript">
        function findValue(li) {
	if( li == null ) return alert("No hay coincidencias!");

	if( !!li.extra ) var sValue = li.extra[0];

	// otherwise, let's just display the value in the text box
	else var sValue = li.selectValue;

	alert("The value you selected was: " + sValue);
        }

        function selectItem(li) {
	   findValue(li);
        }
           
        function formatItem(row) {
	   return row[0] + " (id: " + row[1] + ")";
        }

        function lookupAjax(){
	   var oSuggest = $("#query")[0].autocompleter;
   	   oSuggest.findValue();
	   return false;
        }

        function lookupLocal(){
	  var oSuggest = $("#query")[0].autocompleter;
          oSuggest.findValue();
          return false;
        }

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
{include file="cocinando/footer.tpl"}
