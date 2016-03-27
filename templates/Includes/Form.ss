<% if IncludeFormTag %>
<form $getAttributesHTML(class) class="form-horizontal $extraClass">
<% end_if %>
	<% if Message %>
	<div id="{$FormName}_error" class="alert alert-error message $MessageType">
		$Message
	</div>
	<% else %>
	<div id="{$FormName}_error" class="alert alert-error message $MessageType" style="display: none"></div>
	<% end_if %>

	<fieldset>
		<% if Legend %><legend>$Legend</legend><% end_if %>
		<% loop Fields %>
			$FieldHolder
		<% end_loop %>
	</fieldset>

	<% if Actions %>
	<% loop Actions %>
		$Field
	<% end_loop %>
	<% end_if %>
<% if IncludeFormTag %>
</form>
<% end_if %>
