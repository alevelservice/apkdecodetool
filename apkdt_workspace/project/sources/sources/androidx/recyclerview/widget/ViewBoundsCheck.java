package androidx.recyclerview.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
class ViewBoundsCheck {

    /* renamed from: a, reason: collision with root package name */
    final b f2682a;

    /* renamed from: b, reason: collision with root package name */
    a f2683b = new a();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ViewBounds {
    }

    /* loaded from: classes.dex */
    interface b {
        int a();

        int a(View view);

        View a(int i2);

        int b();

        int b(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewBoundsCheck(b bVar) {
        this.f2682a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(int i2, int i3, int i4, int i5) {
        int a2 = this.f2682a.a();
        int b2 = this.f2682a.b();
        int i6 = i3 > i2 ? 1 : -1;
        View view = null;
        while (i2 != i3) {
            View a3 = this.f2682a.a(i2);
            this.f2683b.a(a2, b2, this.f2682a.a(a3), this.f2682a.b(a3));
            if (i4 != 0) {
                this.f2683b.b();
                this.f2683b.a(i4);
                if (this.f2683b.a()) {
                    return a3;
                }
            }
            if (i5 != 0) {
                this.f2683b.b();
                this.f2683b.a(i5);
                if (this.f2683b.a()) {
                    view = a3;
                }
            }
            i2 += i6;
        }
        return view;
    }

    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        int f2684a = 0;

        /* renamed from: b, reason: collision with root package name */
        int f2685b;

        /* renamed from: c, reason: collision with root package name */
        int f2686c;

        /* renamed from: d, reason: collision with root package name */
        int f2687d;

        /* renamed from: e, reason: collision with root package name */
        int f2688e;

        a() {
        }

        int a(int i2, int i3) {
            if (i2 > i3) {
                return 1;
            }
            return i2 == i3 ? 2 : 4;
        }

        void a(int i2, int i3, int i4, int i5) {
            this.f2685b = i2;
            this.f2686c = i3;
            this.f2687d = i4;
            this.f2688e = i5;
        }

        void b() {
            this.f2684a = 0;
        }

        void a(int i2) {
            this.f2684a = i2 | this.f2684a;
        }

        boolean a() {
            int i2 = this.f2684a;
            if ((i2 & 7) != 0 && (i2 & (a(this.f2687d, this.f2685b) << 0)) == 0) {
                return false;
            }
            int i3 = this.f2684a;
            if ((i3 & 112) != 0 && (i3 & (a(this.f2687d, this.f2686c) << 4)) == 0) {
                return false;
            }
            int i4 = this.f2684a;
            if ((i4 & 1792) != 0 && (i4 & (a(this.f2688e, this.f2685b) << 8)) == 0) {
                return false;
            }
            int i5 = this.f2684a;
            return (i5 & 28672) == 0 || (i5 & (a(this.f2688e, this.f2686c) << 12)) != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(View view, int i2) {
        this.f2683b.a(this.f2682a.a(), this.f2682a.b(), this.f2682a.a(view), this.f2682a.b(view));
        if (i2 == 0) {
            return false;
        }
        this.f2683b.b();
        this.f2683b.a(i2);
        return this.f2683b.a();
    }
}
