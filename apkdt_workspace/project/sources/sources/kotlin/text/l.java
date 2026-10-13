package kotlin.text;

import kotlin.jvm.d.h;
import kotlin.sequences.g;
import org.jetbrains.annotations.NotNull;

/* compiled from: StringsJVM.kt */
/* loaded from: classes2.dex */
public class l extends k {
    public static /* synthetic */ String a(String str, char c2, char c3, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return a(str, c2, c3, z);
    }

    @NotNull
    public static final String a(@NotNull String str, char c2, char c3, boolean z) {
        String a2;
        h.b(str, "$this$replace");
        if (!z) {
            String replace = str.replace(c2, c3);
            h.a((Object) replace, "(this as java.lang.Strin…replace(oldChar, newChar)");
            return replace;
        }
        a2 = g.a(m.a(str, new char[]{c2}, z, 0, 4, (Object) null), String.valueOf(c3), null, null, 0, null, null, 62, null);
        return a2;
    }

    public static /* synthetic */ boolean a(String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return a(str, str2, z);
    }

    public static final boolean a(@NotNull String str, @NotNull String str2, boolean z) {
        h.b(str, "$this$startsWith");
        h.b(str2, "prefix");
        if (!z) {
            return str.startsWith(str2);
        }
        return a(str, 0, str2, 0, str2.length(), z);
    }

    public static final boolean a(@NotNull String str, int i2, @NotNull String str2, int i3, int i4, boolean z) {
        h.b(str, "$this$regionMatches");
        h.b(str2, "other");
        if (!z) {
            return str.regionMatches(i2, str2, i3, i4);
        }
        return str.regionMatches(z, i2, str2, i3, i4);
    }
}
