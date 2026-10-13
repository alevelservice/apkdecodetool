.class final Lcom/google/android/gms/common/api/internal/zaap;
.super Lcom/google/android/gms/signin/internal/zad;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/a0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zad;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zab(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/a0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a0;->a(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/common/api/internal/f0;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/b0;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/b0;-><init>(Lcom/google/android/gms/common/api/internal/zaap;Lcom/google/android/gms/common/api/internal/d0;Lcom/google/android/gms/common/api/internal/a0;Lcom/google/android/gms/signin/internal/zak;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/f0;->a(Lcom/google/android/gms/common/api/internal/e0;)V

    const/4 p1, 0x0

    throw p1
.end method
