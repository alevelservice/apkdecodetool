package e.f.f.g;

import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Build;
import e.f.f.f.h;
import e.f.f.f.j;
import e.f.f.f.k;
import e.f.f.f.l;
import e.f.f.f.m;
import e.f.f.f.o;
import e.f.f.f.p;
import e.f.f.f.q;
import e.f.f.g.e;
import javax.annotation.Nullable;

/* compiled from: WrappingUtils.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static final Drawable f17409a = new ColorDrawable(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Drawable a(@Nullable Drawable drawable, @Nullable q.b bVar) {
        return a(drawable, bVar, (PointF) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable b(@Nullable Drawable drawable, @Nullable e eVar, Resources resources) {
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("WrappingUtils#maybeApplyLeafRounding");
            }
            if (drawable != null && eVar != null && eVar.g() == e.a.BITMAP_ONLY) {
                if (drawable instanceof h) {
                    e.f.f.f.d a2 = a((h) drawable);
                    a2.a(a(a2.a(f17409a), eVar, resources));
                    return drawable;
                }
                Drawable a3 = a(drawable, eVar, resources);
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
                return a3;
            }
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            return drawable;
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Drawable a(@Nullable Drawable drawable, @Nullable q.b bVar, @Nullable PointF pointF) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("WrappingUtils#maybeWrapWithScaleType");
        }
        if (drawable != null && bVar != null) {
            p pVar = new p(drawable, bVar);
            if (pointF != null) {
                pVar.a(pointF);
            }
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            return pVar;
        }
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable a(@Nullable Drawable drawable, @Nullable e eVar) {
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("WrappingUtils#maybeWrapWithRoundedOverlayColor");
            }
            if (drawable != null && eVar != null && eVar.g() == e.a.OVERLAY_COLOR) {
                m mVar = new m(drawable);
                a((j) mVar, eVar);
                mVar.a(eVar.d());
                return mVar;
            }
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            return drawable;
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    private static Drawable a(Drawable drawable, e eVar, Resources resources) {
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            k kVar = new k(resources, bitmapDrawable.getBitmap(), bitmapDrawable.getPaint());
            a((j) kVar, eVar);
            return kVar;
        }
        if (drawable instanceof NinePatchDrawable) {
            o oVar = new o((NinePatchDrawable) drawable);
            a((j) oVar, eVar);
            return oVar;
        }
        if ((drawable instanceof ColorDrawable) && Build.VERSION.SDK_INT >= 11) {
            l a2 = l.a((ColorDrawable) drawable);
            a((j) a2, eVar);
            return a2;
        }
        e.f.c.d.a.c("WrappingUtils", "Don't know how to round that drawable: %s", drawable);
        return drawable;
    }

    static void a(j jVar, e eVar) {
        jVar.a(eVar.f());
        jVar.a(eVar.c());
        jVar.a(eVar.a(), eVar.b());
        jVar.a(eVar.e());
        jVar.b(eVar.h());
    }

    static e.f.f.f.d a(e.f.f.f.d dVar) {
        while (true) {
            Object a2 = dVar.a();
            if (a2 == dVar || !(a2 instanceof e.f.f.f.d)) {
                break;
            }
            dVar = (e.f.f.f.d) a2;
        }
        return dVar;
    }
}
