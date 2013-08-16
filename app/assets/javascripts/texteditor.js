$(document).ready(function() {
      $("#wysiwyg").wysiwyg({
				formWidth: 600,
	      formHeight: 500,
	      controls: {
	        justifyLeft   : { visible : true },
	        justifyCenter : { visible : true },
	        justifyRight  : { visible : true },
	        justifyFull   : { visible : true },
	
	        indent        : { visible : true },
	        outdent       : { visible : true },
	
	        subscript    : { visible : false },
	        superscript  : { visible : false },
	
	        undo         : { visible : false },
	        redo         : { visible : false },
	        
	        createLink           : { visible : false },
	        insertImage          : { visible : false },
	        code                 : { visible : false },
	        insertTable          : { visible : false },
	        insertOrderedList    : { visible : false },
	        insertUnorderedList  : { visible : false },
	        insertHorizontalRule : { visible : false },
	        removeFormat         : { visible : false },
	
	        h1          : { visible : false },
	        h2          : { visible : false },
	        h3          : { visible : false },
	
	        cut          : { visible : true },
	        copy         : { visible : true },
	        paste        : { visible : true },
	        html         : { visible : true }
	      }
			});
	});
