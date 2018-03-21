function remove_item(id) {


    var item_quantity = parseInt(document.querySelector(`#qty${id}`).innerHTML);
    var order_amt = parseInt(document.querySelector("#order_amount").innerHTML);
    var item_cost = parseInt(document.querySelector(`#cost${id}`).innerHTML);
    var item_amt = parseInt(document.querySelector(`#amount${id}`).innerHTML);

     if (item_quantity > 1)
     {

    var item_quantity = item_quantity - 1;
    document.querySelector(`#qty${id}`).innerHTML = item_quantity;
    document.querySelector(`#amount${id}`).innerHTML = item_amt - item_cost;
    document.querySelector("#order_amount").innerHTML = order_amt - item_cost;
    document.querySelector("#grocery-amount").innerHTML = order_amt - item_cost;
      }
     else
       {
      document.querySelector(`#bask${id}`).style.display = "none";
      num_item = parseInt(document.querySelector("#total-id").innerHTML);
      order_amt = parseInt(document.querySelector("#order_amount").innerHTML);
      document.querySelector("#order_amount").innerHTML = order_amt - item_cost;
      document.querySelector("#grocery-amount").innerHTML = (order_amt - item_cost)-5;

         if (num_item <= 1)

         {
            console.log(num_item);
            document.querySelector(".hide-empty").style.display = "inline";
            a = document.querySelector(".basket-count-show").innerHTML = `[${num_item}]`;
        }
         else
        {
          console.log(num_item);
          console.log(hello);
          document.querySelector(".basket-count-show").innerHTML = `[${num_item}]`;
          document.querySelector("#total-id").innerHTML = num_item - 1;
        }

       }

  }


   function add_item(id) {

    var item_quantity = parseInt(document.querySelector(`#qty${id}`).innerHTML)
    var order_amt = parseInt(document.querySelector("#order_amount").innerHTML);
    var item_cost = parseInt(document.querySelector(`#cost${id}`).innerHTML);
    var item_amt = parseInt(document.querySelector(`#amount${id}`).innerHTML);


    var item_quantity = item_quantity + 1;


    document.querySelector(`#qty${id}`).innerHTML = item_quantity;
    document.querySelector(`#amount${id}`).innerHTML = item_amt + item_cost;

    document.querySelector("#order_amount").innerHTML = order_amt + item_cost;
    document.querySelector("#grocery-amount").innerHTML = (order_amt + item_cost)-5;

  }
