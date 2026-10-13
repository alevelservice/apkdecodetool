package e.f.i.b;

import android.graphics.Bitmap;

/* compiled from: SimpleBitmapReleaser.java */
/* loaded from: classes.dex */
public class h implements e.f.c.g.c<Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    private static h f17519a;

    private h() {
    }

    public static h a() {
        if (f17519a == null) {
            f17519a = new h();
        }
        return f17519a;
    }

    @Override // e.f.c.g.c
    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }
}
