package e.b.b.a.b.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: IConfigProvider.java */
/* loaded from: classes.dex */
public interface b {

    /* compiled from: IConfigProvider.java */
    /* loaded from: classes.dex */
    public static class a implements b {
        @Override // e.b.b.a.b.a.b
        @Nullable
        public String a(@NonNull String str) {
            a();
            return null;
        }

        @Override // e.b.b.a.b.a.b
        @Nullable
        public String b(@NonNull String str) {
            a();
            return null;
        }

        @Override // e.b.b.a.b.a.b
        public void a(@NonNull String str, @NonNull c cVar) {
            a();
        }

        private static void a() {
            e.b.b.a.b.b.c.b("MockProvider", "**WARNING** ConfigProxy configProvider is mocked! you need invoke ConfigProxy.getInstance().setConfigProvider(...) before use it!");
        }
    }

    @Nullable
    String a(@NonNull String str);

    void a(@NonNull String str, @NonNull c cVar);

    @Nullable
    String b(@NonNull String str);
}
