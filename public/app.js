

function something() {
	var x=window.localStorage.getItem('bbb');
	x=x*1+1
	window.localStorage.setItem('bbb',x);
	alert(x);
}
function add_to_card(id) {
	var key = 'product_' + id;
	var x= window.localStorage.getItem(key) ;
	x=x*1+1;
	window.localStorage.setItem(key,x);
	console.log ('Item in your cart: '+cart_get_number_of_items());
}
function cart_get_number_of_items() 
{
	var cnt = 0;
	for (var i = 0 ;i< window.localStorage.length ;  i++) {
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);
		if (key.indexOf('product_')==0) 
		{
			cnt= cnt+value*1;
		}
	}
	return cnt;
}
function cart_get_orders() 
{
	var orders = '';
	for (var i = 0 ;i< window.localStorage.length ;  i++) {
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);
		if (key.indexOf('product_')==0) 
		{
			orders= orders + key + '=' + value + ',';
		}
	}
	return orders;
}