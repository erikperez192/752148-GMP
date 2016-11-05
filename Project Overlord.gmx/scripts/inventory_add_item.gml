///inventory_add_item(x,y, item)
var xx = argument[0];
var yy = argument [1];
var add_item = argument[2];

// check for out of range
if (xx != median(0,xx, Inventory.width-1) || yy != median(0,yy, Inventory.height-1)){
    show_debug_message("The x and the y are outside of the range.");
    exit;
}

// get the item count 
var item_coint = Inventory.count[# xx, yy];

if (item_count == 0) {
    //add the item
    Inventory.box[# xx, yy] = add_item;
    
    //add 1 to the count 
    Inventory.coint [@xx, yy]++;
    
    //return back out
    return true;
    
}else if (item_count > 0) {
    // there is allready an item here
    // Is the item we are adding the same?
    if (inventory.box[#xx, yy] == add_item){
    // Add 1 to count
    Inventory.count[#xx, yy]++;
    return true;
    }else{
    show_debug_message("There is allready an item their"
        return false;
    }
}else{
    // our item count is less than zero
    // Errot
    show_error("The utem count is less than 0", false);
}
