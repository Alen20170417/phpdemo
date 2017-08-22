<?php
/**
 *递归运算+树状checkbox选中
 *
 */
error_reporting("E_ALL&~E_NOTICE");
$arr=array(
	array('code'=>1,'name'=>'选股','pid'=>0),
	array('code'=>2,'name'=>'行情','pid'=>0),
	array('code'=>3,'name'=>'咨询','pid'=>0),
	array('code'=>4,'name'=>'黄金股票池','pid'=>1),
	array('code'=>5,'name'=>'基金','pid'=>1),
	array('code'=>6,'name'=>'金色两点半','pid'=>4),
	array('code'=>7,'name'=>'搓揉优选','pid'=>4),
	array('code'=>8,'name'=>'万科A股','pid'=>6),
	array('code'=>9,'name'=>'万科B股','pid'=>6),
);

function getTree($data,$pid)
{
	$newData=array();
	
	$i=0;
	foreach($data as $key=>$val)
	{
		if($val['pid']==$pid)
		{
			$newData[$i]=$val;
			$child=getTree($data,$val['code']);
			if(!empty($child))
			{
				
				$newData[$i]['c'][]=getTree($data,$val['code']);
			}
			else
			{
				$newData[$i]['c']='';
			}
		}
		
		$i++;
	}
	
	return $newData;
}

function show($data)
{
	echo '<pre style="color:red">';
	print_r($data);
	echo '</pre>';
}

//show(getTree($arr,0));
$data=getTree($arr,0);
function showTreeData($arr,$dep)
{
	foreach($arr as $key=>$val)
	{
			echo '<div class="service1">'.str_repeat('--------------',$dep).'<input type="checkbox" name="services" value="'.$val['code'].'" pid="'.$val['pid'].'" />'.$val['name'];
			if(is_array($val['c'][0]))
			{
				//show($val['c']);
				showTreeData($val['c'][0],$dep+1);
			}
			
			echo '</div>';
	}
}

showTreeData($data,0);

echo json_encode(getTree($arr,0));
show(getTree($arr,0));
?>
<br/>
<br/>
<br/>
<br/>
<br/>

<div class="service"><input name="services" value="1" pid="0" onclick="chooseBox(this)" type="checkbox">选股</div><br>
<div class="service">--------------<input name="services" value="4" pid="1" onclick="chooseBox(this)" type="checkbox">黄金股票池</div><br>
<div class="service">----------------------------<input name="services" value="6" pid="4" onclick="chooseBox(this)" type="checkbox">金色两点半</div><br>
<div class="service">------------------------------------------<input name="services" value="8" pid="6" onclick="chooseBox(this)" type="checkbox">万科A股</div><br>
<div class="service">------------------------------------------<input name="services" value="9" pid="6" onclick="chooseBox(this)" type="checkbox">万科B股</div><br>
<div class="service">----------------------------<input name="services" value="7" pid="4" onclick="chooseBox(this)" type="checkbox">搓揉优选</div><br>
<div class="service">--------------<input name="services" value="5" pid="1" onclick="chooseBox(this)" type="checkbox">基金</div><br>
<div class="service"><input name="services" value="2" pid="0" onclick="chooseBox(this)" type="checkbox">行情</div><br>
<div class="service"><input name="services" value="3" pid="0" onclick="chooseBox(this)" type="checkbox">咨询</div><br>

<script src="jquery-1.11.1.min.js" type="text/javascript"></script>
<script>

function getTreePid(val)
{
	var v=$(".service input[type='checkbox'][value='"+val+"']").attr("pid");
	if(v!=0)
	{
		getTreePid(v)
		sblings.push(v);
		
	}
	
	return sblings;
}

function getTreeCid(val)
{
	for(var i=0;i<$(".service input[type='checkbox'][pid='"+val+"']").length;i++)
	{
		v=$("input[type='checkbox'][pid='"+val+"']").get(i).value;
	
		sblings.push(v);
		getTreeCid(v)
		
	}
	
	return sblings;
}

function chooseBox(obj)
{
	if(obj.checked==true)
	{
		sblings=[];
		sblings=getTreePid(obj.value);
	
		for(var i=0;i<sblings.length;i++)
		{
			alert($(".service input[type='checkbox'][value='"+sblings[i]+"']").get(0).checked=true)
		}
	}else{
		sblings=[];
		sblings=getTreeCid(obj.value);
		
		for(var i=0;i<sblings.length;i++)
		{
			alert($(".service input[type='checkbox'][value='"+sblings[i]+"']").get(0).checked=false)
		}
	}
}


$(".service1 input[type='checkbox']").click(function(){
	alert(this.checked);
	//alert($(this).attr("checked"));
	if(this.checked==true)
	{
		$(this).parents(".service1").find("input[type='checkbox']").each(function(){
		});
	}
});
</script>
