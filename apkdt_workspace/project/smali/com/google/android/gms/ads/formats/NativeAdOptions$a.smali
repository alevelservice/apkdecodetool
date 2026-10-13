.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lcom/google/android/gms/ads/k;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->a:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->b:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->c:I

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->d:Z

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->f:I

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->c:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->f:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)Lcom/google/android/gms/ads/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->e:Lcom/google/android/gms/ads/k;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->g:Z

    return p0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$a;
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;
        .end annotation
    .end param

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->f:I

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/ads/k;)Lcom/google/android/gms/ads/formats/NativeAdOptions$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->e:Lcom/google/android/gms/ads/k;

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->d:Z

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$a;Lcom/google/android/gms/ads/formats/i;)V

    return-object v0
.end method

.method public final b(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->b:I

    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->a:Z

    return-object p0
.end method
