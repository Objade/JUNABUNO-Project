package phoneBook;

import java.util.ArrayList;

public class Handler {
	
	private ArrayList<Phone> list = new ArrayList<Phone>();
	
	private int idx;
	
	private int nextIdx() {
		++idx;
		return idx;
	}
	
	public void setDummy() {
		if(list.isEmpty()) {
			list.add(new Phone(nextIdx(), "테스트 1", "010-1234-5678"));
			list.add(new Phone(nextIdx(), "테스트 2", "010-0000-0000"));
			list.add(new Phone(nextIdx(), "테스트 3", "010-1111-1111"));
		}
	}
	
	public ArrayList<Phone> getList() {
		return list;		
	}
	

	public void insert(Phone ph) {
		ph.setIdx(nextIdx());
		list.add(ph);
	}
	
	public void delete(int idx) {
		list.removeIf(ph -> ph.getIdx() == idx);		
	}
	
	public Phone getItem(int idx) {
		Phone po = null;
		
		for(Phone ob : list) {
			if(idx == ob.getIdx()) {
				po = ob;
				break;
			}
		}
		
		return po;
		
	}
	
	public void update(Phone ph) {
		int index = -1;
		
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getIdx() == ph.getIdx()) {
				index = i;
				break;
			}
		}
		
		list.set(index, ph);
	}
	
	
	
}
