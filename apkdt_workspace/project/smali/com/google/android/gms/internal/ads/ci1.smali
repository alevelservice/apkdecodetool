.class public final Lcom/google/android/gms/internal/ads/ci1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/gms/internal/ads/di1;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/di1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/no1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ci1;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ci1;->b:Lcom/google/android/gms/internal/ads/di1;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ci1;)Lcom/google/android/gms/internal/ads/di1;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ci1;->b:Lcom/google/android/gms/internal/ads/di1;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->b:Lcom/google/android/gms/internal/ads/di1;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ii1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ii1;-><init>(Lcom/google/android/gms/internal/ads/ci1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 9

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->b:Lcom/google/android/gms/internal/ads/di1;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/gi1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/gi1;-><init>(Lcom/google/android/gms/internal/ads/ci1;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/fj1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->b:Lcom/google/android/gms/internal/ads/di1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/fi1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/fi1;-><init>(Lcom/google/android/gms/internal/ads/ci1;Lcom/google/android/gms/internal/ads/fj1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzgq;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->b:Lcom/google/android/gms/internal/ads/di1;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/hi1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/hi1;-><init>(Lcom/google/android/gms/internal/ads/ci1;Lcom/google/android/gms/internal/ads/zzgq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->b:Lcom/google/android/gms/internal/ads/di1;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/ei1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ei1;-><init>(Lcom/google/android/gms/internal/ads/ci1;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/fj1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->b:Lcom/google/android/gms/internal/ads/di1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ci1;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ji1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ji1;-><init>(Lcom/google/android/gms/internal/ads/ci1;Lcom/google/android/gms/internal/ads/fj1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
