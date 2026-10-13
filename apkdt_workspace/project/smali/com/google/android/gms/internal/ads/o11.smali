.class final Lcom/google/android/gms/internal/ads/o11;
.super Lcom/google/android/gms/internal/ads/t01;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t01<",
        "Lcom/google/android/gms/internal/ads/l01;",
        "Lcom/google/android/gms/internal/ads/e31;",
        "Lcom/google/android/gms/internal/ads/f31;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/l01;

    const-class v1, Lcom/google/android/gms/internal/ads/e31;

    const-class v2, Lcom/google/android/gms/internal/ads/f31;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/t01;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final c()Lcom/google/android/gms/internal/ads/l41$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/l41$b;->zzgxa:Lcom/google/android/gms/internal/ads/l41$b;

    return-object v0
.end method

.method protected final synthetic c(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/e31;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e31;->k()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/a71;->a(II)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e31;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t71;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/a71;->a(I)V

    return-void
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e31;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/e31;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/f31;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f31;->k()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/a71;->a(I)V

    return-void
.end method

.method protected final synthetic e(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/f31;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/f31;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic e(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;
    .locals 1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/e31;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/r51;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e31;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/r51;-><init>([B)V

    return-object v0
.end method

.method protected final synthetic f(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/f31;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/e31;->n()Lcom/google/android/gms/internal/ads/e31$a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f31;->k()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/w61;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/e31$a;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/e31$a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/e31$a;->a(I)Lcom/google/android/gms/internal/ads/e31$a;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/e31;

    return-object p1
.end method

.method public final getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
