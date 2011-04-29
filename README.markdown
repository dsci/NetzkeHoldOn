NetzkeHoldOnBox
===============

Very,very tiny,dirty and simple approach to add a DRY "hold on box" to netzke.

Example
=======

```ruby
js_method :on_copy_item, <<-JS
    function(){
      var selModel = this.getSelectionModel();
      var recordId = selModel.getSelected().id;
      var box = this.holdOn("Bitte warten.","Nachricht wird kopiert. Sie befindet am Anfang der Nachrichtenliste.");
      this.copyItem({item_id:recordId,hold_on:box}, function(value){
          box.hide();
          this.store.reload();
      });
    };
  JS
```

Remember. It is directly included into Netzke::Basepack::GridPanel - so it is only available in any instances of it.

Copyright (c) 2011 Daniel Schmidt, released under the MIT license
