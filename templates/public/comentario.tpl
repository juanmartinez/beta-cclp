        <a name="comentarios"></a>
        {if $now}
        <h2{if $now.comentarios>0} class="underline"{/if}>Comentarios{if $now.comentarios} - {$now.comentarios}{/if}</h2>
        {elseif $entrada}
        <h2{if $entrada.comentarios>0} class="underline"{/if}>Comentarios{if $entrada.comentarios} - {$entrada.comentarios}{/if}</h2>
        {/if}
        {if $comentarios}
        <div id="comentarios">
          {if $pgs>=1}
            <div class="barracomentarios" style="margin-right:5px">
              <div class="textcomen left"><span class="azul">Comentarios |&nbsp;</span><span class="rojo">{$row.comentarios|default:$total}</span></div>
              {*<div class="left">P&aacute;gina {$pg} de {$pgs}</div>*}
              <div class="navegador right">
                {if $pg>1}<div class="flechitas left"><a href="javascript:goPage(1,{$smarty.request.idnoticia});"><img src="/imgs/flechita2nav-izq.png" width="17" height="20" alt="" /></a></div><div class="flechitas2 left"><a href="javascript:goPage({$pg-1},{$smarty.request.idnoticia});"><a href="javascript:goPage({$pg-1},{$smarty.request.idnoticia})"><img src="/imgs/flechita1nav-izq.png" width="17" height="20" alt="" /></a></div>{/if}
	        {section name=i loop=$pgs}{if $smarty.section.i.iteration == $pg}<div class="itemactive left">{$smarty.section.i.iteration}</div>{else}<div class="item left"><a href="javascript:goPage({$smarty.section.i.iteration},{$smarty.request.idnoticia});">{$smarty.section.i.iteration}</a></div>{/if}{/section}
                {if $pg<$pgs}<div class="left"><a href="javascript:goPage({$pg+1},{$smarty.request.idnoticia});"><img src="/imgs/flechita1nav.png" width="17" height="20" alt="" /></a></div><div class="flechitas left"><a href="javascript:goPage({$pgs},{$smarty.request.idnoticia})"><img src="/imgs/flechita2nav.png" width="17" height="20" alt="" /></a></div>{/if}
              </div>
              <div class="limpiar"></div>
            </div><!--barracomentarios-->
            <div class="limpiar"></div>
            {section name=i loop=$comentarios}
              <div class="comentariotexto {if $smarty.section.i.iteration %2} backgris{/if}">
                <div class="izqcoment">
                  <p class="ano">{$comentarios[i].creacion|date_format:"%Y"}</p>
                  <p class="monNday">{$comentarios[i].creacion|date_format:"%b %d"|utf8_encode|capitalize}</p>
                  <p class="time">{$comentarios[i].creacion|date_format:"%I:%M"}{if $comentarios[i].creacion|date_format:"%H">12}p.m{elseif $comentarios[i].creacion|date_format:"%H"==12}m{else}a.m{/if}</p>
                </div>
                <div class="dercoment">
                  <p class="name"><span>{$comentarios[i].nombre}</span> dice: </p>
                  <p>{$comentarios[i].comentario|nl2br}</p>
                </div><!--dercoment-->
                <div class="limpiar"></div>
              </div>  
            {/section}
          {/if}
          <div class="navegador right down">
            {if $pg>1}<div class="flechitas left"><a href="javascript:goPage(1,{$smarty.request.idnoticia});"><img src="/imgs/flechita2nav-izq.png" width="17" height="20" alt="" /></a></div><div class="flechitas left"><a href="javascript:goPage({$pg-1},{$smarty.request.idnoticia});"><a href="javascript:goPage({$pg-1},{$smarty.request.idnoticia})"><img src="/imgs/flechita1nav-izq.png" width="17" height="20" alt="" /></a></div>{/if}
	    {section name=i loop=$pgs}{if $smarty.section.i.iteration == $pg}<div class="itemactive left">{$smarty.section.i.iteration}</div>{else}<div class="item left"><a href="javascript:goPage({$smarty.section.i.iteration},{$smarty.request.idnoticia});">{$smarty.section.i.iteration}</a></div>{/if}{/section}
            {if $pg<$pgs}<div class="left"><a href="javascript:goPage({$pg+1},{$smarty.request.idnoticia});"><img src="/imgs/flechita1nav.png" width="17" height="20" alt="" /></a></div><div class="flechitas left"><a href="javascript:goPage({$pgs},{$smarty.request.idnoticia})"><img src="/imgs/flechita2nav.png" width="17" height="20" alt="" /></a></div>{/if}
          </div>
        </div>
        {/if}
        <div class="limpiar"></div>
        <a name="comentar"></a>
        {if $comentarios}<div class="separador">&nbsp;</div> {/if}
        <div class="formulario" id="form">
          <h1>Tu Comentario</h1>
          <div class="limpiar">&nbsp;</div>  
          <div class="form left">
            <div id="msg_status"></div>
            <form method="post" class="valid" id="new" action="">
              <input type="hidden" name="action" value="comment"/>
              {if $row.idnoticia}<input type="hidden" id="idnoticia" name="idnoticia" value="{$row.idnoticia}" />{/if}
              <div class="componente"><textarea name="comentario" id="comentario" class="required" maxlength="500" onkeyup="{literal}return ismaxlength(this);{/literal}">{dynamic}{$comentario}{/dynamic}</textarea><br/><label id="msg" class="caracteres"><b>0 de 500 caracteres</b></label></div>
              <div class="fila1">
                <div class="componente left tamano190"><div class="label">Nombre <span class="rojo">*</span></div><input name="nombre" id="nombre" class="required txtbox" value="{dynamic}{$nombre}{/dynamic}" type="text" maxlength="50" /></div><!--componente-->
                <div class="componente right tamano190"><div class="label">Correo <span class="rojo">*</span></div> <input  name="email" id="email" class="required email txtbox" value="{dynamic}{$email}{/dynamic}" type="text" maxlength="50" /> </div><!--componente-->   
                <div class="limpiar"></div>                             
              </div><!--fila1-->
              <div class="fila1">
                <div class="componente right"><div class="label">Código de Seguridad</div><div id="captcha-content"><img id="captcha" src="/securimage/securimage_show.php" alt="CAPTCHA Image" /><br /><a href="#" onclick="document.getElementById('captcha').src = '/securimage/securimage_show.php?' + Math.random(); return false" class="link">Recargar Imagen</a></div><input type="text" name="captcha_code" id="captcha_code" class="required txtbox" /></div><!--componente--> 
                <div class="limpiar"></div>
              </div><!--fila1-->  
              <div class="separador">&nbsp;</div>
              <div class="fila1">
                <div class="componente left tamano190"><div class="label">Los Campos marcados con <span class="rojo">(*)</span><br />Son obligatorrios</div></div><!--componente-->
                <div class="componente right"><input name="comentario" type="submit" class="boton" value="Enviar Formulario" size="10" /></div><!--componente-->  
                <div class="limpiar"></div>
              </div><!--fila1-->                                                      
            </form>
          </div><!--textoform-->
          <div class="limpiar"></div>

        </div><!--formulario-->                                                                                   
        {*fin form comentarios*}
