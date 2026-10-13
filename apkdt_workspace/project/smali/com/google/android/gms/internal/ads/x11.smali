.class public final Lcom/google/android/gms/internal/ads/x11;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/k51;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/ads/k51;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/k51;->m()Lcom/google/android/gms/internal/ads/k51$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/g11;->a:Lcom/google/android/gms/internal/ads/k51;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/k51$a;

    const-string v1, "EciesAeadHkdfPrivateKey"

    const-string v2, "HybridDecrypt"

    const-string v3, "TinkHybridDecrypt"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3
    invoke-static {v3, v2, v1, v5, v4}, Lcom/google/android/gms/internal/ads/n01;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/s41;

    move-result-object v6

    .line 4
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/k51$a;->a(Lcom/google/android/gms/internal/ads/s41;)Lcom/google/android/gms/internal/ads/k51$a;

    const-string v6, "EciesAeadHkdfPublicKey"

    const-string v7, "HybridEncrypt"

    const-string v8, "TinkHybridEncrypt"

    .line 5
    invoke-static {v8, v7, v6, v5, v4}, Lcom/google/android/gms/internal/ads/n01;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/s41;

    move-result-object v9

    .line 6
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/k51$a;->a(Lcom/google/android/gms/internal/ads/s41;)Lcom/google/android/gms/internal/ads/k51$a;

    const-string v9, "TINK_HYBRID_1_0_0"

    .line 7
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/k51$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/k51$a;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/k51;

    sput-object v0, Lcom/google/android/gms/internal/ads/x11;->a:Lcom/google/android/gms/internal/ads/k51;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/k51;->m()Lcom/google/android/gms/internal/ads/k51$a;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/internal/ads/x11;->a:Lcom/google/android/gms/internal/ads/k51;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/k51$a;

    const-string v9, "TINK_HYBRID_1_1_0"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/k51$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/k51$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/k51;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/k51;->m()Lcom/google/android/gms/internal/ads/k51$a;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/internal/ads/g11;->b:Lcom/google/android/gms/internal/ads/k51;

    .line 11
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/k51$a;

    .line 12
    invoke-static {v3, v2, v1, v5, v4}, Lcom/google/android/gms/internal/ads/n01;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/s41;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/k51$a;->a(Lcom/google/android/gms/internal/ads/s41;)Lcom/google/android/gms/internal/ads/k51$a;

    .line 14
    invoke-static {v8, v7, v6, v5, v4}, Lcom/google/android/gms/internal/ads/n01;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/s41;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/k51$a;->a(Lcom/google/android/gms/internal/ads/s41;)Lcom/google/android/gms/internal/ads/k51$a;

    const-string v1, "TINK_HYBRID"

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/k51$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/k51$a;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/k51;

    sput-object v0, Lcom/google/android/gms/internal/ads/x11;->b:Lcom/google/android/gms/internal/ads/k51;

    .line 18
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/x11;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/g11;->a()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/a21;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a21;-><init>()V

    const-string v1, "TinkHybridEncrypt"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/d11;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o01;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/w11;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/w11;-><init>()V

    const-string v1, "TinkHybridDecrypt"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/d11;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o01;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/x11;->b:Lcom/google/android/gms/internal/ads/k51;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/n01;->a(Lcom/google/android/gms/internal/ads/k51;)V

    return-void
.end method
