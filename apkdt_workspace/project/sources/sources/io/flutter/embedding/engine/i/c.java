package io.flutter.embedding.engine.i;

import android.os.Build;
import android.view.InputDevice;
import android.view.KeyEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import g.a.c.a.b;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: KeyEventChannel.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private a f19121a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.b<Object> f19122b;

    /* compiled from: KeyEventChannel.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(long j2);

        void b(long j2);
    }

    public c(@NonNull g.a.c.a.c cVar) {
        this.f19122b = new g.a.c.a.b<>(cVar, "flutter/keyevent", g.a.c.a.f.f18221a);
    }

    public void a(a aVar) {
        this.f19121a = aVar;
    }

    public void b(@NonNull b bVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", "keyup");
        hashMap.put("keymap", "android");
        a(bVar, hashMap);
        this.f19122b.a(hashMap, a(bVar.m));
    }

    b.e<Object> a(final long j2) {
        return new b.e() { // from class: io.flutter.embedding.engine.i.a
            @Override // g.a.c.a.b.e
            public final void a(Object obj) {
                c.this.a(j2, obj);
            }
        };
    }

    public /* synthetic */ void a(long j2, Object obj) {
        a aVar = this.f19121a;
        if (aVar == null) {
            return;
        }
        try {
            if (obj == null) {
                aVar.a(j2);
            } else if (((JSONObject) obj).getBoolean("handled")) {
                this.f19121a.b(j2);
            } else {
                this.f19121a.a(j2);
            }
        } catch (JSONException e2) {
            g.a.b.b("KeyEventChannel", "Unable to unpack JSON message: " + e2);
            this.f19121a.a(j2);
        }
    }

    /* compiled from: KeyEventChannel.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f19123a;

        /* renamed from: b, reason: collision with root package name */
        public final int f19124b;

        /* renamed from: c, reason: collision with root package name */
        public final int f19125c;

        /* renamed from: d, reason: collision with root package name */
        public final int f19126d;

        /* renamed from: e, reason: collision with root package name */
        public final int f19127e;

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        public final Character f19128f;

        /* renamed from: g, reason: collision with root package name */
        public final int f19129g;

        /* renamed from: h, reason: collision with root package name */
        public final int f19130h;

        /* renamed from: i, reason: collision with root package name */
        public final int f19131i;

        /* renamed from: j, reason: collision with root package name */
        public final int f19132j;

        /* renamed from: k, reason: collision with root package name */
        public final int f19133k;

        /* renamed from: l, reason: collision with root package name */
        public final int f19134l;
        public final long m;

        public b(@NonNull KeyEvent keyEvent, @Nullable Character ch, long j2) {
            this(keyEvent.getDeviceId(), keyEvent.getFlags(), keyEvent.getUnicodeChar(0), keyEvent.getUnicodeChar(), keyEvent.getKeyCode(), ch, keyEvent.getScanCode(), keyEvent.getMetaState(), keyEvent.getSource(), keyEvent.getRepeatCount(), j2);
        }

        public b(int i2, int i3, int i4, int i5, int i6, @Nullable Character ch, int i7, int i8, int i9, int i10, long j2) {
            this.f19123a = i2;
            this.f19124b = i3;
            this.f19125c = i4;
            this.f19126d = i5;
            this.f19127e = i6;
            this.f19128f = ch;
            this.f19129g = i7;
            this.f19130h = i8;
            this.f19131i = i9;
            this.f19134l = i10;
            this.m = j2;
            InputDevice device = InputDevice.getDevice(i2);
            if (device != null) {
                if (Build.VERSION.SDK_INT >= 19) {
                    this.f19132j = device.getVendorId();
                    this.f19133k = device.getProductId();
                    return;
                } else {
                    this.f19132j = 0;
                    this.f19133k = 0;
                    return;
                }
            }
            this.f19132j = 0;
            this.f19133k = 0;
        }
    }

    public void a(@NonNull b bVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", "keydown");
        hashMap.put("keymap", "android");
        a(bVar, hashMap);
        this.f19122b.a(hashMap, a(bVar.m));
    }

    private void a(@NonNull b bVar, @NonNull Map<String, Object> map) {
        map.put("flags", Integer.valueOf(bVar.f19124b));
        map.put("plainCodePoint", Integer.valueOf(bVar.f19125c));
        map.put("codePoint", Integer.valueOf(bVar.f19126d));
        map.put("keyCode", Integer.valueOf(bVar.f19127e));
        map.put("scanCode", Integer.valueOf(bVar.f19129g));
        map.put("metaState", Integer.valueOf(bVar.f19130h));
        Character ch = bVar.f19128f;
        if (ch != null) {
            map.put("character", ch.toString());
        }
        map.put("source", Integer.valueOf(bVar.f19131i));
        map.put("vendorId", Integer.valueOf(bVar.f19132j));
        map.put(ZdocRecordService.PRODUCT_ID, Integer.valueOf(bVar.f19133k));
        map.put("deviceId", Integer.valueOf(bVar.f19123a));
        map.put("repeatCount", Integer.valueOf(bVar.f19134l));
    }
}
