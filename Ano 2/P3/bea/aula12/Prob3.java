package aula12;

import java.io.File;
import java.util.ArrayList; 
import java.util.Iterator;

import aula12.prob3.ContactPlugin;

abstract class ContactsPluginManager {
	public static ContactPlugin load(String name) throws Exception {
		Class<?> c = Class.forName(name);
		return (ContactPlugin) c.newInstance(); 
	}
}

public class Prob3 {
	public static void main(String[] args) throws Exception {
		File pluginsLocation = new File("resources/contacts/plugins"); 
		
		ArrayList<ContactPlugin> plgs = new ArrayList<ContactPlugin>(); 
		for (String f: pluginsLocation.list()) {
			try {
				plgs.add(ContactsPluginManager.load("aula12.prob3.contactsPlugins."+f.substring(0,f.lastIndexOf('.'))));
			} catch (Exception e) { 
				e.printStackTrace(); 
			}
		}
		
		Iterator<ContactPlugin> it = plgs.iterator(); 
		
		while (it.hasNext()) {
			System.out.println(it.next().getClass().getSimpleName());
		}
	}
}