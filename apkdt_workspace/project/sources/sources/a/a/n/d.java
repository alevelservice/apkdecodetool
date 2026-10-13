package a.a.n;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.annotation.StyleRes;

/* compiled from: ContextThemeWrapper.java */
/* loaded from: classes.dex */
public class d extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    private int f9a;

    /* renamed from: b, reason: collision with root package name */
    private Resources.Theme f10b;

    /* renamed from: c, reason: collision with root package name */
    private LayoutInflater f11c;

    /* renamed from: d, reason: collision with root package name */
    private Configuration f12d;

    /* renamed from: e, reason: collision with root package name */
    private Resources f13e;

    public d() {
        super(null);
    }

    private Resources b() {
        if (this.f13e == null) {
            Configuration configuration = this.f12d;
            if (configuration == null) {
                this.f13e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f13e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f12d);
                this.f13e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.f13e;
    }

    private void c() {
        boolean z = this.f10b == null;
        if (z) {
            this.f10b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f10b.setTo(theme);
            }
        }
        a(this.f10b, this.f9a, z);
    }

    public void a(Configuration configuration) {
        if (this.f13e == null) {
            if (this.f12d == null) {
                this.f12d = new Configuration(configuration);
                return;
            }
            throw new IllegalStateException("Override configuration has already been set");
        }
        throw new IllegalStateException("getResources() or getAssets() has already been called");
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f11c == null) {
                this.f11c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f11c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f10b;
        if (theme != null) {
            return theme;
        }
        if (this.f9a == 0) {
            this.f9a = a.a.i.Theme_AppCompat_Light;
        }
        c();
        return this.f10b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        if (this.f9a != i2) {
            this.f9a = i2;
            c();
        }
    }

    public d(Context context, @StyleRes int i2) {
        super(context);
        this.f9a = i2;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f10b = theme;
    }

    public int a() {
        return this.f9a;
    }

    protected void a(Resources.Theme theme, int i2, boolean z) {
        theme.applyStyle(i2, true);
    }
}
