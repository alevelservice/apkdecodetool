package e.i.b.c.l;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;

/* compiled from: DrawableAlphaProperty.java */
/* loaded from: classes.dex */
public class e extends Property<Drawable, Integer> {

    /* renamed from: b, reason: collision with root package name */
    public static final Property<Drawable, Integer> f17903b = new e();

    /* renamed from: a, reason: collision with root package name */
    private final WeakHashMap<Drawable, Integer> f17904a;

    private e() {
        super(Integer.class, "drawableAlphaCompat");
        this.f17904a = new WeakHashMap<>();
    }

    @Override // android.util.Property
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer get(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (this.f17904a.containsKey(drawable)) {
            return this.f17904a.get(drawable);
        }
        return 255;
    }

    @Override // android.util.Property
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void set(Drawable drawable, Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.f17904a.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
