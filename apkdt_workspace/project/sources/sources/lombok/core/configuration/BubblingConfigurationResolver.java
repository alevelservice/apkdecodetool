package lombok.core.configuration;

/* loaded from: mmessage.apk:lombok/core/configuration/BubblingConfigurationResolver.SCL.lombok */
public class BubblingConfigurationResolver implements ConfigurationResolver {
    private final ConfigurationFile start;
    private final ConfigurationFileToSource fileMapper;

    public BubblingConfigurationResolver(ConfigurationFile start, ConfigurationFileToSource fileMapper) {
        this.start = start;
        this.fileMapper = fileMapper;
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0116, code lost:
    
        if (r7 == false) goto L45;
     */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.util.List, T, java.util.ArrayList] */
    @Override // lombok.core.configuration.ConfigurationResolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T resolve(lombok.core.configuration.ConfigurationKey<T> r4) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: lombok.core.configuration.BubblingConfigurationResolver.resolve(lombok.core.configuration.ConfigurationKey):java.lang.Object");
    }
}
