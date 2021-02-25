package fr.mistral.dataserver.handlers;

import java.util.function.Function;

public class EntityFieldMapper<T> implements IEntityFieldMapper<T> {

	private final String fieldName;
	private final String attributeName;
	private final Function<T, Object> getter;

	public EntityFieldMapper(String fieldName, String columnName, Function<T, Object> getter) {
		this.fieldName = fieldName;
		this.attributeName = columnName;
		this.getter = getter;
	}

	@Override
	public String getFieldName() {
		return fieldName;
	}

	@Override
	public String getAttributeName() {
		return attributeName;
	}

	@Override
	public Function<T, Object> getGetter() {
		return getter;
	}

}
