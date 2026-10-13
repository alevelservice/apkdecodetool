.class public Lcom/google/android/gms/internal/ads/bj1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/bj1;->a:I

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/bj1;->a:I

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/ads/bj1;->a:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/bj1;->a:I

    return-void
.end method

.method public final b()Z
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/bj1;->c(I)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/bj1;->c(I)Z

    move-result v0

    return v0
.end method

.method protected final c(I)Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/bj1;->a:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/bj1;->c(I)Z

    move-result v0

    return v0
.end method
