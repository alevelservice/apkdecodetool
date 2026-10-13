package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ComplexColorCompat.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private final Shader f1804a;

    /* renamed from: b, reason: collision with root package name */
    private final ColorStateList f1805b;

    /* renamed from: c, reason: collision with root package name */
    private int f1806c;

    private b(Shader shader, ColorStateList colorStateList, @ColorInt int i2) {
        this.f1804a = shader;
        this.f1805b = colorStateList;
        this.f1806c = i2;
    }

    static b a(@NonNull Shader shader) {
        return new b(shader, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b b(@ColorInt int i2) {
        return new b(null, null, i2);
    }

    public boolean c() {
        return this.f1804a != null;
    }

    public boolean d() {
        ColorStateList colorStateList;
        return this.f1804a == null && (colorStateList = this.f1805b) != null && colorStateList.isStateful();
    }

    public boolean e() {
        return c() || this.f1806c != 0;
    }

    static b a(@NonNull ColorStateList colorStateList) {
        return new b(null, colorStateList, colorStateList.getDefaultColor());
    }

    @Nullable
    public Shader b() {
        return this.f1804a;
    }

    @Nullable
    public static b b(@NonNull Resources resources, @ColorRes int i2, @Nullable Resources.Theme theme) {
        try {
            return a(resources, i2, theme);
        } catch (Exception unused) {
            return null;
        }
    }

    @ColorInt
    public int a() {
        return this.f1806c;
    }

    public void a(@ColorInt int i2) {
        this.f1806c = i2;
    }

    public boolean a(int[] iArr) {
        if (d()) {
            ColorStateList colorStateList = this.f1805b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f1806c) {
                this.f1806c = colorForState;
                return true;
            }
        }
        return false;
    }

    @NonNull
    private static b a(@NonNull Resources resources, @ColorRes int i2, @Nullable Resources.Theme theme) {
        int next;
        XmlResourceParser xml = resources.getXml(i2);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            char c2 = 65535;
            int hashCode = name.hashCode();
            if (hashCode != 89650992) {
                if (hashCode == 1191572447 && name.equals("selector")) {
                    c2 = 0;
                }
            } else if (name.equals("gradient")) {
                c2 = 1;
            }
            if (c2 == 0) {
                return a(a.a(resources, xml, asAttributeSet, theme));
            }
            if (c2 == 1) {
                return a(c.a(resources, xml, asAttributeSet, theme));
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        throw new XmlPullParserException("No start tag found");
    }
}
