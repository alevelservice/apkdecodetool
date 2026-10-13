package com.google.firebase.crashlytics.d.k;

import android.content.Context;
import java.io.File;

/* compiled from: FileStoreImpl.java */
/* loaded from: classes.dex */
public class i implements h {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14638a;

    public i(Context context) {
        this.f14638a = context;
    }

    @Override // com.google.firebase.crashlytics.d.k.h
    public String a() {
        return new File(this.f14638a.getFilesDir(), ".com.google.firebase.crashlytics").getPath();
    }

    @Override // com.google.firebase.crashlytics.d.k.h
    public File b() {
        return a(new File(this.f14638a.getFilesDir(), ".com.google.firebase.crashlytics"));
    }

    File a(File file) {
        if (file != null) {
            if (file.exists() || file.mkdirs()) {
                return file;
            }
            com.google.firebase.crashlytics.d.b.a().d("Couldn't create file");
            return null;
        }
        com.google.firebase.crashlytics.d.b.a().a("Null File");
        return null;
    }
}
