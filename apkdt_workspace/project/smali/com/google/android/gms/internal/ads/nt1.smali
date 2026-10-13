.class public final Lcom/google/android/gms/internal/ads/nt1;
.super Lcom/google/android/gms/internal/ads/uc1;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/uc1<",
        "Lcom/google/android/gms/internal/ads/nt1;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/internal/ads/rt1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uc1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nt1;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nt1;->d:Lcom/google/android/gms/internal/ads/rt1;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uc1;->b:Lcom/google/android/gms/internal/ads/wc1;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/bd1;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/sc1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nt1;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/sc1;->a(ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nt1;->d:Lcom/google/android/gms/internal/ads/rt1;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/sc1;->a(ILcom/google/android/gms/internal/ads/bd1;)V

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/uc1;->a(Lcom/google/android/gms/internal/ads/sc1;)V

    return-void
.end method

.method protected final c()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/uc1;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nt1;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/sc1;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nt1;->d:Lcom/google/android/gms/internal/ads/rt1;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/sc1;->b(ILcom/google/android/gms/internal/ads/bd1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
