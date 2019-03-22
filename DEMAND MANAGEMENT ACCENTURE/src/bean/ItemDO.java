package bean;

import java.util.ArrayList;

public class ItemDO {
	
	public ItemDO()
	{
		
	}

    public ArrayList<ItemBean> getItems(){
    	ArrayList<ItemBean> itemList = new ArrayList<ItemBean>();
    	
    		try{	    		
    			/*String query = " SELECT ITEM_ID, ITEMNAME, ITEMLOCATION, STATUS, LST_DATE " +
    			"FROM ITEM_RENEW  " +
    			"ORDER BY LST_DATE DESC";
    			
    			statement = conn.createStatement();
    			rs = statement.executeQuery(query);
    			while(rs.next()){*/
    				ItemBean itemBean = new ItemBean();
    				itemBean.setDemandID("1");
    				itemBean.setDemandName("1");	    			
    				itemBean.setDemandDesc("1");
    				itemBean.setStatus("1");
    				itemList.add(itemBean);
    			}
    		catch (Exception e) {
				// TODO: handle exception
			}
    		
    			
    	return itemList;
    }
}
