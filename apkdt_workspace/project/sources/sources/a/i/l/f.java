package a.i.l;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Locale;

/* compiled from: TextUtilsCompat.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private static final Locale f358a = new Locale("", "");

    private static int a(@NonNull Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }

    public static int b(@Nullable Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f358a)) {
            return 0;
        }
        String b2 = b.b(locale);
        if (b2 == null) {
            return a(locale);
        }
        return (b2.equalsIgnoreCase("Arab") || b2.equalsIgnoreCase("Hebr")) ? 1 : 0;
    }
}
