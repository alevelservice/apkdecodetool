.class public final Lcom/google/android/gms/internal/ads/z10;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/zzabt;

.field b:Lcom/google/android/gms/internal/ads/zzabs;

.field c:Lcom/google/android/gms/internal/ads/zzacf;

.field d:Lcom/google/android/gms/internal/ads/zzace;

.field e:Lcom/google/android/gms/internal/ads/zzafp;

.field final f:La/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzabz;",
            ">;"
        }
    .end annotation
.end field

.field final g:La/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaby;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/e/g;

    invoke-direct {v0}, La/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/z10;->f:La/e/g;

    .line 3
    new-instance v0, La/e/g;

    invoke-direct {v0}, La/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/z10;->g:La/e/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/x10;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/x10;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/x10;-><init>(Lcom/google/android/gms/internal/ads/z10;Lcom/google/android/gms/internal/ads/w10;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/z10;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z10;->b:Lcom/google/android/gms/internal/ads/zzabs;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzabt;)Lcom/google/android/gms/internal/ads/z10;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z10;->a:Lcom/google/android/gms/internal/ads/zzabt;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzace;)Lcom/google/android/gms/internal/ads/z10;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z10;->d:Lcom/google/android/gms/internal/ads/zzace;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzacf;)Lcom/google/android/gms/internal/ads/z10;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z10;->c:Lcom/google/android/gms/internal/ads/zzacf;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzafp;)Lcom/google/android/gms/internal/ads/z10;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z10;->e:Lcom/google/android/gms/internal/ads/zzafp;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabz;Lcom/google/android/gms/internal/ads/zzaby;)Lcom/google/android/gms/internal/ads/z10;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z10;->f:La/e/g;

    invoke-virtual {v0, p1, p2}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z10;->g:La/e/g;

    invoke-virtual {p2, p1, p3}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
