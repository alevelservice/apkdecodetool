package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: VersionedParcel.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    protected final a.e.a<String, Method> f3016a;

    /* renamed from: b, reason: collision with root package name */
    protected final a.e.a<String, Method> f3017b;

    /* renamed from: c, reason: collision with root package name */
    protected final a.e.a<String, Class> f3018c;

    public b(a.e.a<String, Method> aVar, a.e.a<String, Method> aVar2, a.e.a<String, Class> aVar3) {
        this.f3016a = aVar;
        this.f3017b = aVar2;
        this.f3018c = aVar3;
    }

    protected abstract void a();

    protected abstract void a(Parcelable parcelable);

    protected abstract void a(CharSequence charSequence);

    protected abstract void a(String str);

    protected abstract void a(boolean z);

    public void a(boolean z, boolean z2) {
    }

    protected abstract void a(byte[] bArr);

    protected abstract boolean a(int i2);

    public boolean a(boolean z, int i2) {
        return !a(i2) ? z : d();
    }

    protected abstract b b();

    protected abstract void b(int i2);

    public void b(boolean z, int i2) {
        b(i2);
        a(z);
    }

    protected abstract void c(int i2);

    public boolean c() {
        return false;
    }

    protected abstract boolean d();

    protected abstract byte[] e();

    protected abstract CharSequence f();

    protected abstract int g();

    protected abstract <T extends Parcelable> T h();

    protected abstract String i();

    /* JADX INFO: Access modifiers changed from: protected */
    public <T extends d> T j() {
        String i2 = i();
        if (i2 == null) {
            return null;
        }
        return (T) a(i2, b());
    }

    public int a(int i2, int i3) {
        return !a(i3) ? i2 : g();
    }

    public void b(byte[] bArr, int i2) {
        b(i2);
        a(bArr);
    }

    public String a(String str, int i2) {
        return !a(i2) ? str : i();
    }

    public void b(CharSequence charSequence, int i2) {
        b(i2);
        a(charSequence);
    }

    public byte[] a(byte[] bArr, int i2) {
        return !a(i2) ? bArr : e();
    }

    public void b(int i2, int i3) {
        b(i3);
        c(i2);
    }

    public <T extends Parcelable> T a(T t, int i2) {
        return !a(i2) ? t : (T) h();
    }

    public void b(String str, int i2) {
        b(i2);
        a(str);
    }

    public CharSequence a(CharSequence charSequence, int i2) {
        return !a(i2) ? charSequence : f();
    }

    public void b(Parcelable parcelable, int i2) {
        b(i2);
        a(parcelable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(d dVar) {
        if (dVar == null) {
            a((String) null);
            return;
        }
        b(dVar);
        b b2 = b();
        a((b) dVar, b2);
        b2.a();
    }

    public void b(d dVar, int i2) {
        b(i2);
        a(dVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(d dVar) {
        try {
            a(a((Class<? extends d>) dVar.getClass()).getName());
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(dVar.getClass().getSimpleName() + " does not have a Parcelizer", e2);
        }
    }

    private Method b(String str) {
        Method method = this.f3016a.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, b.class.getClassLoader()).getDeclaredMethod("read", b.class);
        this.f3016a.put(str, declaredMethod);
        return declaredMethod;
    }

    public <T extends d> T a(T t, int i2) {
        return !a(i2) ? t : (T) j();
    }

    protected <T extends d> T a(String str, b bVar) {
        try {
            return (T) b(str).invoke(null, bVar);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method b(Class cls) {
        Method method = this.f3017b.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class a2 = a((Class<? extends d>) cls);
        System.currentTimeMillis();
        Method declaredMethod = a2.getDeclaredMethod("write", cls, b.class);
        this.f3017b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    protected <T extends d> void a(T t, b bVar) {
        try {
            b(t.getClass()).invoke(null, t, bVar);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }

    private Class a(Class<? extends d> cls) {
        Class cls2 = this.f3018c.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.f3018c.put(cls.getName(), cls3);
        return cls3;
    }
}
