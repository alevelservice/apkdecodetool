package lombok.core;

/* loaded from: mmessage.apk:lombok/core/TypeResolver.SCL.lombok */
public class TypeResolver {
    private ImportList imports;

    public TypeResolver(ImportList importList) {
        this.imports = importList;
    }

    public boolean typeMatches(LombokNode<?, ?, ?> context, String fqn, String typeRef) {
        return typeRefToFullyQualifiedName(context, TypeLibrary.createLibraryForSingleType(fqn), typeRef) != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x01da, code lost:
    
        return lombok.core.LombokInternalAliasing.processAliases(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String typeRefToFullyQualifiedName(lombok.core.LombokNode<?, ?, ?> r6, lombok.core.TypeLibrary r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: lombok.core.TypeResolver.typeRefToFullyQualifiedName(lombok.core.LombokNode, lombok.core.TypeLibrary, java.lang.String):java.lang.String");
    }
}
