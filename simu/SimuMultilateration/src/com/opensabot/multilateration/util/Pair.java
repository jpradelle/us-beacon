package com.opensabot.multilateration.util;

import java.util.ArrayList;
import java.util.List;

public class Pair<T> {

	public T first;
	public T second;

	public Pair(T first, T second) {
		this.first = first;
		this.second = second;
	}

	@Override
	public String toString() {
		return "Pair<" + first.toString() + ", " + second.toString() + ">";
	}
	
	public List<T> asList() {
		final List<T> list = new ArrayList<>();
		list.add(first);
		if (second != null)
			list.add(second);
		
		return list;
	}
}
