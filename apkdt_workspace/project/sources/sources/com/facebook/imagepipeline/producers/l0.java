package com.facebook.imagepipeline.producers;

import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: ProducerListener.java */
/* loaded from: classes.dex */
public interface l0 {
    void a(String str, String str2);

    void a(String str, String str2, String str3);

    void a(String str, String str2, Throwable th, @Nullable Map<String, String> map);

    void a(String str, String str2, @Nullable Map<String, String> map);

    void a(String str, String str2, boolean z);

    boolean a(String str);

    void b(String str, String str2, @Nullable Map<String, String> map);
}
