package io.flutter.embedding.engine.e;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import g.a.c.a.c;
import io.flutter.embedding.engine.FlutterJNI;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DartMessenger.java */
/* loaded from: classes2.dex */
public class b implements g.a.c.a.c, c {

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private final FlutterJNI f19040e;

    /* renamed from: h, reason: collision with root package name */
    private int f19043h = 1;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final Map<String, c.a> f19041f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    private final Map<Integer, c.b> f19042g = new HashMap();

    /* compiled from: DartMessenger.java */
    /* loaded from: classes2.dex */
    private static class a implements c.b {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final FlutterJNI f19044a;

        /* renamed from: b, reason: collision with root package name */
        private final int f19045b;

        /* renamed from: c, reason: collision with root package name */
        private final AtomicBoolean f19046c = new AtomicBoolean(false);

        a(@NonNull FlutterJNI flutterJNI, int i2) {
            this.f19044a = flutterJNI;
            this.f19045b = i2;
        }

        @Override // g.a.c.a.c.b
        public void a(@Nullable ByteBuffer byteBuffer) {
            if (this.f19046c.getAndSet(true)) {
                throw new IllegalStateException("Reply already submitted");
            }
            if (byteBuffer == null) {
                this.f19044a.invokePlatformMessageEmptyResponseCallback(this.f19045b);
            } else {
                this.f19044a.invokePlatformMessageResponseCallback(this.f19045b, byteBuffer, byteBuffer.position());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull FlutterJNI flutterJNI) {
        this.f19040e = flutterJNI;
    }

    @Override // io.flutter.embedding.engine.e.c
    public void a(@NonNull String str, @Nullable byte[] bArr, int i2) {
        g.a.b.c("DartMessenger", "Received message from Dart over channel '" + str + "'");
        c.a aVar = this.f19041f.get(str);
        if (aVar != null) {
            try {
                g.a.b.c("DartMessenger", "Deferring to registered handler to process message.");
                aVar.a(bArr == null ? null : ByteBuffer.wrap(bArr), new a(this.f19040e, i2));
                return;
            } catch (Exception e2) {
                g.a.b.a("DartMessenger", "Uncaught exception in binary message listener", e2);
                this.f19040e.invokePlatformMessageEmptyResponseCallback(i2);
                return;
            }
        }
        g.a.b.c("DartMessenger", "No registered handler for message. Responding to Dart with empty reply message.");
        this.f19040e.invokePlatformMessageEmptyResponseCallback(i2);
    }

    @Override // g.a.c.a.c
    @UiThread
    public void send(@NonNull String str, @NonNull ByteBuffer byteBuffer) {
        g.a.b.c("DartMessenger", "Sending message over channel '" + str + "'");
        send(str, byteBuffer, null);
    }

    @Override // g.a.c.a.c
    public void setMessageHandler(@NonNull String str, @Nullable c.a aVar) {
        if (aVar == null) {
            g.a.b.c("DartMessenger", "Removing handler for channel '" + str + "'");
            this.f19041f.remove(str);
            return;
        }
        g.a.b.c("DartMessenger", "Setting handler for channel '" + str + "'");
        this.f19041f.put(str, aVar);
    }

    @Override // g.a.c.a.c
    public void send(@NonNull String str, @Nullable ByteBuffer byteBuffer, @Nullable c.b bVar) {
        int i2;
        g.a.b.c("DartMessenger", "Sending message with callback over channel '" + str + "'");
        if (bVar != null) {
            i2 = this.f19043h;
            this.f19043h = i2 + 1;
            this.f19042g.put(Integer.valueOf(i2), bVar);
        } else {
            i2 = 0;
        }
        if (byteBuffer == null) {
            this.f19040e.dispatchEmptyPlatformMessage(str, i2);
        } else {
            this.f19040e.dispatchPlatformMessage(str, byteBuffer, byteBuffer.position(), i2);
        }
    }

    @Override // io.flutter.embedding.engine.e.c
    public void a(int i2, @Nullable byte[] bArr) {
        g.a.b.c("DartMessenger", "Received message reply from Dart.");
        c.b remove = this.f19042g.remove(Integer.valueOf(i2));
        if (remove != null) {
            try {
                g.a.b.c("DartMessenger", "Invoking registered callback for reply from Dart.");
                remove.a(bArr == null ? null : ByteBuffer.wrap(bArr));
            } catch (Exception e2) {
                g.a.b.a("DartMessenger", "Uncaught exception in binary message reply handler", e2);
            }
        }
    }
}
