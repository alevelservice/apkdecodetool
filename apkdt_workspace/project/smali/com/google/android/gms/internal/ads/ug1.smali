.class public final Lcom/google/android/gms/internal/ads/ug1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/t;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ug1;-><init>(IIF)V

    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9c4

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/ug1;->a:I

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/ug1;->c:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/ug1;->d:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ug1;->a:I

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/r0;)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/ug1;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ug1;->b:I

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/ug1;->a:I

    int-to-float v2, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/ug1;->d:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/ug1;->a:I

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/ug1;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ug1;->c:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    throw p1
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ug1;->b:I

    return v0
.end method
