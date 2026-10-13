.class final Lcom/google/android/gms/internal/ads/l11;
.super Lcom/google/android/gms/internal/ads/t01;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t01<",
        "Lcom/google/android/gms/internal/ads/l01;",
        "Lcom/google/android/gms/internal/ads/y21;",
        "Lcom/google/android/gms/internal/ads/z21;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/l01;

    const-class v1, Lcom/google/android/gms/internal/ads/y21;

    const-class v2, Lcom/google/android/gms/internal/ads/z21;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesEaxKey"

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
    check-cast p1, Lcom/google/android/gms/internal/ads/y21;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y21;->k()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/a71;->a(II)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y21;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t71;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/a71;->a(I)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y21;->n()Lcom/google/android/gms/internal/ads/c31;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c31;->k()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y21;->n()Lcom/google/android/gms/internal/ads/c31;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c31;->k()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y21;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/y21;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/z21;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z21;->k()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/a71;->a(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z21;->m()Lcom/google/android/gms/internal/ads/c31;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c31;->k()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z21;->m()Lcom/google/android/gms/internal/ads/c31;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c31;->k()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected final synthetic e(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/z21;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/z21;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/y21;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/p51;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y21;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y21;->n()Lcom/google/android/gms/internal/ads/c31;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c31;->k()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/p51;-><init>([BI)V

    return-object v0
.end method

.method public final synthetic f(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/z21;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/y21;->o()Lcom/google/android/gms/internal/ads/y21$a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z21;->k()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/w61;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/y21$a;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/y21$a;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z21;->m()Lcom/google/android/gms/internal/ads/c31;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/y21$a;->a(Lcom/google/android/gms/internal/ads/c31;)Lcom/google/android/gms/internal/ads/y21$a;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/y21$a;->a(I)Lcom/google/android/gms/internal/ads/y21$a;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/y21;

    return-object p1
.end method

.method public final getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
