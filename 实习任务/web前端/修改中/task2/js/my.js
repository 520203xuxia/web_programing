 function highlight(obj){
            if(obj.flag==null)
                obj.flag=0;
            if(obj.flag%2==0)
                obj.className='btn btn-block list-btn list-click';
            else
                obj.className='btn btn-block list-btn ';
            obj.flag++;
        }