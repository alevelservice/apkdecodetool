package com.mapbox.mapboxsdk.http;

import android.content.res.AssetManager;
import android.os.AsyncTask;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.log.Logger;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: LocalRequestTask.java */
/* loaded from: classes2.dex */
class f extends AsyncTask<String, Void, byte[]> {

    /* renamed from: a, reason: collision with root package name */
    private a f15766a;

    /* compiled from: LocalRequestTask.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(byte[] bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar) {
        this.f15766a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @Nullable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public byte[] doInBackground(String... strArr) {
        return a(Mapbox.getApplicationContext().getAssets(), "integration/" + strArr[0].substring(8).replaceAll("%20", HanziToPinyin.Token.SEPARATOR).replaceAll("%2c", ","));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(@Nullable byte[] bArr) {
        a aVar;
        super.onPostExecute(bArr);
        if (bArr == null || (aVar = this.f15766a) == null) {
            return;
        }
        aVar.a(bArr);
    }

    @Nullable
    private static byte[] a(AssetManager assetManager, @NonNull String str) {
        byte[] bArr;
        InputStream inputStream;
        InputStream inputStream2 = null;
        byte[] bArr2 = null;
        InputStream inputStream3 = null;
        try {
            try {
                inputStream = assetManager.open(str);
            } catch (Throwable th) {
                th = th;
                inputStream = inputStream2;
            }
        } catch (IOException e2) {
            e = e2;
            bArr = null;
        }
        try {
            bArr2 = new byte[inputStream.available()];
            inputStream.read(bArr2);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    a(e3);
                }
            }
            bArr = bArr2;
            inputStream2 = bArr2;
        } catch (IOException e4) {
            e = e4;
            byte[] bArr3 = bArr2;
            inputStream3 = inputStream;
            bArr = bArr3;
            a(e);
            inputStream2 = inputStream3;
            if (inputStream3 != null) {
                try {
                    inputStream3.close();
                    inputStream2 = inputStream3;
                } catch (IOException e5) {
                    a(e5);
                    inputStream2 = inputStream3;
                }
            }
            return bArr;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e6) {
                    a(e6);
                }
            }
            throw th;
        }
        return bArr;
    }

    private static void a(Exception exc) {
        Logger.e("Mbgl-LocalRequestTask", "Load file failed", exc);
        com.mapbox.mapboxsdk.d.a("Load file failed", exc);
    }
}
