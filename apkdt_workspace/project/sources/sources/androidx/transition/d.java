package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* compiled from: PathProperty.java */
/* loaded from: classes.dex */
class d<T> extends Property<T, Float> {

    /* renamed from: a, reason: collision with root package name */
    private final Property<T, PointF> f2962a;

    /* renamed from: b, reason: collision with root package name */
    private final PathMeasure f2963b;

    /* renamed from: c, reason: collision with root package name */
    private final float f2964c;

    /* renamed from: d, reason: collision with root package name */
    private final float[] f2965d;

    /* renamed from: e, reason: collision with root package name */
    private final PointF f2966e;

    /* renamed from: f, reason: collision with root package name */
    private float f2967f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f2965d = new float[2];
        this.f2966e = new PointF();
        this.f2962a = property;
        this.f2963b = new PathMeasure(path, false);
        this.f2964c = this.f2963b.getLength();
    }

    @Override // android.util.Property
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void set(T t, Float f2) {
        this.f2967f = f2.floatValue();
        this.f2963b.getPosTan(this.f2964c * f2.floatValue(), this.f2965d, null);
        PointF pointF = this.f2966e;
        float[] fArr = this.f2965d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f2962a.set(t, pointF);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ Float get(Object obj) {
        return get((d<T>) obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.util.Property
    public Float get(T t) {
        return Float.valueOf(this.f2967f);
    }
}
