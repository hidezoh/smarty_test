{*
  コメントアウト
*}

{include file='header.tpl' page_title={$smarty.const.MY_TITLE}}

{* 普通の変数 *}
<p>{$hello}

{* メソッド *}
<p>{$today->format('Y/m/d (D)')}

{* 予約変数 *}
<dl>
  <dt>現在のタイムスタンプ
  <dd>{$smarty.now}

  <dt>現在処理中のテンプレートファイル名
  <dd>{$smarty.template}

  <dt>Smarty version
  <dd>{$smarty.version}
</dl>

{* 配列を逆順でループ(step=-1だから) *}
<ul>
{section name=i loop=$animal step=-1}
  <li>{$animal[i]}
{/section}
</ul>
