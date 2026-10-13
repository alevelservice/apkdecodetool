package io.flutter.embedding.engine.i;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import g.a.c.a.b;
import g.a.c.a.n;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.view.c;
import java.util.HashMap;

/* compiled from: AccessibilityChannel.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.b<Object> f19116a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final FlutterJNI f19117b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private InterfaceC0237b f19118c;

    /* renamed from: d, reason: collision with root package name */
    private final b.d<Object> f19119d = new a();

    /* compiled from: AccessibilityChannel.java */
    /* loaded from: classes2.dex */
    class a implements b.d<Object> {
        a() {
        }

        @Override // g.a.c.a.b.d
        public void a(@Nullable Object obj, @NonNull b.e<Object> eVar) {
            String str;
            if (b.this.f19118c == null) {
                return;
            }
            HashMap hashMap = (HashMap) obj;
            String str2 = (String) hashMap.get("type");
            HashMap hashMap2 = (HashMap) hashMap.get(Constants$ScionAnalytics$MessageType.DATA_MESSAGE);
            g.a.b.c("AccessibilityChannel", "Received " + str2 + " message.");
            char c2 = 65535;
            switch (str2.hashCode()) {
                case -1140076541:
                    if (str2.equals("tooltip")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -649620375:
                    if (str2.equals("announce")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 114595:
                    if (str2.equals("tap")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 114203431:
                    if (str2.equals("longPress")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                String str3 = (String) hashMap2.get("message");
                if (str3 != null) {
                    b.this.f19118c.a(str3);
                }
            } else if (c2 == 1) {
                Integer num = (Integer) hashMap.get("nodeId");
                if (num != null) {
                    b.this.f19118c.a(num.intValue());
                }
            } else if (c2 == 2) {
                Integer num2 = (Integer) hashMap.get("nodeId");
                if (num2 != null) {
                    b.this.f19118c.b(num2.intValue());
                }
            } else if (c2 == 3 && (str = (String) hashMap2.get("message")) != null) {
                b.this.f19118c.b(str);
            }
            eVar.a(null);
        }
    }

    /* compiled from: AccessibilityChannel.java */
    /* renamed from: io.flutter.embedding.engine.i.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0237b extends FlutterJNI.a {
        void a(int i2);

        void a(@NonNull String str);

        void b(int i2);

        void b(@NonNull String str);
    }

    public b(@NonNull io.flutter.embedding.engine.e.a aVar, @NonNull FlutterJNI flutterJNI) {
        this.f19116a = new g.a.c.a.b<>(aVar, "flutter/accessibility", n.f18234a);
        this.f19116a.a(this.f19119d);
        this.f19117b = flutterJNI;
    }

    public void b() {
        this.f19117b.setSemanticsEnabled(true);
    }

    public void a() {
        this.f19117b.setSemanticsEnabled(false);
    }

    public void a(int i2) {
        this.f19117b.setAccessibilityFeatures(i2);
    }

    public void a(int i2, @NonNull c.f fVar) {
        this.f19117b.dispatchSemanticsAction(i2, fVar);
    }

    public void a(int i2, @NonNull c.f fVar, @Nullable Object obj) {
        this.f19117b.dispatchSemanticsAction(i2, fVar, obj);
    }

    public void a(@Nullable InterfaceC0237b interfaceC0237b) {
        this.f19118c = interfaceC0237b;
        this.f19117b.setAccessibilityDelegate(interfaceC0237b);
    }
}
