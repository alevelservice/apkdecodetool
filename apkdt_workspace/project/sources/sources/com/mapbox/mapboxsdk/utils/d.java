package com.mapbox.mapboxsdk.utils;

import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.log.Logger;
import java.io.File;

/* compiled from: FileUtils.java */
/* loaded from: classes2.dex */
public class d {

    /* compiled from: FileUtils.java */
    /* loaded from: classes2.dex */
    static class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f16375e;

        a(String str) {
            this.f16375e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                File file = new File(this.f16375e);
                if (file.exists()) {
                    if (file.delete()) {
                        Logger.d("Mbgl-FileUtils", "File deleted to save space: " + this.f16375e);
                    } else {
                        Logger.e("Mbgl-FileUtils", "Failed to delete file: " + this.f16375e);
                    }
                }
            } catch (Exception e2) {
                Logger.e("Mbgl-FileUtils", "Failed to delete file: ", e2);
            }
        }
    }

    /* compiled from: FileUtils.java */
    /* loaded from: classes2.dex */
    public interface b {
    }

    public static void a(@NonNull String str) {
        new Thread(new a(str)).start();
    }
}
