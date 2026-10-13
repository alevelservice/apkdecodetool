package a.a.n;

import a.a.j;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.LayoutRes;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.p;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: SupportMenuInflater.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class g extends MenuInflater {

    /* renamed from: e, reason: collision with root package name */
    static final Class<?>[] f26e = {Context.class};

    /* renamed from: f, reason: collision with root package name */
    static final Class<?>[] f27f = f26e;

    /* renamed from: a, reason: collision with root package name */
    final Object[] f28a;

    /* renamed from: b, reason: collision with root package name */
    final Object[] f29b;

    /* renamed from: c, reason: collision with root package name */
    Context f30c;

    /* renamed from: d, reason: collision with root package name */
    private Object f31d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SupportMenuInflater.java */
    /* loaded from: classes.dex */
    public static class a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c, reason: collision with root package name */
        private static final Class<?>[] f32c = {MenuItem.class};

        /* renamed from: a, reason: collision with root package name */
        private Object f33a;

        /* renamed from: b, reason: collision with root package name */
        private Method f34b;

        public a(Object obj, String str) {
            this.f33a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f34b = cls.getMethod(str, f32c);
            } catch (Exception e2) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f34b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f34b.invoke(this.f33a, menuItem)).booleanValue();
                }
                this.f34b.invoke(this.f33a, menuItem);
                return true;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public g(Context context) {
        super(context);
        this.f30c = context;
        this.f28a = new Object[]{context};
        this.f29b = this.f28a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
    
        if (r6 == 2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004c, code lost:
    
        if (r6 == 3) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
    
        r6 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0054, code lost:
    
        if (r7 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
    
        if (r6.equals(r8) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
    
        r8 = null;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ba, code lost:
    
        r6 = r13.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
    
        if (r6.equals("group") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0065, code lost:
    
        r0.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
    
        if (r6.equals("item") == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
    
        if (r0.c() != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0075, code lost:
    
        r6 = r0.A;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
    
        if (r6 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007d, code lost:
    
        if (r6.a() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
    
        r0.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0083, code lost:
    
        r0.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008b, code lost:
    
        if (r6.equals("menu") == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008d, code lost:
    
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008f, code lost:
    
        if (r7 == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0092, code lost:
    
        r6 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x009a, code lost:
    
        if (r6.equals("group") == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009c, code lost:
    
        r0.a(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a4, code lost:
    
        if (r6.equals("item") == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a6, code lost:
    
        r0.b(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ae, code lost:
    
        if (r6.equals("menu") == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b0, code lost:
    
        a(r13, r14, r0.b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b8, code lost:
    
        r8 = r6;
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c6, code lost:
    
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c7, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003b, code lost:
    
        r6 = r15;
        r8 = null;
        r15 = false;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0041, code lost:
    
        if (r15 != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0043, code lost:
    
        if (r6 == 1) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(org.xmlpull.v1.XmlPullParser r13, android.util.AttributeSet r14, android.view.Menu r15) {
        /*
            r12 = this;
            a.a.n.g$b r0 = new a.a.n.g$b
            r0.<init>(r15)
            int r15 = r13.getEventType()
        L9:
            r1 = 2
            java.lang.String r2 = "menu"
            r3 = 1
            if (r15 != r1) goto L35
            java.lang.String r15 = r13.getName()
            boolean r4 = r15.equals(r2)
            if (r4 == 0) goto L1e
            int r15 = r13.next()
            goto L3b
        L1e:
            java.lang.RuntimeException r13 = new java.lang.RuntimeException
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r0 = "Expecting menu, got "
            r14.append(r0)
            r14.append(r15)
            java.lang.String r14 = r14.toString()
            r13.<init>(r14)
            throw r13
        L35:
            int r15 = r13.next()
            if (r15 != r3) goto L9
        L3b:
            r4 = 0
            r5 = 0
            r6 = r15
            r8 = r4
            r15 = 0
            r7 = 0
        L41:
            if (r15 != 0) goto Lc7
            if (r6 == r3) goto Lbf
            java.lang.String r9 = "item"
            java.lang.String r10 = "group"
            if (r6 == r1) goto L8f
            r11 = 3
            if (r6 == r11) goto L50
            goto Lba
        L50:
            java.lang.String r6 = r13.getName()
            if (r7 == 0) goto L5f
            boolean r11 = r6.equals(r8)
            if (r11 == 0) goto L5f
            r8 = r4
            r7 = 0
            goto Lba
        L5f:
            boolean r10 = r6.equals(r10)
            if (r10 == 0) goto L69
            r0.d()
            goto Lba
        L69:
            boolean r9 = r6.equals(r9)
            if (r9 == 0) goto L87
            boolean r6 = r0.c()
            if (r6 != 0) goto Lba
            androidx.core.view.b r6 = r0.A
            if (r6 == 0) goto L83
            boolean r6 = r6.a()
            if (r6 == 0) goto L83
            r0.b()
            goto Lba
        L83:
            r0.a()
            goto Lba
        L87:
            boolean r6 = r6.equals(r2)
            if (r6 == 0) goto Lba
            r15 = 1
            goto Lba
        L8f:
            if (r7 == 0) goto L92
            goto Lba
        L92:
            java.lang.String r6 = r13.getName()
            boolean r10 = r6.equals(r10)
            if (r10 == 0) goto La0
            r0.a(r14)
            goto Lba
        La0:
            boolean r9 = r6.equals(r9)
            if (r9 == 0) goto Laa
            r0.b(r14)
            goto Lba
        Laa:
            boolean r9 = r6.equals(r2)
            if (r9 == 0) goto Lb8
            android.view.SubMenu r6 = r0.b()
            r12.a(r13, r14, r6)
            goto Lba
        Lb8:
            r8 = r6
            r7 = 1
        Lba:
            int r6 = r13.next()
            goto L41
        Lbf:
            java.lang.RuntimeException r13 = new java.lang.RuntimeException
            java.lang.String r14 = "Unexpected end of document"
            r13.<init>(r14)
            throw r13
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.n.g.a(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    @Override // android.view.MenuInflater
    public void inflate(@LayoutRes int i2, Menu menu) {
        if (!(menu instanceof a.i.i.a.a)) {
            super.inflate(i2, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.f30c.getResources().getLayout(i2);
                    a(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                } catch (XmlPullParserException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (IOException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SupportMenuInflater.java */
    /* loaded from: classes.dex */
    public class b {
        androidx.core.view.b A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;

        /* renamed from: a, reason: collision with root package name */
        private Menu f35a;

        /* renamed from: b, reason: collision with root package name */
        private int f36b;

        /* renamed from: c, reason: collision with root package name */
        private int f37c;

        /* renamed from: d, reason: collision with root package name */
        private int f38d;

        /* renamed from: e, reason: collision with root package name */
        private int f39e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f40f;

        /* renamed from: g, reason: collision with root package name */
        private boolean f41g;

        /* renamed from: h, reason: collision with root package name */
        private boolean f42h;

        /* renamed from: i, reason: collision with root package name */
        private int f43i;

        /* renamed from: j, reason: collision with root package name */
        private int f44j;

        /* renamed from: k, reason: collision with root package name */
        private CharSequence f45k;

        /* renamed from: l, reason: collision with root package name */
        private CharSequence f46l;
        private int m;
        private char n;
        private int o;
        private char p;
        private int q;
        private int r;
        private boolean s;
        private boolean t;
        private boolean u;
        private int v;
        private int w;
        private String x;
        private String y;
        private String z;

        public b(Menu menu) {
            this.f35a = menu;
            d();
        }

        public void a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = g.this.f30c.obtainStyledAttributes(attributeSet, j.MenuGroup);
            this.f36b = obtainStyledAttributes.getResourceId(j.MenuGroup_android_id, 0);
            this.f37c = obtainStyledAttributes.getInt(j.MenuGroup_android_menuCategory, 0);
            this.f38d = obtainStyledAttributes.getInt(j.MenuGroup_android_orderInCategory, 0);
            this.f39e = obtainStyledAttributes.getInt(j.MenuGroup_android_checkableBehavior, 0);
            this.f40f = obtainStyledAttributes.getBoolean(j.MenuGroup_android_visible, true);
            this.f41g = obtainStyledAttributes.getBoolean(j.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        public void b(AttributeSet attributeSet) {
            d0 a2 = d0.a(g.this.f30c, attributeSet, j.MenuItem);
            this.f43i = a2.g(j.MenuItem_android_id, 0);
            this.f44j = (a2.d(j.MenuItem_android_menuCategory, this.f37c) & (-65536)) | (a2.d(j.MenuItem_android_orderInCategory, this.f38d) & 65535);
            this.f45k = a2.e(j.MenuItem_android_title);
            this.f46l = a2.e(j.MenuItem_android_titleCondensed);
            this.m = a2.g(j.MenuItem_android_icon, 0);
            this.n = a(a2.d(j.MenuItem_android_alphabeticShortcut));
            this.o = a2.d(j.MenuItem_alphabeticModifiers, 4096);
            this.p = a(a2.d(j.MenuItem_android_numericShortcut));
            this.q = a2.d(j.MenuItem_numericModifiers, 4096);
            if (a2.g(j.MenuItem_android_checkable)) {
                this.r = a2.a(j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.r = this.f39e;
            }
            this.s = a2.a(j.MenuItem_android_checked, false);
            this.t = a2.a(j.MenuItem_android_visible, this.f40f);
            this.u = a2.a(j.MenuItem_android_enabled, this.f41g);
            this.v = a2.d(j.MenuItem_showAsAction, -1);
            this.z = a2.d(j.MenuItem_android_onClick);
            this.w = a2.g(j.MenuItem_actionLayout, 0);
            this.x = a2.d(j.MenuItem_actionViewClass);
            this.y = a2.d(j.MenuItem_actionProviderClass);
            if ((this.y != null) && this.w == 0 && this.x == null) {
                this.A = (androidx.core.view.b) a(this.y, g.f27f, g.this.f29b);
            } else {
                this.A = null;
            }
            this.B = a2.e(j.MenuItem_contentDescription);
            this.C = a2.e(j.MenuItem_tooltipText);
            if (a2.g(j.MenuItem_iconTintMode)) {
                this.E = p.a(a2.d(j.MenuItem_iconTintMode, -1), this.E);
            } else {
                this.E = null;
            }
            if (a2.g(j.MenuItem_iconTint)) {
                this.D = a2.a(j.MenuItem_iconTint);
            } else {
                this.D = null;
            }
            a2.b();
            this.f42h = false;
        }

        public boolean c() {
            return this.f42h;
        }

        public void d() {
            this.f36b = 0;
            this.f37c = 0;
            this.f38d = 0;
            this.f39e = 0;
            this.f40f = true;
            this.f41g = true;
        }

        private char a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private void a(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.f46l).setIcon(this.m);
            int i2 = this.v;
            if (i2 >= 0) {
                menuItem.setShowAsAction(i2);
            }
            if (this.z != null) {
                if (!g.this.f30c.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new a(g.this.a(), this.z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.r >= 2) {
                if (menuItem instanceof androidx.appcompat.view.menu.i) {
                    ((androidx.appcompat.view.menu.i) menuItem).c(true);
                } else if (menuItem instanceof androidx.appcompat.view.menu.j) {
                    ((androidx.appcompat.view.menu.j) menuItem).a(true);
                }
            }
            String str = this.x;
            if (str != null) {
                menuItem.setActionView((View) a(str, g.f26e, g.this.f28a));
                z = true;
            }
            int i3 = this.w;
            if (i3 > 0 && !z) {
                menuItem.setActionView(i3);
            }
            androidx.core.view.b bVar = this.A;
            if (bVar != null) {
                androidx.core.view.i.a(menuItem, bVar);
            }
            androidx.core.view.i.a(menuItem, this.B);
            androidx.core.view.i.b(menuItem, this.C);
            androidx.core.view.i.a(menuItem, this.n, this.o);
            androidx.core.view.i.b(menuItem, this.p, this.q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                androidx.core.view.i.a(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                androidx.core.view.i.a(menuItem, colorStateList);
            }
        }

        public SubMenu b() {
            this.f42h = true;
            SubMenu addSubMenu = this.f35a.addSubMenu(this.f36b, this.f43i, this.f44j, this.f45k);
            a(addSubMenu.getItem());
            return addSubMenu;
        }

        public void a() {
            this.f42h = true;
            a(this.f35a.add(this.f36b, this.f43i, this.f44j, this.f45k));
        }

        private <T> T a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.f30c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception unused) {
                String str2 = "Cannot instantiate class: " + str;
                return null;
            }
        }
    }

    Object a() {
        if (this.f31d == null) {
            this.f31d = a(this.f30c);
        }
        return this.f31d;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }
}
