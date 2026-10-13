package e.f.f.g;

import androidx.annotation.ColorInt;
import com.facebook.common.internal.h;
import java.util.Arrays;
import javax.annotation.Nullable;

/* compiled from: RoundingParams.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private a f17400a = a.BITMAP_ONLY;

    /* renamed from: b, reason: collision with root package name */
    private boolean f17401b = false;

    /* renamed from: c, reason: collision with root package name */
    private float[] f17402c = null;

    /* renamed from: d, reason: collision with root package name */
    private int f17403d = 0;

    /* renamed from: e, reason: collision with root package name */
    private float f17404e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    private int f17405f = 0;

    /* renamed from: g, reason: collision with root package name */
    private float f17406g = 0.0f;

    /* renamed from: h, reason: collision with root package name */
    private boolean f17407h = false;

    /* compiled from: RoundingParams.java */
    /* loaded from: classes.dex */
    public enum a {
        OVERLAY_COLOR,
        BITMAP_ONLY
    }

    private float[] i() {
        if (this.f17402c == null) {
            this.f17402c = new float[8];
        }
        return this.f17402c;
    }

    public e a(boolean z) {
        this.f17401b = z;
        return this;
    }

    public e b(@ColorInt int i2) {
        this.f17403d = i2;
        this.f17400a = a.OVERLAY_COLOR;
        return this;
    }

    public float[] c() {
        return this.f17402c;
    }

    public int d() {
        return this.f17403d;
    }

    public float e() {
        return this.f17406g;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f17401b == eVar.f17401b && this.f17403d == eVar.f17403d && Float.compare(eVar.f17404e, this.f17404e) == 0 && this.f17405f == eVar.f17405f && Float.compare(eVar.f17406g, this.f17406g) == 0 && this.f17400a == eVar.f17400a && this.f17407h == eVar.f17407h) {
            return Arrays.equals(this.f17402c, eVar.f17402c);
        }
        return false;
    }

    public boolean f() {
        return this.f17401b;
    }

    public a g() {
        return this.f17400a;
    }

    public boolean h() {
        return this.f17407h;
    }

    public int hashCode() {
        a aVar = this.f17400a;
        int hashCode = (((aVar != null ? aVar.hashCode() : 0) * 31) + (this.f17401b ? 1 : 0)) * 31;
        float[] fArr = this.f17402c;
        int hashCode2 = (((hashCode + (fArr != null ? Arrays.hashCode(fArr) : 0)) * 31) + this.f17403d) * 31;
        float f2 = this.f17404e;
        int floatToIntBits = (((hashCode2 + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31) + this.f17405f) * 31;
        float f3 = this.f17406g;
        return ((floatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31) + (this.f17407h ? 1 : 0);
    }

    public e a(float f2, float f3, float f4, float f5) {
        float[] i2 = i();
        i2[1] = f2;
        i2[0] = f2;
        i2[3] = f3;
        i2[2] = f3;
        i2[5] = f4;
        i2[4] = f4;
        i2[7] = f5;
        i2[6] = f5;
        return this;
    }

    public float b() {
        return this.f17404e;
    }

    public e b(float f2) {
        h.a(f2 >= 0.0f, "the padding cannot be < 0");
        this.f17406g = f2;
        return this;
    }

    public e a(float f2) {
        h.a(f2 >= 0.0f, "the border width cannot be < 0");
        this.f17404e = f2;
        return this;
    }

    public e a(@ColorInt int i2) {
        this.f17405f = i2;
        return this;
    }

    public int a() {
        return this.f17405f;
    }
}
