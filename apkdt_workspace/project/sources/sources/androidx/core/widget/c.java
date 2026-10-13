package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;

/* compiled from: CompoundButtonCompat.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static Field f2036a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f2037b;

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull CompoundButton compoundButton, @Nullable ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof i) {
            ((i) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull CompoundButton compoundButton, @Nullable PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof i) {
            ((i) compoundButton).setSupportButtonTintMode(mode);
        }
    }

    @Nullable
    public static Drawable a(@NonNull CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f2037b) {
            try {
                f2036a = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f2036a.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f2037b = true;
        }
        Field field = f2036a;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException unused2) {
                f2036a = null;
            }
        }
        return null;
    }
}
