.class final Lcom/google/android/gms/internal/ads/k11;
.super Lcom/google/android/gms/internal/ads/t01;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t01<",
        "Lcom/google/android/gms/internal/ads/l01;",
        "Lcom/google/android/gms/internal/ads/n21;",
        "Lcom/google/android/gms/internal/ads/o21;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/l01;

    const-class v1, Lcom/google/android/gms/internal/ads/n21;

    const-class v2, Lcom/google/android/gms/internal/ads/o21;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/t01;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/m11;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/m11;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d11;->a(Lcom/google/android/gms/internal/ads/u01;)V

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
    .locals 1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/n21;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n21;->k()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/a71;->a(II)V

    return-void
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n21;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/n21;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/o21;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o21;->k()Lcom/google/android/gms/internal/ads/u21;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u21;->k()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/a71;->a(I)V

    return-void
.end method

.method protected final synthetic e(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/o21;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/o21;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;
    .locals 5

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/n21;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/h61;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n21;->m()Lcom/google/android/gms/internal/ads/r21;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/t61;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    .line 5
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/d11;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/t61;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n21;->n()Lcom/google/android/gms/internal/ads/g41;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/z01;

    const-string v4, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/d11;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/z01;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n21;->n()Lcom/google/android/gms/internal/ads/g41;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/g41;->n()Lcom/google/android/gms/internal/ads/k41;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/k41;->m()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/h61;-><init>(Lcom/google/android/gms/internal/ads/t61;Lcom/google/android/gms/internal/ads/z01;I)V

    return-object v0
.end method

.method public final synthetic f(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/o21;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o21;->k()Lcom/google/android/gms/internal/ads/u21;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/d11;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/r21;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o21;->m()Lcom/google/android/gms/internal/ads/h41;

    move-result-object p1

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/d11;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g41;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/n21;->o()Lcom/google/android/gms/internal/ads/n21$a;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/n21$a;->a(Lcom/google/android/gms/internal/ads/r21;)Lcom/google/android/gms/internal/ads/n21$a;

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/n21$a;->a(Lcom/google/android/gms/internal/ads/g41;)Lcom/google/android/gms/internal/ads/n21$a;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/n21$a;->a(I)Lcom/google/android/gms/internal/ads/n21$a;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/n21;

    return-object p1
.end method

.method public final getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
