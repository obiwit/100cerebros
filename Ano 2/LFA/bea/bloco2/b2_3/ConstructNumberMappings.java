import java.util.Map;
import java.util.HashMap;

public class ConstructNumberMappings extends NumbersBaseListener {

	protected Map<String,Integer> mappings = new HashMap<String,Integer>();

	public boolean exists(String key)
	{
		assert key != null;
		return mappings.containsKey(key);
	}

	public Integer value(String key) {
		assert key != null;
		assert exists(key);
		return mappings.get(key);
	}

	@Override 
	public void exitLine(NumbersParser.LineContext ctx) {

		String key = ctx.WORD().getText();
		Integer value = Integer.parseInt(ctx.NUM().getText());

		if(exists(key)) {
			System.err.println("ERROR: repeated key \""+key+"\"");
			System.exit(1);
		}
		mappings.put(key,value);
	}
}