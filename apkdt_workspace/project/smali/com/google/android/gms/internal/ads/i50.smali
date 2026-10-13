.class public final Lcom/google/android/gms/internal/ads/i50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/y40;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/ads/internal/b;

.field private final f:Lcom/google/android/gms/internal/ads/oi;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Lcom/google/android/gms/internal/ads/t11;

.field private final j:Lcom/google/android/gms/internal/ads/zzawv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/oi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i50;->g:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i50;->h:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i50;->i:Lcom/google/android/gms/internal/ads/t11;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/i50;->j:Lcom/google/android/gms/internal/ads/zzawv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/i50;->e:Lcom/google/android/gms/ads/internal/b;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/i50;->f:Lcom/google/android/gms/internal/ads/oi;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/i50;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i50;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/i50;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i50;->h:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/i50;)Lcom/google/android/gms/internal/ads/t11;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i50;->i:Lcom/google/android/gms/internal/ads/t11;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/i50;)Lcom/google/android/gms/internal/ads/zzawv;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i50;->j:Lcom/google/android/gms/internal/ads/zzawv;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/i50;)Lcom/google/android/gms/ads/internal/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i50;->e:Lcom/google/android/gms/ads/internal/b;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/i50;)Lcom/google/android/gms/internal/ads/oi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i50;->f:Lcom/google/android/gms/internal/ads/oi;

    return-object p0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/y40;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/y40;-><init>(Lcom/google/android/gms/internal/ads/i50;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y40;->b()V

    return-object v0
.end method
