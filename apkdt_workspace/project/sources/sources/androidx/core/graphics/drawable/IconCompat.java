package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.alipay.mobile.security.bio.utils.FileUtil;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: j, reason: collision with root package name */
    static final PorterDuff.Mode f1816j = PorterDuff.Mode.SRC_IN;

    /* renamed from: a, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int f1817a;

    /* renamed from: b, reason: collision with root package name */
    Object f1818b;

    /* renamed from: c, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY})
    public byte[] f1819c;

    /* renamed from: d, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY})
    public Parcelable f1820d;

    /* renamed from: e, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY})
    public int f1821e;

    /* renamed from: f, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY})
    public int f1822f;

    /* renamed from: g, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY})
    public ColorStateList f1823g;

    /* renamed from: h, reason: collision with root package name */
    PorterDuff.Mode f1824h;

    /* renamed from: i, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY})
    public String f1825i;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY})
    /* loaded from: classes.dex */
    public @interface IconType {
    }

    @RestrictTo({RestrictTo.a.LIBRARY})
    public IconCompat() {
        this.f1817a = -1;
        this.f1819c = null;
        this.f1820d = null;
        this.f1821e = 0;
        this.f1822f = 0;
        this.f1823g = null;
        this.f1824h = f1816j;
        this.f1825i = null;
    }

    public static IconCompat a(Context context, @DrawableRes int i2) {
        if (context != null) {
            return a(context.getResources(), context.getPackageName(), i2);
        }
        throw new IllegalArgumentException("Context must not be null.");
    }

    private static String a(int i2) {
        switch (i2) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Drawable e(Context context) {
        switch (this.f1817a) {
            case 1:
                return new BitmapDrawable(context.getResources(), (Bitmap) this.f1818b);
            case 2:
                String b2 = b();
                if (TextUtils.isEmpty(b2)) {
                    b2 = context.getPackageName();
                }
                try {
                    return androidx.core.content.res.e.b(a(context, b2), this.f1821e, context.getTheme());
                } catch (RuntimeException unused) {
                    String.format("Unable to load resource 0x%08x from pkg=%s", Integer.valueOf(this.f1821e), this.f1818b);
                    break;
                }
            case 3:
                return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray((byte[]) this.f1818b, this.f1821e, this.f1822f));
            case 4:
                InputStream d2 = d(context);
                if (d2 != null) {
                    return new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(d2));
                }
                return null;
            case 5:
                return new BitmapDrawable(context.getResources(), a((Bitmap) this.f1818b, false));
            case 6:
                InputStream d3 = d(context);
                if (d3 != null) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        return new AdaptiveIconDrawable(null, new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(d3)));
                    }
                    return new BitmapDrawable(context.getResources(), a(BitmapFactory.decodeStream(d3), false));
                }
                return null;
            default:
                return null;
        }
    }

    @NonNull
    public String b() {
        if (this.f1817a == -1 && Build.VERSION.SDK_INT >= 23) {
            return b((Icon) this.f1818b);
        }
        if (this.f1817a == 2) {
            return ((String) this.f1818b).split(":", -1)[0];
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public int c() {
        if (this.f1817a == -1 && Build.VERSION.SDK_INT >= 23) {
            return c((Icon) this.f1818b);
        }
        return this.f1817a;
    }

    @NonNull
    public Uri d() {
        if (this.f1817a == -1 && Build.VERSION.SDK_INT >= 23) {
            return d((Icon) this.f1818b);
        }
        int i2 = this.f1817a;
        if (i2 != 4 && i2 != 6) {
            throw new IllegalStateException("called getUri() on " + this);
        }
        return Uri.parse((String) this.f1818b);
    }

    public Bundle f() {
        Bundle bundle = new Bundle();
        switch (this.f1817a) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.f1818b);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.f1818b);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.f1818b);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.f1818b);
                break;
        }
        bundle.putInt("type", this.f1817a);
        bundle.putInt("int1", this.f1821e);
        bundle.putInt("int2", this.f1822f);
        ColorStateList colorStateList = this.f1823g;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.f1824h;
        if (mode != f1816j) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    @NonNull
    @RequiresApi(23)
    @Deprecated
    public Icon g() {
        return c((Context) null);
    }

    @NonNull
    public String toString() {
        if (this.f1817a == -1) {
            return String.valueOf(this.f1818b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(a(this.f1817a));
        switch (this.f1817a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f1818b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f1818b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(b());
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(a())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f1821e);
                if (this.f1822f != 0) {
                    sb.append(" off=");
                    sb.append(this.f1822f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f1818b);
                break;
        }
        if (this.f1823g != null) {
            sb.append(" tint=");
            sb.append(this.f1823g);
        }
        if (this.f1824h != f1816j) {
            sb.append(" mode=");
            sb.append(this.f1824h);
        }
        sb.append(")");
        return sb.toString();
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static IconCompat a(Resources resources, String str, @DrawableRes int i2) {
        if (str == null) {
            throw new IllegalArgumentException("Package must not be null.");
        }
        if (i2 != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f1821e = i2;
            if (resources != null) {
                try {
                    iconCompat.f1818b = resources.getResourceName(i2);
                } catch (Resources.NotFoundException unused) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            } else {
                iconCompat.f1818b = str;
            }
            return iconCompat;
        }
        throw new IllegalArgumentException("Drawable resource ID must not be 0");
    }

    @NonNull
    @RequiresApi(23)
    public Icon c(@Nullable Context context) {
        Icon createWithBitmap;
        switch (this.f1817a) {
            case -1:
                return (Icon) this.f1818b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                createWithBitmap = Icon.createWithBitmap((Bitmap) this.f1818b);
                break;
            case 2:
                createWithBitmap = Icon.createWithResource(b(), this.f1821e);
                break;
            case 3:
                createWithBitmap = Icon.createWithData((byte[]) this.f1818b, this.f1821e, this.f1822f);
                break;
            case 4:
                createWithBitmap = Icon.createWithContentUri((String) this.f1818b);
                break;
            case 5:
                if (Build.VERSION.SDK_INT >= 26) {
                    createWithBitmap = Icon.createWithAdaptiveBitmap((Bitmap) this.f1818b);
                    break;
                } else {
                    createWithBitmap = Icon.createWithBitmap(a((Bitmap) this.f1818b, false));
                    break;
                }
            case 6:
                if (context != null) {
                    InputStream d2 = d(context);
                    if (d2 != null) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            createWithBitmap = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(d2));
                            break;
                        } else {
                            createWithBitmap = Icon.createWithBitmap(a(BitmapFactory.decodeStream(d2), false));
                            break;
                        }
                    } else {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + d());
                    }
                } else {
                    throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + d());
                }
        }
        ColorStateList colorStateList = this.f1823g;
        if (colorStateList != null) {
            createWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f1824h;
        if (mode != f1816j) {
            createWithBitmap.setTintMode(mode);
        }
        return createWithBitmap;
    }

    private InputStream d(Context context) {
        Uri d2 = d();
        String scheme = d2.getScheme();
        if (!"content".equals(scheme) && !"file".equals(scheme)) {
            try {
                return new FileInputStream(new File((String) this.f1818b));
            } catch (FileNotFoundException unused) {
                String str = "Unable to load image from path: " + d2;
                return null;
            }
        }
        try {
            return context.getContentResolver().openInputStream(d2);
        } catch (Exception unused2) {
            String str2 = "Unable to load image from URI: " + d2;
            return null;
        }
    }

    @Nullable
    public Drawable b(@NonNull Context context) {
        a(context);
        if (Build.VERSION.SDK_INT >= 23) {
            return c(context).loadDrawable(context);
        }
        Drawable e2 = e(context);
        if (e2 != null && (this.f1823g != null || this.f1824h != f1816j)) {
            e2.mutate();
            a.a(e2, this.f1823g);
            a.a(e2, this.f1824h);
        }
        return e2;
    }

    private IconCompat(int i2) {
        this.f1817a = -1;
        this.f1819c = null;
        this.f1820d = null;
        this.f1821e = 0;
        this.f1822f = 0;
        this.f1823g = null;
        this.f1824h = f1816j;
        this.f1825i = null;
        this.f1817a = i2;
    }

    public static IconCompat a(Bitmap bitmap) {
        if (bitmap != null) {
            IconCompat iconCompat = new IconCompat(1);
            iconCompat.f1818b = bitmap;
            return iconCompat;
        }
        throw new IllegalArgumentException("Bitmap must not be null.");
    }

    public static IconCompat a(String str) {
        if (str != null) {
            IconCompat iconCompat = new IconCompat(4);
            iconCompat.f1818b = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Uri must not be null.");
    }

    @Nullable
    @RequiresApi(23)
    private static String b(@NonNull Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    @Nullable
    @RequiresApi(23)
    private static Uri d(@NonNull Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getUri();
        }
        try {
            return (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    @IdRes
    public int a() {
        if (this.f1817a == -1 && Build.VERSION.SDK_INT >= 23) {
            return a((Icon) this.f1818b);
        }
        if (this.f1817a == 2) {
            return this.f1821e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(@NonNull Context context) {
        if (this.f1817a == 2) {
            String str = (String) this.f1818b;
            if (str.contains(":")) {
                String str2 = str.split(":", -1)[1];
                String str3 = str2.split("/", -1)[0];
                String str4 = str2.split("/", -1)[1];
                String str5 = str.split(":", -1)[0];
                int identifier = a(context, str5).getIdentifier(str4, str3, str5);
                if (this.f1821e != identifier) {
                    String str6 = "Id has changed for " + str5 + "/" + str4;
                    this.f1821e = identifier;
                }
            }
        }
    }

    public void e() {
        this.f1824h = PorterDuff.Mode.valueOf(this.f1825i);
        switch (this.f1817a) {
            case -1:
                Parcelable parcelable = this.f1820d;
                if (parcelable != null) {
                    this.f1818b = parcelable;
                    return;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f1820d;
                if (parcelable2 != null) {
                    this.f1818b = parcelable2;
                    return;
                }
                byte[] bArr = this.f1819c;
                this.f1818b = bArr;
                this.f1817a = 3;
                this.f1821e = 0;
                this.f1822f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                this.f1818b = new String(this.f1819c, Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1818b = this.f1819c;
                return;
        }
    }

    @RequiresApi(23)
    private static int c(@NonNull Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException unused) {
            String str = "Unable to get icon type " + icon;
            return -1;
        } catch (NoSuchMethodException unused2) {
            String str2 = "Unable to get icon type " + icon;
            return -1;
        } catch (InvocationTargetException unused3) {
            String str3 = "Unable to get icon type " + icon;
            return -1;
        }
    }

    private static Resources a(Context context, String str) {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, FileUtil.STREAM_BUFFER_SIZE);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            String.format("Unable to find pkg=%s for icon", str);
            return null;
        }
    }

    public void a(boolean z) {
        this.f1825i = this.f1824h.name();
        switch (this.f1817a) {
            case -1:
                if (!z) {
                    this.f1820d = (Parcelable) this.f1818b;
                    return;
                }
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (z) {
                    Bitmap bitmap = (Bitmap) this.f1818b;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.f1819c = byteArrayOutputStream.toByteArray();
                    return;
                }
                this.f1820d = (Parcelable) this.f1818b;
                return;
            case 2:
                this.f1819c = ((String) this.f1818b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1819c = (byte[]) this.f1818b;
                return;
            case 4:
            case 6:
                this.f1819c = this.f1818b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    @DrawableRes
    @IdRes
    @RequiresApi(23)
    private static int a(@NonNull Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return 0;
        }
    }

    @VisibleForTesting
    static Bitmap a(Bitmap bitmap, boolean z) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f2 = min;
        float f3 = 0.5f * f2;
        float f4 = 0.9166667f * f3;
        if (z) {
            float f5 = 0.010416667f * f2;
            paint.setColor(0);
            paint.setShadowLayer(f5, 0.0f, f2 * 0.020833334f, 1023410176);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.setShadowLayer(f5, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2, (-(bitmap.getHeight() - min)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f3, f3, f4, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }
}
