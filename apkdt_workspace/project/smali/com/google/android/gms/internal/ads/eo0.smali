.class public final Lcom/google/android/gms/internal/ads/eo0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ko0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ko0<",
        "Lcom/google/android/gms/internal/ads/bo0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tz0;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/zzawv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tz0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eo0;->a:Lcom/google/android/gms/internal/ads/tz0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eo0;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/eo0;->c:Lcom/google/android/gms/internal/ads/zzawv;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/bo0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo0;->a:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/do0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/do0;-><init>(Lcom/google/android/gms/internal/ads/eo0;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/bo0;
    .locals 10

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/bo0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo0;->b:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/o/b;->a()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wa;->k(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo0;->c:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    invoke-static {}, Lcom/google/android/gms/internal/ads/db;->e()Z

    move-result v4

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wa;->h(Landroid/content/Context;)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo0;->b:Landroid/content/Context;

    const-string v6, "com.google.android.gms.ads.dynamite"

    .line 6
    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo0;->b:Landroid/content/Context;

    .line 8
    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    move-object v0, v8

    move v6, v7

    move v7, v9

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/bo0;-><init>(ZZLjava/lang/String;ZIII)V

    return-object v8
.end method
