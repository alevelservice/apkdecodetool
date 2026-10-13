package e.f.f.g;

import android.R;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import com.facebook.common.internal.h;
import e.f.f.f.q;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: GenericDraweeHierarchyBuilder.java */
/* loaded from: classes.dex */
public class b {
    public static final q.b s = q.b.f17367f;
    public static final q.b t = q.b.f17368g;

    /* renamed from: a, reason: collision with root package name */
    private Resources f17386a;

    /* renamed from: b, reason: collision with root package name */
    private int f17387b;

    /* renamed from: c, reason: collision with root package name */
    private float f17388c;

    /* renamed from: d, reason: collision with root package name */
    private Drawable f17389d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private q.b f17390e;

    /* renamed from: f, reason: collision with root package name */
    private Drawable f17391f;

    /* renamed from: g, reason: collision with root package name */
    private q.b f17392g;

    /* renamed from: h, reason: collision with root package name */
    private Drawable f17393h;

    /* renamed from: i, reason: collision with root package name */
    private q.b f17394i;

    /* renamed from: j, reason: collision with root package name */
    private Drawable f17395j;

    /* renamed from: k, reason: collision with root package name */
    private q.b f17396k;

    /* renamed from: l, reason: collision with root package name */
    private q.b f17397l;
    private PointF m;
    private ColorFilter n;
    private Drawable o;
    private List<Drawable> p;
    private Drawable q;
    private e r;

    public b(Resources resources) {
        this.f17386a = resources;
        t();
    }

    private void t() {
        this.f17387b = 300;
        this.f17388c = 0.0f;
        this.f17389d = null;
        q.b bVar = s;
        this.f17390e = bVar;
        this.f17391f = null;
        this.f17392g = bVar;
        this.f17393h = null;
        this.f17394i = bVar;
        this.f17395j = null;
        this.f17396k = bVar;
        this.f17397l = t;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
    }

    private void u() {
        List<Drawable> list = this.p;
        if (list != null) {
            Iterator<Drawable> it = list.iterator();
            while (it.hasNext()) {
                h.a(it.next());
            }
        }
    }

    public b a(int i2) {
        this.f17387b = i2;
        return this;
    }

    public b b(@Nullable Drawable drawable) {
        this.f17393h = drawable;
        return this;
    }

    public b c(@Nullable q.b bVar) {
        this.f17390e = bVar;
        return this;
    }

    public b d(@Nullable Drawable drawable) {
        this.f17389d = drawable;
        return this;
    }

    public b e(@Nullable q.b bVar) {
        this.f17392g = bVar;
        return this;
    }

    public float f() {
        return this.f17388c;
    }

    public int g() {
        return this.f17387b;
    }

    @Nullable
    public Drawable h() {
        return this.f17393h;
    }

    @Nullable
    public q.b i() {
        return this.f17394i;
    }

    @Nullable
    public List<Drawable> j() {
        return this.p;
    }

    @Nullable
    public Drawable k() {
        return this.f17389d;
    }

    @Nullable
    public q.b l() {
        return this.f17390e;
    }

    @Nullable
    public Drawable m() {
        return this.q;
    }

    @Nullable
    public Drawable n() {
        return this.f17395j;
    }

    @Nullable
    public q.b o() {
        return this.f17396k;
    }

    public Resources p() {
        return this.f17386a;
    }

    @Nullable
    public Drawable q() {
        return this.f17391f;
    }

    @Nullable
    public q.b r() {
        return this.f17392g;
    }

    @Nullable
    public e s() {
        return this.r;
    }

    public b a(float f2) {
        this.f17388c = f2;
        return this;
    }

    public b b(@Nullable q.b bVar) {
        this.f17394i = bVar;
        return this;
    }

    @Nullable
    public PointF c() {
        return this.m;
    }

    public b d(@Nullable q.b bVar) {
        this.f17396k = bVar;
        return this;
    }

    @Nullable
    public Drawable e() {
        return this.o;
    }

    public b f(@Nullable Drawable drawable) {
        this.f17395j = drawable;
        return this;
    }

    public b g(@Nullable Drawable drawable) {
        this.f17391f = drawable;
        return this;
    }

    public b a(@Nullable q.b bVar) {
        this.f17397l = bVar;
        return this;
    }

    @Nullable
    public ColorFilter b() {
        return this.n;
    }

    public b c(@Nullable Drawable drawable) {
        if (drawable == null) {
            this.p = null;
        } else {
            this.p = Arrays.asList(drawable);
        }
        return this;
    }

    @Nullable
    public q.b d() {
        return this.f17397l;
    }

    public b e(@Nullable Drawable drawable) {
        if (drawable == null) {
            this.q = null;
        } else {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{R.attr.state_pressed}, drawable);
            this.q = stateListDrawable;
        }
        return this;
    }

    public b a(@Nullable Drawable drawable) {
        this.o = drawable;
        return this;
    }

    public b a(@Nullable e eVar) {
        this.r = eVar;
        return this;
    }

    public a a() {
        u();
        return new a(this);
    }
}
