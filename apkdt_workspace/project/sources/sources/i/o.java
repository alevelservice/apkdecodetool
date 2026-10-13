package i;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* compiled from: Dns.java */
/* loaded from: classes2.dex */
public interface o {

    /* renamed from: a, reason: collision with root package name */
    public static final o f18771a = new a();

    /* compiled from: Dns.java */
    /* loaded from: classes2.dex */
    class a implements o {
        a() {
        }

        @Override // i.o
        public List<InetAddress> a(String str) {
            if (str != null) {
                try {
                    return Arrays.asList(InetAddress.getAllByName(str));
                } catch (NullPointerException e2) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + str);
                    unknownHostException.initCause(e2);
                    throw unknownHostException;
                }
            }
            throw new UnknownHostException("hostname == null");
        }
    }

    List<InetAddress> a(String str);
}
