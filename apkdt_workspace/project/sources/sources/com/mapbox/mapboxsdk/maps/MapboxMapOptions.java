package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class MapboxMapOptions implements Parcelable {
    public static final Parcelable.Creator<MapboxMapOptions> CREATOR = new a();
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private String H;
    private String[] I;
    private String J;
    private boolean K;
    private boolean L;

    @ColorInt
    private int M;
    private float N;
    private boolean O;

    /* renamed from: e, reason: collision with root package name */
    private CameraPosition f15936e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f15937f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f15938g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f15939h;

    /* renamed from: i, reason: collision with root package name */
    private int f15940i;

    /* renamed from: j, reason: collision with root package name */
    private int[] f15941j;

    /* renamed from: k, reason: collision with root package name */
    private Drawable f15942k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f15943l;
    private int m;
    private int[] n;

    @ColorInt
    private int o;
    private boolean p;
    private int q;
    private int[] r;
    private double s;
    private double t;
    private double u;
    private double v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<MapboxMapOptions> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapboxMapOptions createFromParcel(@NonNull Parcel parcel) {
            return new MapboxMapOptions(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapboxMapOptions[] newArray(int i2) {
            return new MapboxMapOptions[i2];
        }
    }

    /* synthetic */ MapboxMapOptions(Parcel parcel, a aVar) {
        this(parcel);
    }

    @NonNull
    public static MapboxMapOptions a(@NonNull Context context) {
        return a(context, null);
    }

    public boolean A() {
        return this.C;
    }

    public boolean B() {
        return this.F;
    }

    public boolean C() {
        return this.w;
    }

    public boolean D() {
        return this.x;
    }

    public boolean E() {
        return this.K;
    }

    public boolean F() {
        return this.z;
    }

    public boolean G() {
        return this.L;
    }

    public boolean H() {
        return this.A;
    }

    @NonNull
    @Deprecated
    public MapboxMapOptions b(String str) {
        this.J = str;
        return this;
    }

    @NonNull
    public MapboxMapOptions c(double d2) {
        this.u = d2;
        return this;
    }

    @NonNull
    public MapboxMapOptions d(double d2) {
        this.s = d2;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public MapboxMapOptions e(int i2) {
        this.m = i2;
        return this;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MapboxMapOptions.class == obj.getClass()) {
            MapboxMapOptions mapboxMapOptions = (MapboxMapOptions) obj;
            if (this.f15937f != mapboxMapOptions.f15937f || this.f15938g != mapboxMapOptions.f15938g || this.f15939h != mapboxMapOptions.f15939h) {
                return false;
            }
            Drawable drawable = this.f15942k;
            if (drawable == null ? mapboxMapOptions.f15942k != null : !drawable.equals(mapboxMapOptions.f15942k)) {
                return false;
            }
            if (this.f15940i != mapboxMapOptions.f15940i || this.f15943l != mapboxMapOptions.f15943l || this.m != mapboxMapOptions.m || this.o != mapboxMapOptions.o || this.p != mapboxMapOptions.p || this.q != mapboxMapOptions.q || Double.compare(mapboxMapOptions.s, this.s) != 0 || Double.compare(mapboxMapOptions.t, this.t) != 0 || Double.compare(mapboxMapOptions.u, this.u) != 0 || Double.compare(mapboxMapOptions.v, this.v) != 0 || this.w != mapboxMapOptions.w || this.x != mapboxMapOptions.x || this.y != mapboxMapOptions.y || this.z != mapboxMapOptions.z || this.A != mapboxMapOptions.A || this.B != mapboxMapOptions.B || this.C != mapboxMapOptions.C) {
                return false;
            }
            CameraPosition cameraPosition = this.f15936e;
            if (cameraPosition == null ? mapboxMapOptions.f15936e != null : !cameraPosition.equals(mapboxMapOptions.f15936e)) {
                return false;
            }
            if (!Arrays.equals(this.f15941j, mapboxMapOptions.f15941j) || !Arrays.equals(this.n, mapboxMapOptions.n) || !Arrays.equals(this.r, mapboxMapOptions.r)) {
                return false;
            }
            String str = this.J;
            if (str == null ? mapboxMapOptions.J != null : !str.equals(mapboxMapOptions.J)) {
                return false;
            }
            if (this.D == mapboxMapOptions.D && this.E == mapboxMapOptions.E && this.F == mapboxMapOptions.F && this.G == mapboxMapOptions.G && this.H.equals(mapboxMapOptions.H) && Arrays.equals(this.I, mapboxMapOptions.I) && this.N == mapboxMapOptions.N && this.O != mapboxMapOptions.O) {
            }
        }
        return false;
    }

    @NonNull
    public MapboxMapOptions f(boolean z) {
        this.y = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions g(boolean z) {
        this.f15943l = z;
        return this;
    }

    public float getPixelRatio() {
        return this.N;
    }

    @NonNull
    public MapboxMapOptions h(boolean z) {
        this.C = z;
        return this;
    }

    public int hashCode() {
        CameraPosition cameraPosition = this.f15936e;
        int hashCode = (((((((((cameraPosition != null ? cameraPosition.hashCode() : 0) * 31) + (this.f15937f ? 1 : 0)) * 31) + (this.f15938g ? 1 : 0)) * 31) + (this.f15939h ? 1 : 0)) * 31) + this.f15940i) * 31;
        Drawable drawable = this.f15942k;
        int hashCode2 = ((((((((((((((((hashCode + (drawable != null ? drawable.hashCode() : 0)) * 31) + Arrays.hashCode(this.f15941j)) * 31) + (this.f15943l ? 1 : 0)) * 31) + this.m) * 31) + Arrays.hashCode(this.n)) * 31) + this.o) * 31) + (this.p ? 1 : 0)) * 31) + this.q) * 31) + Arrays.hashCode(this.r);
        long doubleToLongBits = Double.doubleToLongBits(this.s);
        int i2 = (hashCode2 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        long doubleToLongBits2 = Double.doubleToLongBits(this.t);
        int i3 = (i2 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
        long doubleToLongBits3 = Double.doubleToLongBits(this.u);
        int i4 = (i3 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
        long doubleToLongBits4 = Double.doubleToLongBits(this.v);
        int i5 = ((((((((((((((((i4 * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)))) * 31) + (this.w ? 1 : 0)) * 31) + (this.x ? 1 : 0)) * 31) + (this.y ? 1 : 0)) * 31) + (this.z ? 1 : 0)) * 31) + (this.A ? 1 : 0)) * 31) + (this.B ? 1 : 0)) * 31) + (this.C ? 1 : 0)) * 31;
        String str = this.J;
        int hashCode3 = (((((((((((((i5 + (str != null ? str.hashCode() : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + this.E) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31;
        String str2 = this.H;
        return ((((((hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.I)) * 31) + ((int) this.N)) * 31) + (this.O ? 1 : 0);
    }

    public void i(boolean z) {
        this.F = z;
    }

    @NonNull
    public MapboxMapOptions j(boolean z) {
        this.w = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions k(boolean z) {
        this.x = z;
        return this;
    }

    @NonNull
    @Deprecated
    public MapboxMapOptions l(boolean z) {
        this.D = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions m(boolean z) {
        this.K = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions n(boolean z) {
        this.z = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions o(boolean z) {
        this.L = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions p(boolean z) {
        this.A = z;
        return this;
    }

    @Nullable
    public String q() {
        if (this.G) {
            return this.H;
        }
        return null;
    }

    public boolean r() {
        return this.f15943l;
    }

    public int s() {
        return this.m;
    }

    public int[] t() {
        return this.n;
    }

    public double u() {
        return this.v;
    }

    public double v() {
        return this.t;
    }

    public double w() {
        return this.u;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeParcelable(this.f15936e, i2);
        parcel.writeByte(this.f15937f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f15938g ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f15940i);
        parcel.writeIntArray(this.f15941j);
        parcel.writeByte(this.f15939h ? (byte) 1 : (byte) 0);
        Drawable drawable = this.f15942k;
        parcel.writeParcelable(drawable != null ? com.mapbox.mapboxsdk.utils.a.a(drawable) : null, i2);
        parcel.writeByte(this.f15943l ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.m);
        parcel.writeIntArray(this.n);
        parcel.writeByte(this.p ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.q);
        parcel.writeIntArray(this.r);
        parcel.writeInt(this.o);
        parcel.writeDouble(this.s);
        parcel.writeDouble(this.t);
        parcel.writeDouble(this.u);
        parcel.writeDouble(this.v);
        parcel.writeByte(this.w ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.x ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.y ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.z ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.B ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.C ? (byte) 1 : (byte) 0);
        parcel.writeString(this.J);
        parcel.writeByte(this.K ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.L ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.D ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.E);
        parcel.writeByte(this.F ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.G ? (byte) 1 : (byte) 0);
        parcel.writeString(this.H);
        parcel.writeStringArray(this.I);
        parcel.writeFloat(this.N);
        parcel.writeInt(this.M);
        parcel.writeByte(this.O ? (byte) 1 : (byte) 0);
    }

    public double x() {
        return this.s;
    }

    @IntRange(from = 0)
    public int y() {
        return this.E;
    }

    @Deprecated
    public boolean z() {
        return this.D;
    }

    @Deprecated
    public MapboxMapOptions() {
        this.f15938g = true;
        this.f15939h = true;
        this.f15940i = 8388661;
        this.f15943l = true;
        this.m = 8388691;
        this.o = -1;
        this.p = true;
        this.q = 8388691;
        this.s = 0.0d;
        this.t = 25.5d;
        this.u = 0.0d;
        this.v = 60.0d;
        this.w = true;
        this.x = true;
        this.y = true;
        this.z = true;
        this.A = true;
        this.B = true;
        this.C = true;
        this.D = true;
        this.E = 4;
        this.F = false;
        this.G = true;
        this.O = true;
    }

    @NonNull
    public static MapboxMapOptions a(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.mapbox.mapboxsdk.o.mapbox_MapView, 0, 0);
        MapboxMapOptions mapboxMapOptions = new MapboxMapOptions();
        a(mapboxMapOptions, context, obtainStyledAttributes);
        return mapboxMapOptions;
    }

    @NonNull
    public MapboxMapOptions b(double d2) {
        this.t = d2;
        return this;
    }

    @NonNull
    public MapboxMapOptions c(int i2) {
        this.f15940i = i2;
        return this;
    }

    @NonNull
    public MapboxMapOptions d(@ColorInt int i2) {
        this.M = i2;
        return this;
    }

    @NonNull
    public MapboxMapOptions e(boolean z) {
        this.B = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions f(@IntRange(from = 0) int i2) {
        this.E = i2;
        return this;
    }

    public boolean g() {
        return this.f15938g;
    }

    public boolean h() {
        return this.f15939h;
    }

    public int i() {
        return this.f15940i;
    }

    public Drawable j() {
        return this.f15942k;
    }

    public int[] k() {
        return this.f15941j;
    }

    public boolean l() {
        return this.O;
    }

    public boolean m() {
        return this.f15937f;
    }

    public boolean n() {
        return this.B;
    }

    @ColorInt
    public int o() {
        return this.M;
    }

    public boolean p() {
        return this.y;
    }

    @NonNull
    public MapboxMapOptions b(boolean z) {
        this.f15938g = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions c(boolean z) {
        this.f15939h = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions d(boolean z) {
        this.O = z;
        return this;
    }

    @ColorInt
    public int e() {
        return this.o;
    }

    public CameraPosition f() {
        return this.f15936e;
    }

    @VisibleForTesting
    static MapboxMapOptions a(@NonNull MapboxMapOptions mapboxMapOptions, @NonNull Context context, @Nullable TypedArray typedArray) {
        float f2 = context.getResources().getDisplayMetrics().density;
        try {
            mapboxMapOptions.a(new CameraPosition.b(typedArray).a());
            mapboxMapOptions.b(typedArray.getString(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_apiBaseUrl));
            String string = typedArray.getString(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_apiBaseUri);
            if (!TextUtils.isEmpty(string)) {
                mapboxMapOptions.a(string);
            }
            mapboxMapOptions.p(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiZoomGestures, true));
            mapboxMapOptions.k(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiScrollGestures, true));
            mapboxMapOptions.f(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiHorizontalScrollGestures, true));
            mapboxMapOptions.j(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiRotateGestures, true));
            mapboxMapOptions.n(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiTiltGestures, true));
            mapboxMapOptions.e(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiDoubleTapGestures, true));
            mapboxMapOptions.h(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiQuickZoomGestures, true));
            mapboxMapOptions.b(typedArray.getFloat(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_cameraZoomMax, 25.5f));
            mapboxMapOptions.d(typedArray.getFloat(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_cameraZoomMin, 0.0f));
            mapboxMapOptions.a(typedArray.getFloat(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_cameraPitchMax, 60.0f));
            mapboxMapOptions.c(typedArray.getFloat(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_cameraPitchMin, 0.0f));
            mapboxMapOptions.b(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiCompass, true));
            mapboxMapOptions.c(typedArray.getInt(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiCompassGravity, 8388661));
            float f3 = 4.0f * f2;
            mapboxMapOptions.b(new int[]{(int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiCompassMarginLeft, f3), (int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiCompassMarginTop, f3), (int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiCompassMarginRight, f3), (int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiCompassMarginBottom, f3)});
            mapboxMapOptions.c(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiCompassFadeFacingNorth, true));
            Drawable drawable = typedArray.getDrawable(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiCompassDrawable);
            if (drawable == null) {
                drawable = androidx.core.content.res.e.b(context.getResources(), com.mapbox.mapboxsdk.j.mapbox_compass_icon, null);
            }
            mapboxMapOptions.a(drawable);
            mapboxMapOptions.g(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiLogo, true));
            mapboxMapOptions.e(typedArray.getInt(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiLogoGravity, 8388691));
            mapboxMapOptions.c(new int[]{(int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiLogoMarginLeft, f3), (int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiLogoMarginTop, f3), (int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiLogoMarginRight, f3), (int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiLogoMarginBottom, f3)});
            mapboxMapOptions.b(typedArray.getColor(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiAttributionTintColor, -1));
            mapboxMapOptions.a(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiAttribution, true));
            mapboxMapOptions.a(typedArray.getInt(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiAttributionGravity, 8388691));
            mapboxMapOptions.a(new int[]{(int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiAttributionMarginLeft, f2 * 92.0f), (int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiAttributionMarginTop, f3), (int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiAttributionMarginRight, f3), (int) typedArray.getDimension(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_uiAttributionMarginBottom, f3)});
            mapboxMapOptions.m(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_renderTextureMode, false));
            mapboxMapOptions.o(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_renderTextureTranslucentSurface, false));
            mapboxMapOptions.l(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_enableTilePrefetch, true));
            mapboxMapOptions.f(typedArray.getInt(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_prefetchZoomDelta, 4));
            mapboxMapOptions.i(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_enableZMediaOverlay, false));
            mapboxMapOptions.G = typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_localIdeographEnabled, true);
            int resourceId = typedArray.getResourceId(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_localIdeographFontFamilies, 0);
            if (resourceId != 0) {
                mapboxMapOptions.a(context.getResources().getStringArray(resourceId));
            } else {
                String string2 = typedArray.getString(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_localIdeographFontFamily);
                if (string2 == null) {
                    string2 = "sans-serif";
                }
                mapboxMapOptions.c(string2);
            }
            mapboxMapOptions.a(typedArray.getFloat(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_pixelRatio, 0.0f));
            mapboxMapOptions.d(typedArray.getInt(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_foregroundLoadColor, -988703));
            mapboxMapOptions.d(typedArray.getBoolean(com.mapbox.mapboxsdk.o.mapbox_MapView_mapbox_cross_source_collisions, true));
            return mapboxMapOptions;
        } finally {
            typedArray.recycle();
        }
    }

    @NonNull
    public MapboxMapOptions b(int[] iArr) {
        this.f15941j = iArr;
        return this;
    }

    @NonNull
    public MapboxMapOptions c(int[] iArr) {
        this.n = iArr;
        return this;
    }

    public int[] d() {
        return this.r;
    }

    @NonNull
    public MapboxMapOptions b(@ColorInt int i2) {
        this.o = i2;
        return this;
    }

    @NonNull
    public MapboxMapOptions c(String str) {
        this.H = com.mapbox.mapboxsdk.utils.e.a(str);
        return this;
    }

    public boolean b() {
        return this.p;
    }

    public int c() {
        return this.q;
    }

    private MapboxMapOptions(Parcel parcel) {
        this.f15938g = true;
        this.f15939h = true;
        this.f15940i = 8388661;
        this.f15943l = true;
        this.m = 8388691;
        this.o = -1;
        this.p = true;
        this.q = 8388691;
        this.s = 0.0d;
        this.t = 25.5d;
        this.u = 0.0d;
        this.v = 60.0d;
        this.w = true;
        this.x = true;
        this.y = true;
        this.z = true;
        this.A = true;
        this.B = true;
        this.C = true;
        this.D = true;
        this.E = 4;
        this.F = false;
        this.G = true;
        this.O = true;
        this.f15936e = (CameraPosition) parcel.readParcelable(CameraPosition.class.getClassLoader());
        this.f15937f = parcel.readByte() != 0;
        this.f15938g = parcel.readByte() != 0;
        this.f15940i = parcel.readInt();
        this.f15941j = parcel.createIntArray();
        this.f15939h = parcel.readByte() != 0;
        Bitmap bitmap = (Bitmap) parcel.readParcelable(MapboxMapOptions.class.getClassLoader());
        if (bitmap != null) {
            this.f15942k = new BitmapDrawable(bitmap);
        }
        this.f15943l = parcel.readByte() != 0;
        this.m = parcel.readInt();
        this.n = parcel.createIntArray();
        this.p = parcel.readByte() != 0;
        this.q = parcel.readInt();
        this.r = parcel.createIntArray();
        this.o = parcel.readInt();
        this.s = parcel.readDouble();
        this.t = parcel.readDouble();
        this.u = parcel.readDouble();
        this.v = parcel.readDouble();
        this.w = parcel.readByte() != 0;
        this.x = parcel.readByte() != 0;
        this.y = parcel.readByte() != 0;
        this.z = parcel.readByte() != 0;
        this.A = parcel.readByte() != 0;
        this.B = parcel.readByte() != 0;
        this.C = parcel.readByte() != 0;
        this.J = parcel.readString();
        this.K = parcel.readByte() != 0;
        this.L = parcel.readByte() != 0;
        this.D = parcel.readByte() != 0;
        this.E = parcel.readInt();
        this.F = parcel.readByte() != 0;
        this.G = parcel.readByte() != 0;
        this.H = parcel.readString();
        this.I = parcel.createStringArray();
        this.N = parcel.readFloat();
        this.M = parcel.readInt();
        this.O = parcel.readByte() != 0;
    }

    @NonNull
    public MapboxMapOptions a(String str) {
        this.J = str;
        return this;
    }

    @NonNull
    public MapboxMapOptions a(CameraPosition cameraPosition) {
        this.f15936e = cameraPosition;
        return this;
    }

    @NonNull
    public MapboxMapOptions a(double d2) {
        this.v = d2;
        return this;
    }

    @NonNull
    public MapboxMapOptions a(Drawable drawable) {
        this.f15942k = drawable;
        return this;
    }

    @NonNull
    public MapboxMapOptions a(boolean z) {
        this.p = z;
        return this;
    }

    @NonNull
    public MapboxMapOptions a(int i2) {
        this.q = i2;
        return this;
    }

    @NonNull
    public MapboxMapOptions a(int[] iArr) {
        this.r = iArr;
        return this;
    }

    @NonNull
    public MapboxMapOptions a(String... strArr) {
        this.H = com.mapbox.mapboxsdk.utils.e.a(strArr);
        return this;
    }

    @NonNull
    public MapboxMapOptions a(float f2) {
        this.N = f2;
        return this;
    }

    @Deprecated
    public String a() {
        return this.J;
    }
}
