package e.m.b;

import g.a.c.a.k;
import g.a.c.a.m;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: GlobalMethodHandler.java */
/* loaded from: classes2.dex */
class m implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private final m.d f18071e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(m.d dVar) {
        this.f18071e = dVar;
    }

    private void a(String str) {
        File file = new File(this.f18071e.c().getFilesDir(), "mbgl-offline.db");
        try {
            InputStream b2 = b(str);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    a(b2, fileOutputStream);
                    fileOutputStream.close();
                    if (b2 != null) {
                        b2.close();
                    }
                } finally {
                }
            } finally {
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private InputStream b(String str) {
        if (str.startsWith("/")) {
            return new FileInputStream(new File(str));
        }
        return this.f18071e.c().getAssets().open(this.f18071e.a(str));
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        String str = jVar.f18223a;
        if (((str.hashCode() == 410095473 && str.equals("installOfflineMapTiles")) ? (char) 0 : (char) 65535) != 0) {
            dVar.a();
        } else {
            a((String) jVar.a("tilesdb"));
            dVar.a(null);
        }
    }

    private static int a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[2048];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 2048);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream, 2048);
        int i2 = 0;
        while (true) {
            try {
                int read = bufferedInputStream.read(bArr, 0, 2048);
                if (read == -1) {
                    break;
                }
                bufferedOutputStream.write(bArr, 0, read);
                i2 += read;
            } finally {
            }
        }
        bufferedOutputStream.flush();
        try {
            bufferedOutputStream.close();
        } catch (IOException e2) {
            e2.getMessage();
        }
        try {
            bufferedInputStream.close();
        } catch (IOException e3) {
            e3.getMessage();
        }
        return i2;
    }
}
