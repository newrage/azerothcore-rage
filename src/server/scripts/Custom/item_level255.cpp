/*
  _______        _         ______                 
 |__   __|      | |       |  ____|                
    | | __ _ ___| |_ _   _| |__   _ __ ___  _   _ 
    | |/ _` / __| __| | | |  __| | '_ ` _ \| | | |
    | | (_| \__ \ |_| |_| | |____| | | | | | |_| |
    |_|\__,_|___/\__|\__, |______|_| |_| |_|\__,_|
                      __/ |                       
                     |___/        
                     
Script Made By Sinistah
Special Thanks To LilleCarl For The Code Snippet
 
Legend
------
item_id = the item id of the item ur using. 
max_lvl = the max lvl the script will allow players to use the item. 
lvl = how many levels the item will grant upon used
*/
 
enum
{
item_id = 700113,
max_lvl = 255,
lvl = 1
};
 
class item_level255 : public ItemScript
{
public:
    item_level255() : ItemScript("item_level255") { }
 
    bool OnUse(Player* player, Item* item, const SpellCastTargets &)
    {
        if(player->IsInCombat() || player->IsInFlight())
        {
            player->GetSession()->SendNotification("You Cant Use This Right Now!");
            return false;
        }
        if(player->getLevel() == max_lvl)
        {
            player->GetSession()->SendNotification("You are already max level.");
            return false;
        }
        player->SetLevel(player->getLevel() == max_lvl ? max_lvl : player->getLevel() + lvl);
        player->DestroyItemCount(item_id, 1, true);
        player->GetSession()->SendNotification("You have used one level coin.");
        return true;
        }
};
 
void AddSC_item_level255()
{
    new item_level255();
}
