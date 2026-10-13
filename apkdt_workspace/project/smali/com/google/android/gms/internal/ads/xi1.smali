.class final Lcom/google/android/gms/internal/ads/xi1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ri1;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ui1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ui1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xi1;->a:Lcom/google/android/gms/internal/ads/ui1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ui1;Lcom/google/android/gms/internal/ads/yi1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xi1;-><init>(Lcom/google/android/gms/internal/ads/ui1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ui1;->z()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi1;->a:Lcom/google/android/gms/internal/ads/ui1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ui1;->a(Lcom/google/android/gms/internal/ads/ui1;Z)Z

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi1;->a:Lcom/google/android/gms/internal/ads/ui1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ui1;->a(Lcom/google/android/gms/internal/ads/ui1;)Lcom/google/android/gms/internal/ads/ci1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ci1;->a(I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ui1;->b(I)V

    return-void
.end method

.method public final a(IJJ)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi1;->a:Lcom/google/android/gms/internal/ads/ui1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ui1;->a(Lcom/google/android/gms/internal/ads/ui1;)Lcom/google/android/gms/internal/ads/ci1;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ci1;->a(IJJ)V

    .line 6
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/ui1;->a(IJJ)V

    return-void
.end method
