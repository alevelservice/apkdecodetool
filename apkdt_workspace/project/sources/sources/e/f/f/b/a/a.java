package e.f.f.b.a;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import e.f.f.f.i;
import javax.annotation.Nullable;

/* compiled from: DefaultDrawableFactory.java */
/* loaded from: classes.dex */
public class a implements e.f.i.f.a {

    /* renamed from: a, reason: collision with root package name */
    private final Resources f17232a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final e.f.i.f.a f17233b;

    public a(Resources resources, @Nullable e.f.i.f.a aVar) {
        this.f17232a = resources;
        this.f17233b = aVar;
    }

    private static boolean a(e.f.i.g.d dVar) {
        return (dVar.m() == 1 || dVar.m() == 0) ? false : true;
    }

    @Override // e.f.i.f.a
    public boolean a(e.f.i.g.c cVar) {
        return true;
    }

    @Override // e.f.i.f.a
    @Nullable
    public Drawable b(e.f.i.g.c cVar) {
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("DefaultDrawableFactory#createDrawable");
            }
            if (cVar instanceof e.f.i.g.d) {
                e.f.i.g.d dVar = (e.f.i.g.d) cVar;
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f17232a, dVar.p());
                if (!b(dVar) && !a(dVar)) {
                    return bitmapDrawable;
                }
                i iVar = new i(bitmapDrawable, dVar.o(), dVar.m());
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
                return iVar;
            }
            if (this.f17233b != null && this.f17233b.a(cVar)) {
                Drawable b2 = this.f17233b.b(cVar);
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
                return b2;
            }
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            return null;
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    private static boolean b(e.f.i.g.d dVar) {
        return (dVar.o() == 0 || dVar.o() == -1) ? false : true;
    }
}
