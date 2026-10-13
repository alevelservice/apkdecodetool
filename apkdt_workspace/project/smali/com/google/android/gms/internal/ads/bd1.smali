.class public Lcom/google/android/gms/internal/ads/bd1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field protected volatile a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/bd1;->a:I

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/ads/bd1;)[B
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bd1;->a()I

    move-result v0

    new-array v0, v0, [B

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/sc1;->a([BII)Lcom/google/android/gms/internal/ads/sc1;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/bd1;->a(Lcom/google/android/gms/internal/ads/sc1;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sc1;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bd1;->c()I

    move-result v0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/bd1;->a:I

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/ads/sc1;)V
    .locals 0

    return-void
.end method

.method public b()Lcom/google/android/gms/internal/ads/bd1;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bd1;

    return-object v0
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bd1;->b()Lcom/google/android/gms/internal/ads/bd1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ad1;->a(Lcom/google/android/gms/internal/ads/bd1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
