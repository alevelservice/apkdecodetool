package com.mapbox.mapboxsdk.http;

import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.http.f;
import java.util.concurrent.locks.ReentrantLock;

@Keep
/* loaded from: classes2.dex */
public class NativeHttpRequest implements e {
    private final c httpRequest = Mapbox.getModuleProvider().b();
    private final ReentrantLock lock = new ReentrantLock();

    @Keep
    private long nativePtr;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements f.a {
        a() {
        }

        @Override // com.mapbox.mapboxsdk.http.f.a
        public void a(@Nullable byte[] bArr) {
            if (bArr != null) {
                NativeHttpRequest.this.lock.lock();
                if (NativeHttpRequest.this.nativePtr != 0) {
                    NativeHttpRequest.this.nativeOnResponse(200, null, null, null, null, null, null, bArr);
                }
                NativeHttpRequest.this.lock.unlock();
            }
        }
    }

    @Keep
    private NativeHttpRequest(long j2, String str, String str2, String str3, boolean z) {
        this.nativePtr = j2;
        if (str.startsWith("local://")) {
            executeLocalRequest(str);
        } else {
            this.httpRequest.a(this, j2, str, str2, str3, z);
        }
    }

    private void executeLocalRequest(String str) {
        new f(new a()).execute(str);
    }

    @Keep
    private native void nativeOnFailure(int i2, String str);

    /* JADX INFO: Access modifiers changed from: private */
    @Keep
    public native void nativeOnResponse(int i2, String str, String str2, String str3, String str4, String str5, String str6, byte[] bArr);

    public void cancel() {
        this.httpRequest.a();
        this.lock.lock();
        this.nativePtr = 0L;
        this.lock.unlock();
    }

    @Override // com.mapbox.mapboxsdk.http.e
    public void handleFailure(int i2, String str) {
        this.lock.lock();
        if (this.nativePtr != 0) {
            nativeOnFailure(i2, str);
        }
        this.lock.unlock();
    }

    @Override // com.mapbox.mapboxsdk.http.e
    public void onResponse(int i2, String str, String str2, String str3, String str4, String str5, String str6, byte[] bArr) {
        this.lock.lock();
        if (this.nativePtr != 0) {
            nativeOnResponse(i2, str, str2, str3, str4, str5, str6, bArr);
        }
        this.lock.unlock();
    }
}
