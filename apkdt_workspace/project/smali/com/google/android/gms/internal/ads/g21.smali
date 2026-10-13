.class final Lcom/google/android/gms/internal/ads/g21;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y51;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/google/android/gms/internal/ads/e31;

.field private d:Lcom/google/android/gms/internal/ads/n21;

.field private e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/r41;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r41;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g21;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g21;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r41;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f31;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/f31;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d11;->b(Lcom/google/android/gms/internal/ads/r41;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/e31;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g21;->c:Lcom/google/android/gms/internal/ads/e31;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f31;->k()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/g21;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/o91; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g21;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r41;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/o21;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/o21;

    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d11;->b(Lcom/google/android/gms/internal/ads/r41;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/n21;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g21;->d:Lcom/google/android/gms/internal/ads/n21;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o21;->k()Lcom/google/android/gms/internal/ads/u21;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u21;->k()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/g21;->e:I

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o21;->m()Lcom/google/android/gms/internal/ads/h41;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/h41;->k()I

    move-result p1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/g21;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/g21;->b:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/o91; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 14
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unsupported AEAD DEM key type: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g21;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g21;->b:I

    return v0
.end method

.method public final a([B)Lcom/google/android/gms/internal/ads/l01;
    .locals 4

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/l01;

    array-length v1, p1

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/g21;->b:I

    if-ne v1, v2, :cond_2

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g21;->a:Ljava/lang/String;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/e31;->n()Lcom/google/android/gms/internal/ads/e31$a;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/g21;->c:Lcom/google/android/gms/internal/ads/e31;

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    check-cast v1, Lcom/google/android/gms/internal/ads/e31$a;

    iget v3, p0, Lcom/google/android/gms/internal/ads/g21;->b:I

    .line 7
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/t71;->zzh([BII)Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/e31$a;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/e31$a;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/e31;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g21;->a:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/d11;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/l01;

    return-object p1

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g21;->a:Ljava/lang/String;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/g21;->e:I

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 12
    iget v2, p0, Lcom/google/android/gms/internal/ads/g21;->e:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/g21;->b:I

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/r21;->o()Lcom/google/android/gms/internal/ads/r21$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/g21;->d:Lcom/google/android/gms/internal/ads/n21;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/n21;->m()Lcom/google/android/gms/internal/ads/r21;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    check-cast v2, Lcom/google/android/gms/internal/ads/r21$a;

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/r21$a;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/r21$a;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/r21;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/g41;->o()Lcom/google/android/gms/internal/ads/g41$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/g21;->d:Lcom/google/android/gms/internal/ads/n21;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/n21;->n()Lcom/google/android/gms/internal/ads/g41;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    check-cast v2, Lcom/google/android/gms/internal/ads/g41$a;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/g41$a;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/g41$a;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g41;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/n21;->o()Lcom/google/android/gms/internal/ads/n21$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/g21;->d:Lcom/google/android/gms/internal/ads/n21;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/n21;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/n21$a;->a(I)Lcom/google/android/gms/internal/ads/n21$a;

    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/n21$a;->a(Lcom/google/android/gms/internal/ads/r21;)Lcom/google/android/gms/internal/ads/n21$a;

    .line 24
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/n21$a;->a(Lcom/google/android/gms/internal/ads/g41;)Lcom/google/android/gms/internal/ads/n21$a;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/n21;

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g21;->a:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/d11;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/l01;

    return-object p1

    .line 27
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
