.class final Lcom/google/android/gms/internal/ads/u11;
.super Lcom/google/android/gms/internal/ads/t01;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t01<",
        "Lcom/google/android/gms/internal/ads/s01;",
        "Lcom/google/android/gms/internal/ads/u31;",
        "Lcom/google/android/gms/internal/ads/a41;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/s01;

    const-class v1, Lcom/google/android/gms/internal/ads/u31;

    const-class v2, Lcom/google/android/gms/internal/ads/a41;

    const-string v3, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/t01;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final c()Lcom/google/android/gms/internal/ads/l41$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/l41$b;->zzgxc:Lcom/google/android/gms/internal/ads/l41$b;

    return-object v0
.end method

.method protected final synthetic c(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/u31;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u31;->k()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/a71;->a(II)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u31;->o()Lcom/google/android/gms/internal/ads/q31;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e21;->a(Lcom/google/android/gms/internal/ads/q31;)V

    return-void
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/u31;->c(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/u31;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic d(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 0

    return-void
.end method

.method protected final synthetic e(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/a41;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/a41;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic e(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;
    .locals 10

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/u31;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u31;->o()Lcom/google/android/gms/internal/ads/q31;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q31;->k()Lcom/google/android/gms/internal/ads/y31;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y31;->m()Lcom/google/android/gms/internal/ads/z31;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/e21;->a(Lcom/google/android/gms/internal/ads/z31;)Lcom/google/android/gms/internal/ads/g61;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u31;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u31;->n()Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object p1

    .line 8
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/f61;->a(Lcom/google/android/gms/internal/ads/g61;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    .line 9
    new-instance v9, Lcom/google/android/gms/internal/ads/g21;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q31;->m()Lcom/google/android/gms/internal/ads/m31;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/m31;->k()Lcom/google/android/gms/internal/ads/r41;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/ads/g21;-><init>(Lcom/google/android/gms/internal/ads/r41;)V

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/z51;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y31;->n()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object v6

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y31;->k()Lcom/google/android/gms/internal/ads/e41;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/e21;->a(Lcom/google/android/gms/internal/ads/e41;)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q31;->n()Lcom/google/android/gms/internal/ads/k31;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/e21;->a(Lcom/google/android/gms/internal/ads/k31;)Lcom/google/android/gms/internal/ads/i61;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/z51;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/i61;Lcom/google/android/gms/internal/ads/y51;)V

    return-object p1
.end method

.method public final synthetic f(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 1

    .line 1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
