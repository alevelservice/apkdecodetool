.class final Lcom/google/android/gms/internal/ads/z1;
.super Lcom/google/android/gms/internal/ads/hk;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final synthetic d:Lcom/google/android/gms/internal/ads/s1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z1;->d:Lcom/google/android/gms/internal/ads/s1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/s1;Lcom/google/android/gms/internal/ads/x1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/z1;-><init>(Lcom/google/android/gms/internal/ads/s1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/gk;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/z1;->d:Lcom/google/android/gms/internal/ads/s1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s1;->a(Lcom/google/android/gms/internal/ads/s1;)Lcom/google/android/gms/internal/ads/g2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/z1;->d:Lcom/google/android/gms/internal/ads/s1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s1;->a(Lcom/google/android/gms/internal/ads/s1;)Lcom/google/android/gms/internal/ads/g2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/g2;->a()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/gk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->d:Lcom/google/android/gms/internal/ads/s1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/gk;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/c2;->a(Landroid/net/Uri;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/gk;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->d:Lcom/google/android/gms/internal/ads/s1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/gk;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/c2;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
