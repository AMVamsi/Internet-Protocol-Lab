import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/prediction")
public class ProductSalesPrediction  {

private static ProductSalesPrediction prodInstance = null;

private static ArrayList<Integer> opinionList = new ArrayList<Integer>();
private static Map<String, ArrayList<Integer>> opinionMap = new HashMap<String, ArrayList<Integer>>();

public static ArrayList<Integer> getOpinionList() {
return opinionList;
}

public static Map<String, ArrayList<Integer>> getOpinionMap() {
return opinionMap;
}

@POST
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
public void getMsg(@FormParam("product") String product, @FormParam("buy") String buy, @FormParam("use") String use) throws ServletException, IOException
{
String productName = product;
int useValue = Integer.parseInt(use);
int buyValue = Integer.parseInt(buy);
int opinionValue = (useValue+buyValue)/2 * 10;
ArrayList<Integer> opinionList1 = null;
if(opinionMap.containsKey(productName)) {
if(opinionMap.get(productName) == null) opinionList1 = new ArrayList<Integer>();
else opinionList1 = opinionMap.get(productName);
} else {
opinionList1 = new ArrayList<Integer>();
opinionMap.put(productName, opinionList1);
}
opinionList1.add(opinionValue);
}

public static ProductSalesPrediction getSalesPrediction() {
if(prodInstance == null) prodInstance = new ProductSalesPrediction();
return prodInstance; }}
