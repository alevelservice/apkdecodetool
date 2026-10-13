.class final Lcom/google/android/gms/internal/auth-api-phone/zzq;
.super Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.source "com.google.android.gms:play-services-auth-api-phone@@17.4.0"


# instance fields
.field private final synthetic e:Le/i/b/b/d/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/c;Le/i/b/b/d/i;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;->e:Le/i/b/b/d/i;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->k()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;->e:Le/i/b/b/d/i;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/b/d/i;->b(Ljava/lang/Exception;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;->e:Le/i/b/b/d/i;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/t;->a(Lcom/google/android/gms/common/api/Status;Le/i/b/b/d/i;)V

    return-void
.end method
