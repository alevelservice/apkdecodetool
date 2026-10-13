.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeAdOptions$a;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I

.field private final f:Lcom/google/android/gms/ads/k;

.field private final g:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->a(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->a:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->b(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->b:I

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->c(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->c:I

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->d(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->d:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->e(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->e:I

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->f(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)Lcom/google/android/gms/ads/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->f:Lcom/google/android/gms/ads/k;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->g(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;Lcom/google/android/gms/ads/formats/i;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->e:I

    return v0
.end method

.method public final b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->c:I

    return v0
.end method

.method public final d()Lcom/google/android/gms/ads/k;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->f:Lcom/google/android/gms/ads/k;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->a:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->g:Z

    return v0
.end method
