<div id="footer">
        <div class="limpiar">&nbsp;</div>
        <div align="center">
           {if $banner_inferior_cocinando_728_90}{$banner_inferior_cocinando_728_90}{/if}
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
