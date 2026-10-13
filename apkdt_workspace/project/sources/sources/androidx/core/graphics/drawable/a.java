package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: DrawableCompat.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static Method f1826a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1827b;

    /* renamed from: c, reason: collision with root package name */
    private static Method f1828c;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f1829d;

    public static void a(@NonNull Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(@NonNull Drawable drawable, @ColorInt int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i2);
        } else if (drawable instanceof b) {
            ((b) drawable).setTint(i2);
        }
    }

    public static int c(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    public static ColorFilter d(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    public static int e(@NonNull Drawable drawable) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return drawable.getLayoutDirection();
        }
        if (i2 >= 17) {
            if (!f1829d) {
                try {
                    f1828c = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                    f1828c.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f1829d = true;
            }
            Method method = f1828c;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(drawable, new Object[0])).intValue();
                } catch (Exception unused2) {
                    f1828c = null;
                }
            }
        }
        return 0;
    }

    public static boolean f(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    @Deprecated
    public static void g(@NonNull Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T h(@NonNull Drawable drawable) {
        return drawable instanceof c ? (T) ((c) drawable).a() : drawable;
    }

    public static Drawable i(@NonNull Drawable drawable) {
        int i2 = Build.VERSION.SDK_INT;
        return i2 >= 23 ? drawable : i2 >= 21 ? !(drawable instanceof b) ? new e(drawable) : drawable : !(drawable instanceof b) ? new d(drawable) : drawable;
    }

    public static void a(@NonNull Drawable drawable, float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f2, f3);
        }
    }

    public static void a(@NonNull Drawable drawable, int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i2, i3, i4, i5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(@NonNull Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            drawable.clearColorFilter();
            return;
        }
        if (i2 >= 21) {
            drawable.clearColorFilter();
            if (drawable instanceof InsetDrawable) {
                b(((InsetDrawable) drawable).getDrawable());
                return;
            }
            if (drawable instanceof c) {
                b(((c) drawable).a());
                return;
            }
            if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
                return;
            }
            int childCount = drawableContainerState.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                Drawable child = drawableContainerState.getChild(i3);
                if (child != null) {
                    b(child);
                }
            }
            return;
        }
        drawable.clearColorFilter();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull Drawable drawable, @Nullable ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof b) {
            ((b) drawable).setTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull Drawable drawable, @NonNull PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (drawable instanceof b) {
            ((b) drawable).setTintMode(mode);
        }
    }

    public static void a(@NonNull Drawable drawable, @NonNull Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    public static boolean a(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    public static void a(@NonNull Drawable drawable, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    public static boolean a(@NonNull Drawable drawable, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            return drawable.setLayoutDirection(i2);
        }
        if (i3 >= 17) {
            if (!f1827b) {
                try {
                    f1826a = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                    f1826a.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f1827b = true;
            }
            Method method = f1826a;
            if (method != null) {
                try {
                    method.invoke(drawable, Integer.valueOf(i2));
                    return true;
                } catch (Exception unused2) {
                    f1826a = null;
                }
            }
        }
        return false;
    }
}
