.class final Lcom/google/android/gms/internal/ads/q11;
.super Lcom/google/android/gms/internal/ads/t01;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t01<",
        "Lcom/google/android/gms/internal/ads/l01;",
        "Lcom/google/android/gms/internal/ads/a51;",
        "Lcom/google/android/gms/internal/ads/b51;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/l01;

    const-class v1, Lcom/google/android/gms/internal/ads/a51;

    const-class v2, Lcom/google/android/gms/internal/ads/b51;

    const-string v3, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/t01;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final c()Lcom/google/android/gms/internal/ads/l41$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/l41$b;->zzgxd:Lcom/google/android/gms/internal/ads/l41$b;

    return-object v0
.end method

.method protected final synthetic c(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/a51;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/a51;->k()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/a71;->a(II)V

    return-void
.end method

.method protected final synthetic d(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/a51;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/a51;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/b51;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/b51;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;
    .locals 1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/a51;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/a51;->m()Lcom/google/android/gms/internal/ads/b51;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/b51;->k()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/w01;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/x01;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/x01;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/l01;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/b51;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/a51;->n()Lcom/google/android/gms/internal/ads/a51$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a51$a;->a(Lcom/google/android/gms/internal/ads/b51;)Lcom/google/android/gms/internal/ads/a51$a;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a51$a;->a(I)Lcom/google/android/gms/internal/ads/a51$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/a51;

    return-object p1
.end method

.method public final getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
