.class public final Lcom/google/android/gms/internal/ads/p50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/z0;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/fu;

.field private final f:Lcom/google/android/gms/internal/ads/zzaqd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fu;Lcom/google/android/gms/internal/ads/ns0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p50;->e:Lcom/google/android/gms/internal/ads/fu;

    .line 3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->l:Lcom/google/android/gms/internal/ads/zzaqd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p50;->f:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p50;->g:Ljava/lang/String;

    .line 5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ns0;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p50;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaqd;)V
    .locals 3
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p50;->f:Lcom/google/android/gms/internal/ads/zzaqd;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaqd;->e:Ljava/lang/String;

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaqd;->f:I

    goto :goto_0

    :cond_1
    const-string v0, ""

    const/4 p1, 0x1

    .line 4
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapc;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzapc;-><init>(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p50;->e:Lcom/google/android/gms/internal/ads/fu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p50;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p50;->h:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/fu;->a(Lcom/google/android/gms/internal/ads/zzape;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p50;->e:Lcom/google/android/gms/internal/ads/fu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fu;->j()V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p50;->e:Lcom/google/android/gms/internal/ads/fu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fu;->k()V

    return-void
.end method
