.class public final Lcom/google/android/gms/internal/ads/zzciz;
.super Lcom/google/android/gms/internal/ads/zzcjz;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private l:Lcom/google/android/gms/internal/ads/yx;

.field private m:Lcom/google/android/gms/internal/ads/nt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/rt;Lcom/google/android/gms/internal/ads/fu;Lcom/google/android/gms/internal/ads/pu;Lcom/google/android/gms/internal/ads/nt;Lcom/google/android/gms/internal/ads/zv;Lcom/google/android/gms/internal/ads/dy;Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/yx;)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzcjz;-><init>(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/rt;Lcom/google/android/gms/internal/ads/fu;Lcom/google/android/gms/internal/ads/pu;Lcom/google/android/gms/internal/ads/zv;Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/dy;)V

    move-object/from16 v0, p9

    .line 2
    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzciz;->l:Lcom/google/android/gms/internal/ads/yx;

    move-object v0, p5

    .line 3
    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzciz;->m:Lcom/google/android/gms/internal/ads/nt;

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->l:Lcom/google/android/gms/internal/ads/yx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yx;->e()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqf;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->l:Lcom/google/android/gms/internal/ads/yx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqd;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqf;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqf;->getAmount()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yx;->a(Lcom/google/android/gms/internal/ads/zzaqd;)V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaqd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->l:Lcom/google/android/gms/internal/ads/yx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yx;->a(Lcom/google/android/gms/internal/ads/zzaqd;)V

    return-void
.end method

.method public final zzcm(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->m:Lcom/google/android/gms/internal/ads/nt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nt;->zzcm(I)V

    return-void
.end method

.method public final zzrs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->l:Lcom/google/android/gms/internal/ads/yx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yx;->f()V

    return-void
.end method

.method public final zzrt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->l:Lcom/google/android/gms/internal/ads/yx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yx;->e()V

    return-void
.end method
