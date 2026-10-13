package i;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* compiled from: MediaType.java */
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f18797d = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: e, reason: collision with root package name */
    private static final Pattern f18798e = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a, reason: collision with root package name */
    private final String f18799a;

    /* renamed from: b, reason: collision with root package name */
    private final String f18800b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private final String f18801c;

    private u(String str, String str2, String str3, @Nullable String str4) {
        this.f18799a = str;
        this.f18800b = str2;
        this.f18801c = str4;
    }

    public static u a(String str) {
        Matcher matcher = f18797d.matcher(str);
        if (matcher.lookingAt()) {
            String lowerCase = matcher.group(1).toLowerCase(Locale.US);
            String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
            String str2 = null;
            Matcher matcher2 = f18798e.matcher(str);
            for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
                matcher2.region(end, str.length());
                if (matcher2.lookingAt()) {
                    String group = matcher2.group(1);
                    if (group != null && group.equalsIgnoreCase("charset")) {
                        String group2 = matcher2.group(2);
                        if (group2 != null) {
                            if (group2.startsWith("'") && group2.endsWith("'") && group2.length() > 2) {
                                group2 = group2.substring(1, group2.length() - 1);
                            }
                        } else {
                            group2 = matcher2.group(3);
                        }
                        if (str2 != null && !group2.equalsIgnoreCase(str2)) {
                            throw new IllegalArgumentException("Multiple charsets defined: \"" + str2 + "\" and: \"" + group2 + "\" for: \"" + str + '\"');
                        }
                        str2 = group2;
                    }
                } else {
                    throw new IllegalArgumentException("Parameter is not formatted correctly: \"" + str.substring(end) + "\" for: \"" + str + '\"');
                }
            }
            return new u(str, lowerCase, lowerCase2, str2);
        }
        throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
    }

    @Nullable
    public static u b(String str) {
        try {
            return a(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof u) && ((u) obj).f18799a.equals(this.f18799a);
    }

    public int hashCode() {
        return this.f18799a.hashCode();
    }

    public String toString() {
        return this.f18799a;
    }

    public String b() {
        return this.f18800b;
    }

    @Nullable
    public Charset a() {
        return a((Charset) null);
    }

    @Nullable
    public Charset a(@Nullable Charset charset) {
        try {
            return this.f18801c != null ? Charset.forName(this.f18801c) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }
}
