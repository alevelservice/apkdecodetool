.class public final Lcom/google/android/gms/internal/ads/k21;
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
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/k51;->m()Lcom/google/android/gms/internal/ads/k51$a;

    move-result-object v0

    const-string v1, "TINK_MAC_1_0_0"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/k51$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/k51$a;

    const-string v1, "TinkMac"

    const-string v2, "Mac"

    const-string v3, "HmacKey"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/n01;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/s41;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/k51$a;->a(Lcom/google/android/gms/internal/ads/s41;)Lcom/google/android/gms/internal/ads/k51$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/k51;

    sput-object v0, Lcom/google/android/gms/internal/ads/k21;->a:Lcom/google/android/gms/internal/ads/k51;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/k51;->m()Lcom/google/android/gms/internal/ads/k51$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/k21;->a:Lcom/google/android/gms/internal/ads/k51;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/k51$a;

    const-string v1, "TINK_MAC_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/k51$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/k51$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/k51;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/k51;->m()Lcom/google/android/gms/internal/ads/k51$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/k21;->a:Lcom/google/android/gms/internal/ads/k51;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/e91$a;->a(Lcom/google/android/gms/internal/ads/e91;)Lcom/google/android/gms/internal/ads/e91$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/k51$a;

    const-string v1, "TINK_MAC"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/k51$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/k51$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/k51;

    sput-object v0, Lcom/google/android/gms/internal/ads/k21;->b:Lcom/google/android/gms/internal/ads/k51;

    .line 7
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/k21;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/h21;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/h21;-><init>()V

    const-string v1, "TinkMac"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/d11;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o01;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/k21;->b:Lcom/google/android/gms/internal/ads/k51;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/n01;->a(Lcom/google/android/gms/internal/ads/k51;)V

    return-void
.end method
