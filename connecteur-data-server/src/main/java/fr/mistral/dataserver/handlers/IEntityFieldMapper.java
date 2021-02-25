package fr.mistral.dataserver.handlers;

import java.util.function.Function;

public interface IEntityFieldMapper<T> {

	String getFieldName();

	String getAttributeName();

	Function<T, Object> getGetter();

}