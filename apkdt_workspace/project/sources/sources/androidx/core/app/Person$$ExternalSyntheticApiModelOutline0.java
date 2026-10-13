package androidx.core.app;

import android.app.PendingIntent;
import android.app.Person;
import android.app.RemoteAction;
import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class Person$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ Person.Builder m() {
        return new Person.Builder();
    }

    public static /* synthetic */ RemoteAction m(Icon icon, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        return new RemoteAction(icon, charSequence, charSequence2, pendingIntent);
    }

    public static /* synthetic */ ShortcutInfo.Builder m(Context context, String str) {
        return new ShortcutInfo.Builder(context, str);
    }

    public static /* bridge */ /* synthetic */ ShortcutInfo m(Object obj) {
        return (ShortcutInfo) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ ShortcutManager m57m(Object obj) {
        return (ShortcutManager) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m65m() {
        return ShortcutManager.class;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m71m() {
    }

    public static /* synthetic */ void m$1() {
    }
}
