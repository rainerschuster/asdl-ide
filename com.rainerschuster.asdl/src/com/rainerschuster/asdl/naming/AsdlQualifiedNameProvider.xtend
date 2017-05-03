package com.rainerschuster.asdl.naming

import org.eclipse.xtext.naming.DefaultDeclarativeQualifiedNameProvider
import org.eclipse.xtext.naming.QualifiedName
import com.rainerschuster.asdl.asdl.Module
import com.rainerschuster.asdl.asdl.Constructor
import org.eclipse.xtext.EcoreUtil2

class AsdlQualifiedNameProvider extends DefaultDeclarativeQualifiedNameProvider {

	def QualifiedName qualifiedName(Constructor c) {
		val module = EcoreUtil2.getContainerOfType(c, typeof(Module));
		return QualifiedName.create(module.name, c.name);
	}

}