package androidx.core.content.res;

import a.i.g;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.alipay.mobile.security.bio.api.BioError;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class FontResourcesParserCompat {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FetchStrategy {
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    /* loaded from: classes.dex */
    public static final class b implements a {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final c[] f1794a;

        public b(@NonNull c[] cVarArr) {
            this.f1794a = cVarArr;
        }

        @NonNull
        public c[] a() {
            return this.f1794a;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final String f1795a;

        /* renamed from: b, reason: collision with root package name */
        private int f1796b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f1797c;

        /* renamed from: d, reason: collision with root package name */
        private String f1798d;

        /* renamed from: e, reason: collision with root package name */
        private int f1799e;

        /* renamed from: f, reason: collision with root package name */
        private int f1800f;

        public c(@NonNull String str, int i2, boolean z, @Nullable String str2, int i3, int i4) {
            this.f1795a = str;
            this.f1796b = i2;
            this.f1797c = z;
            this.f1798d = str2;
            this.f1799e = i3;
            this.f1800f = i4;
        }

        @NonNull
        public String a() {
            return this.f1795a;
        }

        public int b() {
            return this.f1800f;
        }

        public int c() {
            return this.f1799e;
        }

        @Nullable
        public String d() {
            return this.f1798d;
        }

        public int e() {
            return this.f1796b;
        }

        public boolean f() {
            return this.f1797c;
        }
    }

    /* loaded from: classes.dex */
    public static final class d implements a {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final androidx.core.provider.a f1801a;

        /* renamed from: b, reason: collision with root package name */
        private final int f1802b;

        /* renamed from: c, reason: collision with root package name */
        private final int f1803c;

        public d(@NonNull androidx.core.provider.a aVar, int i2, int i3) {
            this.f1801a = aVar;
            this.f1803c = i2;
            this.f1802b = i3;
        }

        public int a() {
            return this.f1803c;
        }

        @NonNull
        public androidx.core.provider.a b() {
            return this.f1801a;
        }

        public int c() {
            return this.f1802b;
        }
    }

    @Nullable
    public static a a(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    @Nullable
    private static a b(XmlPullParser xmlPullParser, Resources resources) {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return c(xmlPullParser, resources);
        }
        a(xmlPullParser);
        return null;
    }

    @Nullable
    private static a c(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), g.FontFamily);
        String string = obtainAttributes.getString(g.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(g.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(g.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(g.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(g.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(g.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                a(xmlPullParser);
            }
            return new d(new androidx.core.provider.a(string, string2, string3, a(resources, resourceId)), integer, integer2);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(d(xmlPullParser, resources));
                } else {
                    a(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new b((c[]) arrayList.toArray(new c[arrayList.size()]));
    }

    private static c d(XmlPullParser xmlPullParser, Resources resources) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), g.FontFamilyFont);
        if (obtainAttributes.hasValue(g.FontFamilyFont_fontWeight)) {
            i2 = g.FontFamilyFont_fontWeight;
        } else {
            i2 = g.FontFamilyFont_android_fontWeight;
        }
        int i7 = obtainAttributes.getInt(i2, BioError.ERROR_SINGLETON_BUSY);
        if (obtainAttributes.hasValue(g.FontFamilyFont_fontStyle)) {
            i3 = g.FontFamilyFont_fontStyle;
        } else {
            i3 = g.FontFamilyFont_android_fontStyle;
        }
        boolean z = 1 == obtainAttributes.getInt(i3, 0);
        if (obtainAttributes.hasValue(g.FontFamilyFont_ttcIndex)) {
            i4 = g.FontFamilyFont_ttcIndex;
        } else {
            i4 = g.FontFamilyFont_android_ttcIndex;
        }
        if (obtainAttributes.hasValue(g.FontFamilyFont_fontVariationSettings)) {
            i5 = g.FontFamilyFont_fontVariationSettings;
        } else {
            i5 = g.FontFamilyFont_android_fontVariationSettings;
        }
        String string = obtainAttributes.getString(i5);
        int i8 = obtainAttributes.getInt(i4, 0);
        if (obtainAttributes.hasValue(g.FontFamilyFont_font)) {
            i6 = g.FontFamilyFont_font;
        } else {
            i6 = g.FontFamilyFont_android_font;
        }
        int resourceId = obtainAttributes.getResourceId(i6, 0);
        String string2 = obtainAttributes.getString(i6);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            a(xmlPullParser);
        }
        return new c(string2, i7, z, string, i8, resourceId);
    }

    private static int a(TypedArray typedArray, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i2);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i2, typedValue);
        return typedValue.type;
    }

    public static List<List<byte[]>> a(Resources resources, @ArrayRes int i2) {
        if (i2 == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i2);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(obtainTypedArray, 0) == 1) {
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    int resourceId = obtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        arrayList.add(a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(a(resources.getStringArray(i2)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    private static List<byte[]> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    private static void a(XmlPullParser xmlPullParser) {
        int i2 = 1;
        while (i2 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i2++;
            } else if (next == 3) {
                i2--;
            }
        }
    }
}
