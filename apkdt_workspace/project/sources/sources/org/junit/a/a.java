package org.junit.a;

import java.lang.reflect.Method;
import java.util.Comparator;

/* compiled from: MethodSorter.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Comparator<Method> f20198a = new C0266a();

    /* renamed from: b, reason: collision with root package name */
    public static final Comparator<Method> f20199b = new b();

    /* compiled from: MethodSorter.java */
    /* renamed from: org.junit.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0266a implements Comparator<Method> {
        C0266a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Method method, Method method2) {
            int hashCode = method.getName().hashCode();
            int hashCode2 = method2.getName().hashCode();
            if (hashCode != hashCode2) {
                return hashCode < hashCode2 ? -1 : 1;
            }
            return a.f20199b.compare(method, method2);
        }
    }

    /* compiled from: MethodSorter.java */
    /* loaded from: classes.dex */
    static class b implements Comparator<Method> {
        b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Method method, Method method2) {
            int compareTo = method.getName().compareTo(method2.getName());
            return compareTo != 0 ? compareTo : method.toString().compareTo(method2.toString());
        }
    }
}
