/*
 * generated by Xtext 2.11.0
 */
package com.rainerschuster.asdl

import org.eclipse.xtext.naming.IQualifiedNameProvider
import com.rainerschuster.asdl.naming.AsdlQualifiedNameProvider

/**
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
class AsdlRuntimeModule extends AbstractAsdlRuntimeModule {
	
	override Class<? extends IQualifiedNameProvider> bindIQualifiedNameProvider() {
		return typeof(AsdlQualifiedNameProvider);
	}
}