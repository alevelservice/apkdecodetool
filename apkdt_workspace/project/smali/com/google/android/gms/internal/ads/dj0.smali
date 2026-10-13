.class public final Lcom/google/android/gms/internal/ads/dj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/x10;

.field private final b:Lcom/google/android/gms/internal/ads/zi0;

.field private final c:Lcom/google/android/gms/internal/ads/ot;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x10;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zi0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zi0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->b:Lcom/google/android/gms/internal/ads/zi0;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dj0;->a:Lcom/google/android/gms/internal/ads/x10;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dj0;->b:Lcom/google/android/gms/internal/ads/zi0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->a:Lcom/google/android/gms/internal/ads/x10;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x10;->e()Lcom/google/android/gms/internal/ads/zzafp;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/cj0;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/cj0;-><init>(Lcom/google/android/gms/internal/ads/zi0;Lcom/google/android/gms/internal/ads/zzafp;)V

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dj0;->c:Lcom/google/android/gms/internal/ads/ot;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/b00;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/b00;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dj0;->a:Lcom/google/android/gms/internal/ads/x10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dj0;->b:Lcom/google/android/gms/internal/ads/zi0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zi0;->a()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/b00;-><init>(Lcom/google/android/gms/internal/ads/x10;Lcom/google/android/gms/internal/ads/zzur;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->b:Lcom/google/android/gms/internal/ads/zi0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zi0;->a(Lcom/google/android/gms/internal/ads/zzur;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/jt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->b:Lcom/google/android/gms/internal/ads/zi0;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/qu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->b:Lcom/google/android/gms/internal/ads/zi0;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/ot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->c:Lcom/google/android/gms/internal/ads/ot;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/wt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->b:Lcom/google/android/gms/internal/ads/zi0;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/st1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->b:Lcom/google/android/gms/internal/ads/zi0;

    return-object v0
.end method
