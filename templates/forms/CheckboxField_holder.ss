<div id="$Name" class="form-group field<% if extraClass %> $extraClass<% end_if %>">
  <div class="form-control-label col-form-label"></div>
  <div class="form-control-wrapper">
  	<label for="$ID">
  		$Field $Title
  	</label>
  	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
  	<% if $Description %><span class="description">$Description</span><% end_if %>
  </div>
</div>
