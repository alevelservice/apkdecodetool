package a.i.h;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.b;
import com.alipay.mobile.security.bio.api.BioError;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypefaceCompatBaseImpl.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private ConcurrentHashMap<Long, FontResourcesParserCompat.b> f317a = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TypefaceCompatBaseImpl.java */
    /* loaded from: classes.dex */
    public class a implements c<b.f> {
        a(j jVar) {
        }

        @Override // a.i.h.j.c
        public int a(b.f fVar) {
            return fVar.d();
        }

        @Override // a.i.h.j.c
        public boolean b(b.f fVar) {
            return fVar.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TypefaceCompatBaseImpl.java */
    /* loaded from: classes.dex */
    public class b implements c<FontResourcesParserCompat.c> {
        b(j jVar) {
        }

        @Override // a.i.h.j.c
        public int a(FontResourcesParserCompat.c cVar) {
            return cVar.e();
        }

        @Override // a.i.h.j.c
        public boolean b(FontResourcesParserCompat.c cVar) {
            return cVar.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TypefaceCompatBaseImpl.java */
    /* loaded from: classes.dex */
    public interface c<T> {
        int a(T t);

        boolean b(T t);
    }

    private static <T> T a(T[] tArr, int i2, c<T> cVar) {
        int i3 = (i2 & 1) == 0 ? BioError.ERROR_SINGLETON_BUSY : 700;
        boolean z = (i2 & 2) != 0;
        T t = null;
        int i4 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int abs = (Math.abs(cVar.a(t2) - i3) * 2) + (cVar.b(t2) == z ? 0 : 1);
            if (t == null || i4 > abs) {
                t = t2;
                i4 = abs;
            }
        }
        return t;
    }

    private static long b(@Nullable Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b.f a(b.f[] fVarArr, int i2) {
        return (b.f) a(fVarArr, i2, new a(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Typeface a(Context context, InputStream inputStream) {
        File a2 = k.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (k.a(a2, inputStream)) {
                return Typeface.createFromFile(a2.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            a2.delete();
        }
    }

    @Nullable
    public Typeface a(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull b.f[] fVarArr, int i2) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (fVarArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(a(fVarArr, i2).c());
        } catch (IOException unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface a2 = a(context, inputStream);
            k.a(inputStream);
            return a2;
        } catch (IOException unused2) {
            k.a(inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            k.a(inputStream2);
            throw th;
        }
    }

    private FontResourcesParserCompat.c a(FontResourcesParserCompat.b bVar, int i2) {
        return (FontResourcesParserCompat.c) a(bVar.a(), i2, new b(this));
    }

    @Nullable
    public Typeface a(Context context, FontResourcesParserCompat.b bVar, Resources resources, int i2) {
        FontResourcesParserCompat.c a2 = a(bVar, i2);
        if (a2 == null) {
            return null;
        }
        Typeface a3 = d.a(context, resources, a2.b(), a2.a(), i2);
        a(a3, bVar);
        return a3;
    }

    @Nullable
    public Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        File a2 = k.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (k.a(a2, resources, i2)) {
                return Typeface.createFromFile(a2.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            a2.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public FontResourcesParserCompat.b a(Typeface typeface) {
        long b2 = b(typeface);
        if (b2 == 0) {
            return null;
        }
        return this.f317a.get(Long.valueOf(b2));
    }

    private void a(Typeface typeface, FontResourcesParserCompat.b bVar) {
        long b2 = b(typeface);
        if (b2 != 0) {
            this.f317a.put(Long.valueOf(b2), bVar);
        }
    }
}
