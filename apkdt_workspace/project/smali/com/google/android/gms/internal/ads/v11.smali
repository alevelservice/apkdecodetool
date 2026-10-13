.class final Lcom/google/android/gms/internal/ads/v11;
.super Lcom/google/android/gms/internal/ads/t01;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u01;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t01<",
        "Lcom/google/android/gms/internal/ads/r01;",
        "Lcom/google/android/gms/internal/ads/t31;",
        "Lcom/google/android/gms/internal/ads/p31;",
        ">;",
        "Lcom/google/android/gms/internal/ads/u01<",
        "Lcom/google/android/gms/internal/ads/r01;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/r01;

    const-class v1, Lcom/google/android/gms/internal/ads/t31;

    const-class v2, Lcom/google/android/gms/internal/ads/p31;

    const-string v3, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/t01;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final c()Lcom/google/android/gms/internal/ads/l41$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/l41$b;->zzgxb:Lcom/google/android/gms/internal/ads/l41$b;

    return-object v0
.end method

.method protected final synthetic c(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/t31;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t31;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t71;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t31;->k()I

    move-result v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/a71;->a(II)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t31;->n()Lcom/google/android/gms/internal/ads/u31;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u31;->o()Lcom/google/android/gms/internal/ads/q31;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e21;->a(Lcom/google/android/gms/internal/ads/q31;)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t31;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/t31;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/p31;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p31;->k()Lcom/google/android/gms/internal/ads/q31;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e21;->a(Lcom/google/android/gms/internal/ads/q31;)V

    return-void
.end method

.method protected final synthetic e(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p31;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/p31;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;
    .locals 9

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/t31;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t31;->n()Lcom/google/android/gms/internal/ads/u31;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u31;->o()Lcom/google/android/gms/internal/ads/q31;

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t31;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object p1

    .line 7
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/f61;->a(Lcom/google/android/gms/internal/ads/g61;[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v4

    .line 8
    new-instance v8, Lcom/google/android/gms/internal/ads/g21;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q31;->m()Lcom/google/android/gms/internal/ads/m31;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/m31;->k()Lcom/google/android/gms/internal/ads/r41;

    move-result-object p1

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/ads/g21;-><init>(Lcom/google/android/gms/internal/ads/r41;)V

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/a61;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y31;->n()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object v5

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y31;->k()Lcom/google/android/gms/internal/ads/e41;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/e21;->a(Lcom/google/android/gms/internal/ads/e41;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q31;->n()Lcom/google/android/gms/internal/ads/k31;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/e21;->a(Lcom/google/android/gms/internal/ads/k31;)Lcom/google/android/gms/internal/ads/i61;

    move-result-object v7

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/a61;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/i61;Lcom/google/android/gms/internal/ads/y51;)V

    return-object p1
.end method

.method public final synthetic f(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/p31;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p31;->k()Lcom/google/android/gms/internal/ads/q31;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q31;->k()Lcom/google/android/gms/internal/ads/y31;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y31;->m()Lcom/google/android/gms/internal/ads/z31;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/e21;->a(Lcom/google/android/gms/internal/ads/z31;)Lcom/google/android/gms/internal/ads/g61;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f61;->a(Lcom/google/android/gms/internal/ads/g61;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f61;->a(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 6
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 7
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/u31;->q()Lcom/google/android/gms/internal/ads/u31$a;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/u31$a;->a(I)Lcom/google/android/gms/internal/ads/u31$a;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p31;->k()Lcom/google/android/gms/internal/ads/q31;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/u31$a;->a(Lcom/google/android/gms/internal/ads/q31;)Lcom/google/android/gms/internal/ads/u31$a;

    .line 11
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/u31$a;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/u31$a;

    .line 12
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/u31$a;->b(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/u31$a;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/u31;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/t31;->o()Lcom/google/android/gms/internal/ads/t31$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/t31$a;->a(I)Lcom/google/android/gms/internal/ads/t31$a;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/t31$a;->a(Lcom/google/android/gms/internal/ads/u31;)Lcom/google/android/gms/internal/ads/t31$a;

    .line 17
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/t31$a;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/t31$a;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/t31;

    return-object p1
.end method

.method public final getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
