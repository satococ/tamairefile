package info;	

public class ThreadListProfile{
	private String threadid;
	private String name;
	private String update;
	private String description;
	private String count;
	
	public void setThreadid(String threadid){
		this.threadid=threadid;
	}
	public String getThreadid(){
		return threadid;
	}
	
	public void setName(String name){
		this.name=name;
	}
	public String getName(){
		return name;
	}
	
	public void setUpdate(String update){
		this.update=update;
	}
	public String getUpdate(){
		return update;
	}
	
	public void setDescription(String description){
		this.description=description;
	}
	public String getDescription(){
		return description;
	}
	
	public void setCount(String count){
		this.count=count;
	}
	public String getCount(){
		return count;
	}
	
}