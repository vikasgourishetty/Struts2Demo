<div id="rcr_pro_bio_cv">
	<br>
	<div class="row" >												
	  <div class="col-sm-4" id="rcr_pro_bio_per_prefixDiv">
		<label for="rcr_pro_bio_per_cv" title="Upload CV">Upload CV</label>
		<input type="file" id="rcr_pro_bio_per_cv" name="file" />
	  </div>	
	</div>
	<br>	
</div>

<script>
var e1;
	$(document).ready(function() {
		//$("#rcr_pro_bio_per_cv").kendoUpload();
		//var files = $$fileUI;
		
		var files = [
        	//{ name: "file1.doc", size: 525, extension: ".doc", url: "/Struts2Demo/fileDownload.action" }
   		 ]; 
	
		
		
		$("#rcr_pro_bio_per_cv").kendoUpload({
				async : { 
					saveUrl: "fileUpload",
                 	removeUrl: "fileRemove",
                 	autoUpload: false,
                 	},
                 multiple: false,
                 files: files,
                  success: function(e) {
                	  e1 = e;
                	  console.log("e.json= "+e.toString());
                	  console.log("e = " +e.response);
                	  
                	                 	  
                	  console.log("request = "+e.XMLHttpRequest.toString());
                  	var url = "fakeUrl" //e.response.url
                    var file = e.files[0];
                    var fileItem = this.wrapper.find("li[data-uid='" + file.uid + "']");
                    fileItem.find(".k-file-name").replaceWith("<a href='" + url + "'>" + file.name +"</a>");
                    if (e.response == "json-error") {                    	
                    	 fileItem.removeClass( "k-file-success" ).addClass( "k-file-error" );   
                   		$("#rcr_pro_bio_per_prefixDiv .k-widget .k-dropzone .k-upload-status-total").replaceWith('<strong style="color:red !important; float: right;">Upload Failed</strong>');
                    	$("#rcr_pro_bio_per_prefixDiv .k-widget ul li .k-upload-status").replaceWith('');
              	  	}  
                  },
                  error: function(e) {
                	  e1 = e;
                  	var url = "fakeUrl" //e.response.url
                    var file = e.files[0];
                    var fileItem = this.wrapper.find("li[data-uid='" + file.uid + "']");
                    fileItem.find(".k-file-name").replaceWith("<a href='" + url + "'>" + file.name +"</a>");                                     
                    
                  }
			});
			
			$(".k-file-name").each(function(i) {
                  $(this).replaceWith("<a href='" + files[i].url + "'>" + files[i].name +"</a>");
              });
			
	});
</script>