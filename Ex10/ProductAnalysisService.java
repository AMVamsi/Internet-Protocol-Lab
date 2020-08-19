package demo.product.analysis;
import java.util.*;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
@Path("/analysis")
public class ProductAnalysisService {
@GET
public Response getProductAnalysis() {
String productFeedback = "";
for (Entry<String, ArrayList<Integer>> mapEntry : ProductSalesPrediction.getOpinionMap().entrySet()) {
int productValue = 0;
ArrayList<Integer> currentList = mapEntry.getValue();
for(Integer score : currentList) productValue += score.intValue();
int customerScore = 0;
if(currentList.size() != 0) customerScore = (productValue / currentList.size());
productFeedback += "Customer rating for product " + mapEntry.getKey() + " is "+ customerScore +"% \n<br>";
}
return Response.status(200).entity(productFeedback).build();
}
}
