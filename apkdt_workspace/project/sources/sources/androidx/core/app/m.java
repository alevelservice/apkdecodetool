package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: TaskStackBuilder.java */
/* loaded from: classes.dex */
public final class m implements Iterable<Intent> {

    /* renamed from: e, reason: collision with root package name */
    private final ArrayList<Intent> f1784e = new ArrayList<>();

    /* renamed from: f, reason: collision with root package name */
    private final Context f1785f;

    /* compiled from: TaskStackBuilder.java */
    /* loaded from: classes.dex */
    public interface a {
        @Nullable
        Intent getSupportParentActivityIntent();
    }

    private m(Context context) {
        this.f1785f = context;
    }

    @NonNull
    public static m a(@NonNull Context context) {
        return new m(context);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f1784e.iterator();
    }

    @NonNull
    public m a(@NonNull Intent intent) {
        this.f1784e.add(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public m a(@NonNull Activity activity) {
        Intent supportParentActivityIntent = activity instanceof a ? ((a) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = f.a(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f1785f.getPackageManager());
            }
            a(component);
            a(supportParentActivityIntent);
        }
        return this;
    }

    public m a(ComponentName componentName) {
        int size = this.f1784e.size();
        try {
            Intent a2 = f.a(this.f1785f, componentName);
            while (a2 != null) {
                this.f1784e.add(size, a2);
                a2 = f.a(this.f1785f, a2.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public void a() {
        a((Bundle) null);
    }

    public void a(@Nullable Bundle bundle) {
        if (!this.f1784e.isEmpty()) {
            ArrayList<Intent> arrayList = this.f1784e;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (androidx.core.content.a.a(this.f1785f, intentArr, bundle)) {
                return;
            }
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.f1785f.startActivity(intent);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
}
