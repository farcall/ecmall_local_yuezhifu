
function drop_image(order_file_id)
{
    if (confirm(lang.uploadedfile_drop_confirm))
        {
            var url = SITE_URL + '/index.php?app=seller_xianxiaorder&act=drop_image';
            $.getJSON(url, {'id':order_file_id}, function(data){
                if (data.done)
                {
                    $('*[file_id="' + order_file_id + '"]').remove();
                    set_cover($("#order_images li:first-child").attr('file_id'));
                }
                else
                {
                    alert(data.msg);
                }
            });
        }
}

