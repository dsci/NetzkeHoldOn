# NetzkeHoldOnBox
Netzke::Basepack::GridPanel.class_eval do
  js_method :hold_on, <<-JS
      function(message,title){
        return Ext.Msg.wait(
          title, message
        );
      }
   JS

   js_method :hide_box, <<-JS
    function(box){
      box.hide();
    }
   JS
end