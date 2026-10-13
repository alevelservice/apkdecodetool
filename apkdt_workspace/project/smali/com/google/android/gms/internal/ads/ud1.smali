.class public final Lcom/google/android/gms/internal/ads/ud1;
.super Lcom/google/android/gms/internal/ads/uc1;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/uc1<",
        "Lcom/google/android/gms/internal/ads/ud1;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/google/android/gms/internal/ads/ed1;

.field public d:Ljava/lang/String;

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uc1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ud1;->c:Lcom/google/android/gms/internal/ads/ed1;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ud1;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ud1;->e:[B

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uc1;->b:Lcom/google/android/gms/internal/ads/wc1;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/bd1;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/sc1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ud1;->c:Lcom/google/android/gms/internal/ads/ed1;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ed1;->zzab()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/sc1;->a(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ud1;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/sc1;->a(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ud1;->e:[B

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/sc1;->a(I[B)V

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/uc1;->a(Lcom/google/android/gms/internal/ads/sc1;)V

    return-void
.end method

.method protected final c()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/uc1;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ud1;->c:Lcom/google/android/gms/internal/ads/ed1;

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ed1;->zzab()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/sc1;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ud1;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/sc1;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ud1;->e:[B

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/sc1;->a(I)I

    move-result v2

    .line 8
    array-length v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/sc1;->c(I)I

    move-result v3

    array-length v1, v1

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_2
    return v0
.end method
