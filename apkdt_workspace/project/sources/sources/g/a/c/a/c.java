package g.a.c.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.nio.ByteBuffer;

/* compiled from: BinaryMessenger.java */
/* loaded from: classes2.dex */
public interface c {

    /* compiled from: BinaryMessenger.java */
    /* loaded from: classes2.dex */
    public interface a {
        @UiThread
        void a(@Nullable ByteBuffer byteBuffer, @NonNull b bVar);
    }

    /* compiled from: BinaryMessenger.java */
    /* loaded from: classes2.dex */
    public interface b {
        @UiThread
        void a(@Nullable ByteBuffer byteBuffer);
    }

    @UiThread
    void send(@NonNull String str, @Nullable ByteBuffer byteBuffer);

    @UiThread
    void send(@NonNull String str, @Nullable ByteBuffer byteBuffer, @Nullable b bVar);

    @UiThread
    void setMessageHandler(@NonNull String str, @Nullable a aVar);
}
