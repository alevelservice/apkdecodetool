.class final synthetic Lcom/google/android/gms/internal/ads/da0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/qz0;

.field private final f:Lcom/google/android/gms/internal/ads/zzawv;

.field private final g:Landroid/content/pm/ApplicationInfo;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/List;

.field private final j:Landroid/content/pm/PackageInfo;

.field private final k:Lcom/google/android/gms/internal/ads/qz0;

.field private final l:Lcom/google/android/gms/internal/ads/pa;

.field private final m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/zzawv;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pa;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/da0;->e:Lcom/google/android/gms/internal/ads/qz0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/da0;->f:Lcom/google/android/gms/internal/ads/zzawv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/da0;->g:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/da0;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/da0;->i:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/da0;->j:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/da0;->k:Lcom/google/android/gms/internal/ads/qz0;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/da0;->l:Lcom/google/android/gms/internal/ads/pa;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/da0;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da0;->e:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/da0;->f:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/da0;->g:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/da0;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/da0;->i:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/da0;->j:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da0;->k:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/da0;->l:Lcom/google/android/gms/internal/ads/pa;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/da0;->m:Ljava/lang/String;

    .line 2
    new-instance v11, Lcom/google/android/gms/internal/ads/zzaok;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/pa;->i()Z

    move-result v9

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzaok;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzawv;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v11
.end method
