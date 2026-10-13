package lombok.core.configuration;

/* loaded from: mmessage.apk:lombok/core/configuration/ConfigurationValueParser.SCL.lombok */
interface ConfigurationValueParser {
    Object parse(String str);

    String description();

    String exampleValue();
}
